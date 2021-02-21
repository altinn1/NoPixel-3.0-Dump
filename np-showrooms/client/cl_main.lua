local isInsideZone = false
local zoneName = nil
Citizen.CreateThread(function()
  -- pdm
  exports["np-polyzone"]:AddBoxZone("pdm", vector3(-58.34, -1111.57, 26.44), 87.6, 86.8, {
    heading = 339,
    minZ = 23.84,
    maxZ = 37.64,
  })
  -- pdm tablets
  -- exports["np-polyzone"]:AddBoxZone("showroom_tablet", vector3(-57.22, -1091.61, 26.42), 1.2, 2.2, {
  --   heading = 69,
  --   minZ = 25.42,
  --   maxZ = 27.42,
  -- })
  -- exports["np-polyzone"]:AddBoxZone("showroom_tablet", vector3(-40.08, -1106.36, 26.42), 1.2, 2.2, {
  --   heading = 159,
  --   minZ = 25.42,
  --   maxZ = 27.62,
  -- })
  -- exports["np-polyzone"]:AddBoxZone("showroom_tablet", vector3(-34.22, -1103.49, 26.42), 1.2, 2.2, {
  --   heading = 249,
  --   minZ = 25.42,
  --   maxZ = 27.62,
  -- })

  -- fastlane
  -- exports["np-polyzone"]:AddBoxZone("fastlane", vector3(-797.42, -230.87, 37.08), 94.0, 80.2, {
  --   heading = 29,
  --   minZ = 35.13,
  --   maxZ = 58.33,
  -- })
  -- fastlane tablets
  -- exports["np-polyzone"]:AddBoxZone("showroom_tablet", vector3(-792.49, -223.83, 37.08), 1.2, 2.2, {
  --   heading = 209,
  --   minZ = 36.08,
  --   maxZ = 38.28,
  -- })
  -- exports["np-polyzone"]:AddBoxZone("showroom_tablet", vector3(-788.39, -225.7, 37.08), 1.2, 2.2, {
  --   heading = 304,
  --   minZ = 36.08,
  --   maxZ = 38.28,
  -- })
  -- exports["np-polyzone"]:AddBoxZone("showroom_tablet", vector3(-782.68, -242.06, 37.08), 1.2, 2.2, {
  --   heading = 299,
  --   minZ = 36.08,
  --   maxZ = 38.48,
  -- })

  -- tuner
  exports["np-polyzone"]:AddBoxZone("tuner", vector3(932.95, -959.32, 39.55), 100.8, 71.2, {
    heading = 13,
    minZ = 32.85,
    maxZ = 52.45,
  })
  -- tuner tablets
  -- exports["np-polyzone"]:AddBoxZone("showroom_tablet", vector3(947.18, -966.18, 39.51), 2.0, 1.5, {
  --   heading = 272,
  --   minZ = 38.21,
  --   maxZ = 41.21,
  -- })
  -- exports["np-polyzone"]:AddBoxZone("showroom_tablet", vector3(949.34, -956.93, 39.51), 1.2, 2.0, {
  --   heading = 272,
  --   minZ = 38.21,
  --   maxZ = 41.21,
  -- })
  -- exports["np-polyzone"]:AddBoxZone("showroom_tablet", vector3(917.1, -957.25, 39.51), 1.2, 2.0, {
  --   heading = 2,
  --   minZ = 38.21,
  --   maxZ = 41.21,
  -- })
end)

AddEventHandler("np-polyzone:enter", function(name)
  if name ~= "pdm" and name ~= "fastlane" and name ~= "tuner" then return end
  zoneName = name
  exports["np-ui"]:sendAppEvent("game", { location = name })
  experience.onEnter(zoneName)
  locationEnter(zoneName)
end)
AddEventHandler("np-polyzone:exit", function(name)
  if name ~= "pdm" and name ~= "fastlane" and name ~= "tuner" then return end
  experience.onLeave(name)
  locationLeave(name)
  exports["np-ui"]:sendAppEvent("game", { location = "world" })
end)

RegisterUICallback("np-ui:showroomDisplayCar", function(data, cb)
  RPC.execute("showroom:changeSpawnedCar", getLocation(), data.index, data.model)
  cb({ data = {}, meta = { ok = true, message = 'done' } })
end)

RegisterUICallback("np-ui:showroomSellCar", function(data, cb)
  local veh = GetVehiclePedIsUsing(PlayerPedId())
  if not isTestDriveVehicle(veh) then
    cb({ data = {}, meta = { ok = false, message = 'Cannot sell this vehicle' } })
    return
  end
  data.vehicle_id = veh
  data.vehicle_net_id = NetworkGetNetworkIdFromEntity(veh)
  data.vehicle_model = getTestDriveVehicleModelName(veh)
  data.vehicle_driveforce = GetVehicleHandlingFloat(veh, 'CHandlingData', 'fInitialDriveForce')
  RPC.execute("showroom:offerVehicle", data)
  cb({ data = {}, meta = { ok = true, message = 'done' } })
end)

RegisterUICallback("np-ui:showroomPurchaseCurrentVehicle", function(data, cb)
  local veh = NetToVeh(data._data.vehicle_net_id)
  if data._data.vehicle_net_id ~= NetworkGetNetworkIdFromEntity(GetVehiclePedIsUsing(PlayerPedId())) then
    cb({ data = {}, meta = { ok = false, message = "Not in the right car..." } })
    return
  end

  local name = data._data.vehicle_model
  data._data.vehicle_name = GetLabelText(GetDisplayNameFromVehicleModel(name))
  local success, message = RPC.execute("showroom:purchaseVehicle", name, data, zoneName)

  if success then
    cb({ data = {}, meta = { ok = true, message = 'done' } })
  else
    cb({ data = {}, meta = { ok = false, message = message } })
  end
end)

RegisterNetEvent("showroom:purchaseVehiclePrompt")
AddEventHandler("showroom:purchaseVehiclePrompt", function(data)
  SendUIMessage({
    source = "np-nui",
    app = "phone",
    data = {
      action = "vehicle-purchase",
      _data = data,
      price = data.price,
      tax = data.tax,
    },
  })
end)

-- FROM old veh_shop
local firstspawn = 0
AddEventHandler('playerSpawned', function(spawn)
	if firstspawn == 0 then
		RemoveIpl('v_carshowroom')
		RemoveIpl('shutter_open')
		RemoveIpl('shutter_closed')
		RemoveIpl('shr_int')
		RemoveIpl('csr_inMission')
		RequestIpl('v_carshowroom')
		RequestIpl('shr_int')
		RequestIpl('shutter_closed')
		firstspawn = 1
	end
end)

RegisterUICallback("np-ui:showroomGetCarConfig", function(data, cb)
  local conf = RPC.execute("showroom:getCarConfig")
  cb({ data = conf, meta = { ok = true, message = 'done' } })
end)
