local function showVehicleMenu()
  local vehicles = RPC.execute("airshop:getVehicles")
  local data = {}
  local planes = {}
  local helis = {}
  for _, vehicle in pairs(vehicles) do
    if vehicle.type == "plane" then
      planes[#planes + 1] = {
          title = vehicle.name,
          description = "$" .. vehicle.retail_price .. ".00",
          image = vehicle.image,
          key = vehicle.model,
          children = {
              { title = "Confirm Purchase", action = "np-ui:airshopPurchase", key = vehicle.model },
          },
      }
    else
      helis[#helis + 1] = {
          title = vehicle.name,
          description = "$" .. vehicle.retail_price .. ".00",
          image = vehicle.image,
          key = vehicle.model,
          children = {
              { title = "Confirm Purchase", action = "np-ui:airshopPurchase", key = vehicle.model },
          },
      }
    end
  end
  data[1] = {
    title = "Planes",
    children = planes,
  }
  data[2] = {
    title = "Helicopters",
    children = helis,
  }
  exports["np-ui"]:showContextMenu(data)
end

local listening = false
local function listenForKeypress()
  listening = true
  Citizen.CreateThread(function()
      while listening do
          if IsControlJustReleased(0, 38) then
              listening = false
              exports["np-ui"]:hideInteraction()
              showVehicleMenu()
          end
          Wait(0)
      end
  end)
end

RegisterUICallback("np-ui:airshopPurchase", function(data, cb)
  local model = data.key
  data.model = data.key
  data.vehicle_name = GetLabelText(GetDisplayNameFromVehicleModel(data.model))

  local finished = exports["np-taskbar"]:taskBar(15000, "Purchasing...", true)
  if finished ~= 100 then
    cb({ data = {}, meta = { ok = false, message = 'cancelled' } })
    return
  end

  local success, message = RPC.execute("airshop:purchaseVehicle", data)
  if not success then
      cb({ data = {}, meta = { ok = success, message = message } })
      return
  end

  local veh = NetworkGetEntityFromNetworkId(message)

  DoScreenFadeOut(200)

  Citizen.Wait(200)

  TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)

  SetEntityAsMissionEntity(veh, true, true)
  SetVehicleOnGroundProperly(veh)

  DoScreenFadeIn(2000)

  DoScreenFadeIn(2000)

  cb({ data = {}, meta = { ok = true, message = "done" } })
end)

AddEventHandler("np-polyzone:enter", function(zone)
  if zone ~= "airshop" then return end

  exports["np-ui"]:showInteraction("[E] View Air Vehicles")
  listenForKeypress()
end)

AddEventHandler("np-polyzone:exit", function(zone)
  if zone ~= "airshop" then return end
  exports["np-ui"]:hideInteraction()
  listening = false
end)
