local vehicleList = {
  { name = "Boat Trailer", model = "boattrailer", price = 500 },
  { name = "Coach", model = "coach", price = 1000 },
  { name = "Shuttle Bus", model = "rentalbus", price = 1000 },
  { name = "Tour Bus", model = "tourbus", price = 1500 },
  { name = "Limo", model = "stretch", price = 2500 },
  { name = "Hearse", model = "romero", price = 2500 },
  { name = "Clown Car", model = "speedo2", price = 5000 },
  { name = "Festival Bus", model = "pbus2", price = 10000 },
}

local function showVehicleMenu()
  local data = {}
  for _, vehicle in pairs(vehicleList) do
    data[#data + 1] = {
      title = vehicle.name,
      description = "$" .. vehicle.price .. ".00",
      -- image = vehicle.image,
      key = vehicle.model,
      children = {
          { title = "Confirm Purchase", action = "np-ui:rentalPurchase", key = vehicle.model },
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
              showVehicleMenu()
          end
          Wait(0)
      end
  end)
end

RegisterUICallback("np-ui:rentalPurchase", function(data, cb)
  if IsAnyVehicleNearPoint(117.84, -1079.95, 29.23, 3.0) then
    TriggerEvent("DoLongHudText", "Vehicle in the way.", 2)
    cb({ data = {}, meta = { ok = true, message = 'done' } })
    return
  end
  local d = nil
  for _, v in pairs(vehicleList) do
    if d == nil and v.model == data.key then
      d = v
    end
  end
  d.character = data.character
  local success, message = RPC.execute("rentals:purchaseVehicle", d)
  if not success then
      cb({ data = {}, meta = { ok = success, message = message } })
      return
  end
  local model = data.key
  -- DoScreenFadeOut(200)

  TriggerServerEvent("np:vehicles:rentalSpawn", model, { x = 117.84, y = -1079.95, z = 29.23 }, 355.92)

  -- RequestModel(model)
  -- while not HasModelLoaded(model) do
  --     Citizen.Wait(0)
  -- end
  -- SetModelAsNoLongerNeeded(model)

  -- local veh = CreateVehicle(model, vector4(117.84,-1079.95,29.23,355.92), true, false)

  -- Citizen.Wait(100)

  -- SetEntityAsMissionEntity(veh, true, true)
  -- SetModelAsNoLongerNeeded(model)
  -- SetVehicleOnGroundProperly(veh)

  -- TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)

  -- DoScreenFadeIn(2000)

  cb({ data = {}, meta = { ok = true, message = "done" } })
end)

AddEventHandler("np-polyzone:enter", function(zone)
  if zone ~= "veh_rentals" then return end

  exports["np-ui"]:showInteraction("[E] View Rentals")
  listenForKeypress()
end)

AddEventHandler("np-polyzone:exit", function(zone)
  if zone ~= "veh_rentals" then return end
  exports["np-ui"]:hideInteraction()
  listening = false
end)
