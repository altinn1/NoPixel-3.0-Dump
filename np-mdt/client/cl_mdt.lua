local job = nil
RegisterNetEvent("np-jobmanager:playerBecameJob")
AddEventHandler("np-jobmanager:playerBecameJob", function(j)
  job = j
end)
local jobs = {
  ["police"] = true,
  ["ems"] = true,
  ["doctor"] = true,
  ["judge"] = true,
}
function hasMdwAccess()
  return jobs[job] == true
end

function LoadAnimationDic(dict)
  if not HasAnimDictLoaded(dict) then
      RequestAnimDict(dict)

      while not HasAnimDictLoaded(dict) do
          Citizen.Wait(0)
      end
  end
end

local function playAnimation()
  LoadAnimationDic("amb@code_human_in_bus_passenger_idles@female@tablet@base")
  TaskPlayAnim(PlayerPedId(), "amb@code_human_in_bus_passenger_idles@female@tablet@base", "base", 3.0, 3.0, -1, 49, 0, 0, 0, 0)
  TriggerEvent("attachItemPhone", "tablet01")
end

RegisterUICallback("np-ui:mdtAction", function(data, cb)
  local result = RPC.execute("np-ui:mdtApiRequest", data)
  cb({ data = result.message, meta = { ok = result.success, message = result.message } })
end)

RegisterUICallback("np-mdt:getVehiclesByCharacterId", function(data, cb)
  local data = RPC.execute("np:vehicles:getPlayerVehiclesByCharacterId", data.character.id)
  cb({ data = data, meta = { ok = true, message = 'done' } })
end)

AddEventHandler("np-ui:openMDW", function(data)
  if not hasMdwAccess() and not data.fromCmd and not data.publicApp then return end
  playAnimation()
  exports["np-ui"]:openApplication("mdt", { publicApp = data.publicApp or false })
end)

AddEventHandler("np-ui:application-closed", function(name)
  if name ~= "mdt" then return end
  StopAnimTask(PlayerPedId(), "amb@code_human_in_bus_passenger_idles@female@tablet@base", "base", 1.0)
  TriggerEvent("destroyPropPhone")
  SetPlayerControl(PlayerId(), 1, 0)
end)

RegisterUICallback("np-ui:getHousingInformation", function(data, cb)
  local result = RPC.execute("housing:search", nil, data.profile.id)
  cb({ data = result or {}, meta = { ok = true, message = 'done' } })
end)

-- Citizen.CreateThread(function()
--   RequestModel(`ch_prop_gold_trolly_empty`)
--   while not HasModelLoaded(`ch_prop_gold_trolly_empty`) do
--     print('wait')
--     Wait(0)
--   end
--   CreateObject(`ch_prop_gold_trolly_empty`, GetEntityCoords(PlayerPedId()), 1, 1, 1)
-- end)
-- Citizen.CreateThread(function()
--   while true do
--     print(IsFlashLightOn(PlayerPedId()))
--     Wait(1000)
--   end
  
-- end)

-- Citizen.CreateThread(function (arg1, arg2, arg3)
--   RequestIpl('vw_dlc_casino_door')
  
--   local interiorID = GetInteriorAtCoords(1100.000, 220.000, -50.000)
  
--   if IsValidInterior(interiorID) then
--       RefreshInterior(interiorID)
--   end
-- end)

-- experimenting with shooting back of vehicle
-- AddEventHandler("gameEventTriggered", function(name, ...)
--   print(name, json.encode(...))
-- end)

