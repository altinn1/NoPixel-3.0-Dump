local function getVehicleClassification(pVehicleModel)
  local vehicleClass = GetVehicleClassFromName(pVehicleModel)
  if vehicleClass == 13 then
    return "bicycle"
  elseif vehicleClass == 14 then
    return "boat"
  else
    return "car"
  end
end

RegisterUICallback("np-ui:getCars", function(data, cb)
  local data = RPC.execute("np:vehicles:getPlayerVehiclesWithCoordinates", data.character.id)
  for _, car in pairs(data) do
    car.type = getVehicleClassification(car.model)
  end
  cb({ data = data, meta = { ok = true, message = 'done' } })
end)

RegisterUICallback("np-ui:carActionTrack", function(data, cb)
  local vehicleCoords = data.car.location
  if not vehicleCoords then return end
  SetNewWaypoint(vehicleCoords.x, vehicleCoords.y)
  TriggerEvent('DoLongHudText',"GPS updated.")
  cb({ data = {}, meta = { ok = true, message = '' } })
end)

RegisterUICallback("np-ui:carActionSpawn", function(data, cb)
  local vehicle_plate = data.car.plate
  cb({ data = {}, meta = { ok = true, message = '' }})
end)


function canCarSpawn(pLicensePlate)
  if IsPedInAnyVehicle(PlayerPedId(), false) then
    return false, "You're in a car."
  end

  local fakePlate = nil
  if fakePlates[pLicensePlate] ~= nil then
    fakePlate = fakePlates[pLicensePlate]
  end

  local DoesVehExistInProximity = nil
  if fakePlate ~= nil then
    DoesVehExistInProximity = CheckExistenceOfVehWithPlate(fakePlate)
    fakePlates[pLicensePlate] = nil
  else
    DoesVehExistInProximity = CheckExistenceOfVehWithPlate(pLicensePlate)
  end

  return not DoesVehExistInProximity
end

function CheckExistenceOfVehWithPlate(pLicensePlate)
  local playerCoords = GetEntityCoords(PlayerPedId())
  local vehicleHandle, scannedVehicle = FindFirstVehicle()
  local success
  repeat
      local pos = GetEntityCoords(scannedVehicle)
      local distance = #(playerCoords - pos)
        if distance < 50.0 then
          local targetVehiclePlate = GetVehicleNumberPlateText(scannedVehicle)
          if targetVehiclePlate == pLicensePlate then
            return true
          end
        end
      success, scannedVehicle = FindNextVehicle(vehicleHandle)
  until not success
  EndFindVehicle(vehicleHandle)
  return false
end
