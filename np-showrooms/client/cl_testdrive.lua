local testDriveSpawnPoint3 = nil
local testDriveSpawnPoint4 = nil

function isTestDriveVehicle(veh)
  local result = RPC.execute("showroom:isTestDriveVehicle", VehToNet(veh))
  return result
end

function getTestDriveVehicleModelName(veh)
  local result = RPC.execute("showroom:getTestDriveVehicleModelName", VehToNet(veh))
  return result
end

function setTestDriveLocation(loc)
  if not loc then
    testDriveSpawnPoint3 = nil
    testDriveSpawnPoint4 = nil
    return
  end
  testDriveSpawnPoint3 = vector3(loc.x, loc.y, loc.z)
  testDriveSpawnPoint4 = loc
end

local function testDriveVehicle(model)
  if not testDriveSpawnPoint4 then
    return
  end
  if IsAnyVehicleNearPoint(testDriveSpawnPoint3, 3.00) then
    return
  end

  local hasStock = RPC.execute("showroom:hasStock", model)
  if not hasStock then
    return
  end

  local netId = RPC.execute("showroom:testDriveVehicle", model, testDriveSpawnPoint4)

  if not netId then return emit('DoLongHudText', 'Vehicle lost during shipping.', 2) end

  Citizen.CreateThread(function()
    RPC.execute("showroom:stockDecrease", model)
  end)

  -- DoScreenFadeOut(200)

  local veh = NetworkGetEntityFromNetworkId(netId)

  -- taken from old veh shop bullshit
  -- if model == "rumpo" then
  --   SetVehicleLivery(veh, 0)
  -- end

  local vehplate = "CAR"..math.random(10000, 99999)
  SetVehicleNumberPlateText(veh, vehplate)
  Citizen.Wait(100)
  SetVehicleOnGroundProperly(veh)
  -- TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
  -- DoScreenFadeIn(2000)
end

local function returnCurrentVehicle()
  if not testDriveSpawnPoint4 then
    return
  end
  local veh = GetVehiclePedIsUsing(PlayerPedId())
  if not isTestDriveVehicle(veh) then
    return
  end
  if #(testDriveSpawnPoint3 - GetEntityCoords(PlayerPedId())) > 20.0 then
    return
  end

  DoScreenFadeOut(0)

  RPC.execute("showroom:stockIncrease", getTestDriveVehicleModelName(veh))
  RPC.execute("showroom:returnCurrentVehicle", VehToNet(veh))

  DeleteVehicle(veh)

  DoScreenFadeIn(2000)
end

RegisterUICallback("np-ui:showroomTestDrive", function(data, cb)
  testDriveVehicle(data.model)
  cb({ data = {}, meta = { ok = true, message = 'done' } })
end)
RegisterUICallback("np-ui:showroomTestDriveReturn", function(data, cb)
  returnCurrentVehicle()
  cb({ data = {}, meta = { ok = true, message = 'done' } })
end)