-- Citizen.CreateThread(function()
--   while true do
--     local entity = exports["np-target"]:GetEntityPlayerIsLookingAt(80, 5, 12)
--     print(entity)
--     local damage = GetWeaponDamage(`WEAPON_VINTAGEPISTOL`)
--     print(damage)
--     Wait(250)
--   end
-- end)
-- function RayCast(origin, target, options, ignoreEntity, radius)
--   local handle = StartShapeTestSweptSphere(origin.x, origin.y, origin.z, target.x, target.y, target.z, radius, options, ignoreEntity, 0)
--   return GetShapeTestResult(handle)
-- end
-- function GetForwardVector(rotation)
--   local rot = (math.pi / 180.0) * rotation
--   return vector3(-math.sin(rot.z) * math.abs(math.cos(rot.x)), math.cos(rot.z) * math.abs(math.cos(rot.x)), math.sin(rot.x))
-- end
-- Citizen.CreateThread(function()
--   while true do
--     local shooting = IsPedShooting(PlayerPedId())
--     if shooting then
--       PlayerPed = PlayerPedId()
--       PlayerCoords = GetPedBoneCoords(PlayerPed, 31086)
--       ForwardVectors = GetForwardVector(GetGameplayCamRot(2))
--       ForwardCoords = PlayerCoords + (ForwardVectors * 50.0)

--       local _, hit, targetCoords, _, targetEntity = RayCast(PlayerCoords, ForwardCoords, 286, PlayerPed, 0.2)

--       if hit and GetEntityType(targetEntity) == 2 then
--         -- local _, hit1, targetCoords, _, targetEntity1 = RayCast(PlayerCoords, ForwardCoords, 12, PlayerPed, 0.2)

--         local seats = GetVehicleModelNumberOfSeats(GetEntityModel(targetEntity))
        
--         -- local boneID = GetEntityBoneIndexByName(targetEntity, "boot")
--         -- local boneCoords = GetWorldPositionOfEntityBone(targetEntity, boneID)
--         -- print(boneID, boneCoords, PlayerCoords)
--         local radi = math.abs(GetEntityHeading(targetEntity) - GetEntityHeading(PlayerPedId()))
--         local m = math.fmod(radi, 360.0)
--         local angle = m > 180.0 and 360.0 - m or m

--         if angle < 28.0 then

--           local loop = -1
--           while loop < seats - 1 do
--             local ped = GetPedInVehicleSeat(targetEntity, loop)
--             local damage = GetWeaponDamage(GetSelectedPedWeapon(PlayerPedId()))
--             local damageMod = math.ceil(damage * 0.5)
--             print(damage, damageMod)
--             if ped ~= 0 then
--               -- ApplyDamageToPed(ped, 1000, true)
--               TriggerServerEvent(
--                 "np-sync:executeSyncNative",
--                 "0x697157CED63F18D4",
--                 NetworkGetNetworkIdFromEntity(ped),
--                 { entity = { 1 } },
--                 { NetworkGetNetworkIdFromEntity(ped), damageMod, true }
--               )
--             end
--             loop = loop + 1
--           end
  
--         end
--       end
--     end
--     Wait(0)
--   end
-- end)

-- Citizen.CreateThread(function()
--   local i = 1
--   while i < 8 do
--     print(i, GetSelectedPedWeapon(PlayerPedId()))
--     SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), i)
--     i = i + 1
--     Citizen.Wait(1000)
--   end
-- end)

-- function angleBetween(p1, p2)
--   local p = {}
--   p.x = p2.x-p1.x
--   p.y = p2.y-p1.y

--   local r = math.atan2(p.y,p.x)*180/math.pi
--   return r
-- end

