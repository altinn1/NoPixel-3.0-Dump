local carSpawns = {}
local spawnedVehicles = {}
local currentLocation = nil

function getLocation()
  return currentLocation
end

function locationEnter(location)
  currentLocation = location
  cars, testDriveSpawnPoint = RPC.execute("showroom:locationInit", location)
  setTestDriveLocation(testDriveSpawnPoint)
  spawn(cars)
end
function locationLeave(location)
  currentLocation = nil
  setTestDriveLocation(nil)
  despawn()
  RPC.execute("showroom:locationRemove", location)
end

function despawn()
  for i = 1, #spawnedVehicles do
    local veh = spawnedVehicles[i]
    DeleteVehicle(veh)
    spawnedVehicles[i] = nil
  end
end

function spawn(carsToSpawn)
  for i = 1, #carsToSpawn do
    local car = carsToSpawn[i]
    if not carSpawns[i] or not spawnedVehicles[i] or carSpawns[i].model ~= car.model then
      local vehToDespawn = spawnedVehicles[i]
      if vehToDespawn then
        DeleteVehicle(vehToDespawn)
      end

      local model = GetHashKey(car.model)
      RequestModel(model)
      while not HasModelLoaded(model) do
        Citizen.Wait(0)
      end

      local veh = CreateVehicle(
        model,
        car.coords.x,
        car.coords.y,
        car.coords.z - 1,
        car.coords.w,
        false,
        false
      )
      SetModelAsNoLongerNeeded(model)
      SetVehicleOnGroundProperly(veh)
      SetEntityInvincible(veh, true)
      SetVehicleDoorsLocked(veh, 2)

      FreezeEntityPosition(veh, true)
      SetVehicleNumberPlateText(veh, i .. "CARSALE")
      spawnedVehicles[i] = veh
    end
  end
  carSpawns = carsToSpawn
end

RegisterNetEvent("showroom:updateCarSpawns")
AddEventHandler("showroom:updateCarSpawns", function(cars)  
  spawn(cars)
end)
