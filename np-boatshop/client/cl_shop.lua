local function showBoatMenu()
  local boats = RPC.execute("boatshop:getBoats")
  local data = {}
  for _, vehicle in pairs(boats) do
      data[#data + 1] = {
          title = vehicle.name,
          description = "$" .. vehicle.retail_price .. ".00",
          image = vehicle.image,
          key = vehicle.model,
          children = {
              { title = "Confirm Purchase", action = "np-ui:boatshopPurchase", key = vehicle.model },
          },
      }
  end
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
              showBoatMenu()
          end
          Wait(0)
      end
  end)
end

RegisterUICallback("np-ui:boatshopPurchase", function(data, cb)
  data.model = data.key
  data.vehicle_name = GetLabelText(GetDisplayNameFromVehicleModel(data.model))

  local finished = exports["np-taskbar"]:taskBar(15000, "Purchasing...", true)
  if finished ~= 100 then
    cb({ data = {}, meta = { ok = false, message = 'cancelled' } })
    return
  end

  local success, message = RPC.execute("boatshop:purchaseBoat", data)
  if not success then
      cb({ data = {}, meta = { ok = success, message = message } })
      TriggerEvent("DoLongHudText", message, 2)
      return
  end

  local veh = NetworkGetEntityFromNetworkId(message)

  DoScreenFadeOut(200)

  Citizen.Wait(200)

  TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)

  SetEntityAsMissionEntity(veh, true, true)
  SetVehicleOnGroundProperly(veh)

  DoScreenFadeIn(2000)

  cb({ data = {}, meta = { ok = true, message = "done" } })
end)

AddEventHandler("np-polyzone:enter", function(zone)
  if zone ~= "boatshop" then return end

  exports["np-ui"]:showInteraction("[E] View Boats")
  listenForKeypress()
end)

AddEventHandler("np-polyzone:exit", function(zone)
  if zone ~= "boatshop" then return end
  exports["np-ui"]:hideInteraction()
  listening = false
end)