-- RegisterCommand("fly", function()
--   local start = vector3(620.22, -738.04, 12.05)
--   local destination = vector3(597.83, -835.69, 42.53)
--   local difference = #(start - destination)
--   print('difference', difference)
--   print('starting in 3...')
--   local m = PlayerPedId()
--   SetEntityCoords(m, start)
--   FreezeEntityPosition(PlayerPedId(), false)
--   local ger = GetEntityRotation(PlayerPedId(), 2)
--   print('rotate', json.encode(ger))

--   -- while true do
--   --   DrawLine(start.x, start.y, start.z, destination.x, destination.y, destination.z, 100, 100, 100, 1.0)
--   --   Wait(0)
--   -- end

--   print('angle', angleBetween(start, destination))

--   -- local x = 0.0
--   -- while x < 360 do
--   --   x = x + 1.0
--   --   SetEntityRotation(PlayerPedId(), x, 0.0, 0.0, 2, true)
--   --   print(x)
--   --   Wait(500)
--   -- end
--   RequestModel("adder")

--   Wait(1000)
--   print('2...')
--   Wait(1000)
--   print('1...')
--   Wait(1000)

--   local diffX = (start.x - destination.x) / 60
--   local dirX = 'plus'
--   if start.x > 0 and destination.x < start.x then
--     dirX = 'minus'
--   end

--   local diffY = (destination.y - start.y) / 60
--   local dirY = 'plus'
--   if start.y < 0 and destination.y < start.y then
--     dirX = 'minus'
--   end

--   local diffZ = (destination.z - start.z) / 60
--   local dirZ = 'plus'
--   if start.z < 0 and destination.z < start.z then
--     dirX = 'minus'
--   end

--   local mapped = {}
--   local count = 0

--   while count < 60 do
--     count = count + 1
--     local x, y, z = 0
--     if dirX == 'plus' then
--       x = start.x + (count * diffX)
--     else
--       x = start.x - (count * diffX)
--     end
--     if dirY == 'plus' then
--       y = start.y + (count * diffY)
--     else
--       y = start.y - (count * diffY)
--     end
--     if dirZ == 'plus' then
--       z = start.z + (count * diffZ)
--     else
--       z = start.z - (count * diffZ)
--     end
--     mapped[count] = vector3(x, y, z)
--   end
  

--   SetEntityInvincible(PlayerPedId(), true)
--   -- FreezeEntityPosition(PlayerPedId(), true)
--   RopeLoadTextures()

--   while not RopeAreTexturesLoaded() do
--     Wait(0)
--   end
--   local ped = GetPlayerPed(PlayerId())
--   local pedPos = GetEntityCoords(ped, false)
  

-- --   float angleX = Vector3.Angle(new Vector3(camera_position.x, 0, 0), new Vector3(enemy_position.x, 0, 0));
-- -- float angleY = Vector3.Angle(new Vector3(0, camera_position.y, 0), new Vector3(0, enemy_position.y, 0));
-- -- -- float angleZ = Vector3.Angle(new Vector3(0, 0, camera_position.z), new Vector3(0, 0, enemy_position.z));

-- --   local ropeX = angleBetween(vector3(pedPos.x, 0.0, 0.0), vector3(destination.x, 0.0, 0.0))
-- --   local ropeY = angleBetween(vector3(0.0, pedPos.y, 0.0), vector3(0.0, destination.y, 0.0))
-- --   local ropeZ = angleBetween(vector3(0.0, 0.0, pedPos.z), vector3(0.0, 0.0, destination.z))

 
--   local veh = CreateVehicle(`adder`, destination, 0.0, 1, 1)
--   FreezeEntityPosition(veh, true)
--   SetEntityInvincible(veh, true)
--   SetEntityVisible(veh, 0, 0)
--   SetEntityCollision(veh, false, false)

--   local rope = AddRope(
--     start,
--     0.0,
--     0.0,
--     0.0,
--     difference,
--     4, -- type
--     difference, -- maxlen
--     1.0, -- minlen
--     0, -- winding speed
--     0, -- p11
--     0, -- p12
--     0, -- rigid
--     0, -- p14
--     0 -- breakwhenshot
--     )
--     AttachEntitiesToRope(rope, ped, veh, start, destination, difference, 0, 0, 0, 0)

--   for _, coords in pairs(mapped) do
--     SetEntityCoords(PlayerPedId(), coords)
--     SetEntityRotation(PlayerPedId(), math.abs(angleBetween(start, destination)), 0.0, 0.0, 2, true)
--     Wait(0)
--   end

--   SetEntityInvincible(PlayerPedId(), false)
--   FreezeEntityPosition(PlayerPedId(), false)

--   Wait(1000)
--   DeleteChildRope(rope)
--   DeleteRope(rope)
--   DeleteEntity(veh)
-- end)
