previewEnabled = false

Citizen.CreateThread(function()
  -- For testing purposes when hudOnly is on
  -- createPendingRace("e7afb53ba45c339eb67ae3ff3c61c36b", {dnfPosition=0,prizeDistribution={0.67,0.33},id="e7afb53ba45c339eb67ae3ff3c61c36b",reverse=false,buyIn=0,laps=1,countdown=3,dnfCountdown=0})
end)

RegisterNetEvent("mkr_racing:addedActiveRace")
AddEventHandler("mkr_racing:addedActiveRace", function(race)
  activeRaces[race.id] = race
  if not config.nui.hudOnly then SendNUIMessage({activeRaces=activeRaces}) end
  TriggerEvent("mkr_racing:api:addedActiveRace", race, activeRaces)
  TriggerEvent("mkr_racing:api:updatedState", {activeRaces=activeRaces})
end)

RegisterNetEvent("mkr_racing:removedActiveRace")
AddEventHandler("mkr_racing:removedActiveRace", function(id)
  activeRaces[id] = nil
  if not config.nui.hudOnly then SendNUIMessage({activeRaces=activeRaces}) end
  TriggerEvent("mkr_racing:api:removedActiveRace", activeRaces)
  TriggerEvent("mkr_racing:api:updatedState", {activeRaces=activeRaces})
end)

RegisterNetEvent("mkr_racing:updatedActiveRace")
AddEventHandler("mkr_racing:updatedActiveRace", function(race)
  if activeRaces[race.id] then activeRaces[race.id] = race end
  if not config.nui.hudOnly then SendNUIMessage({activeRaces=activeRaces}) end
  TriggerEvent("mkr_racing:api:updatedActiveRace", activeRaces)
  TriggerEvent("mkr_racing:api:updatedState", {activeRaces=activeRaces})
end)

RegisterNetEvent("mkr_racing:endRace")
AddEventHandler("mkr_racing:endRace", function(race)
  SendNUIMessage({showHUD=false})
  TriggerEvent("mkr_racing:api:raceEnded", race)
  cleanupRace()
end)

RegisterNetEvent("mkr_racing:raceHistory")
AddEventHandler("mkr_racing:raceHistory", function(race)
  finishedRaces[#finishedRaces + 1] = race
  if race then
    if not config.nui.hudOnly then SendNUIMessage({leaderboardData=race}) end
  end
  TriggerEvent("mkr_racing:api:raceHistory", race)
  TriggerEvent("mkr_racing:api:updatedState", {finishedRaces=finishedRaces})
end)


RegisterNetEvent("mkr_racing:startRace")
AddEventHandler("mkr_racing:startRace", function(race, startTime)
  TriggerEvent("mkr_racing:api:startingRace", startTime)
  -- Wait for race countdown
  Citizen.Wait(startTime - 3000)
  SendNUIMessage({type='countdown', start=3})
  PlaySoundFrontend(-1, "Beep_Red", "DLC_HEIST_HACKING_SNAKE_SOUNDS")
  Citizen.Wait(1000)
  PlaySoundFrontend(-1, "Beep_Red", "DLC_HEIST_HACKING_SNAKE_SOUNDS")
  Citizen.Wait(1000)
  PlaySoundFrontend(-1, "Beep_Red", "DLC_HEIST_HACKING_SNAKE_SOUNDS")
  Citizen.Wait(1000)
  PlaySoundFrontend(-1, "Oneshot_Final", "MP_MISSION_COUNTDOWN_SOUNDSET")
  if not curRace then
    initRace(race)
    TriggerEvent("mkr_racing:api:raceStarted", race)
  end
end)

RegisterNetEvent("mkr_racing:updatePosition")
AddEventHandler("mkr_racing:updatePosition", function(position)
  -- print("Position is now: " .. position)
  SendNUIMessage({HUD={position=position}})
end)

RegisterNetEvent("mkr_racing:dnfRace")
AddEventHandler("mkr_racing:dnfRace", function(race)
  if activeRaces[race.id] then activeRaces[race.id] = race end
  SendNUIMessage({HUD={dnf=true}})
  TriggerEvent("mkr_racing:api:dnfRace", race)
  TriggerEvent("mkr_racing:api:updatedState", {activeRaces=activeRaces})
end)

RegisterNetEvent("mkr_racing:startDNFCountdown")
AddEventHandler("mkr_racing:startDNFCountdown", function(dnfTime)
  SendNUIMessage({HUD={dnfTime=dnfTime}})
end)

RegisterNetEvent("mkr_racing:finishedRace")
AddEventHandler("mkr_racing:finishedRace", function(race, position, time)
  if activeRaces[race.id] then activeRaces[race.id] = race end
  SendNUIMessage({HUD={position=position, finished=time}})
  TriggerEvent("mkr_racing:api:finishedRace", race, position, time)
  TriggerEvent("mkr_racing:api:updatedState", {activeRaces=activeRaces})
end)

RegisterNetEvent("mkr_racing:joinedRace")
AddEventHandler("mkr_racing:joinedRace", function(race)
  if pendingRaces[race.id] then pendingRaces[race.id] = race end
  race.start.pos = tableToVector3(race.start.pos)
  spawnCheckpointObjects(race.start, config.startObjectHash)
  TriggerEvent("mkr_racing:api:joinedRace", race)
  TriggerEvent("mkr_racing:api:updatedState", {pendingRaces=pendingRaces})
end)

RegisterNetEvent("mkr_racing:leftRace")
AddEventHandler("mkr_racing:leftRace", function(race)
  if pendingRaces[race.id] then pendingRaces[race.id] = race end
  TriggerEvent("mkr_racing:api:leftRace", race)
  TriggerEvent("mkr_racing:api:updatedState", {pendingRaces=pendingRaces})
  cleanupProps()
end)

RegisterNetEvent("mkr_racing:playerJoinedYourRace")
AddEventHandler("mkr_racing:playerJoinedYourRace", function(characterId, name)
  if characterId == getCharacterId() then return end
  TriggerEvent("mkr_racing:api:playerJoinedYourRace", characterId, name)
end)

RegisterNetEvent("mkr_racing:playerLeftYourRace")
AddEventHandler("mkr_racing:playerLeftYourRace", function(characterId, name)
  if characterId == getCharacterId() then return end
  TriggerEvent("mkr_racing:api:playerLeftYourRace", characterId, name)
end)

RegisterNetEvent("mkr_racing:addedPendingRace")
AddEventHandler("mkr_racing:addedPendingRace", function(race)
  pendingRaces[race.id] = race
  if not config.nui.hudOnly then SendNUIMessage({pendingRaces=pendingRaces}) end
  TriggerEvent("mkr_racing:api:addedPendingRace", race, pendingRaces)
  TriggerEvent("mkr_racing:api:updatedState", {pendingRaces=pendingRaces})
end)

RegisterNetEvent("mkr_racing:removedPendingRace")
AddEventHandler("mkr_racing:removedPendingRace", function(id)
  pendingRaces[id] = nil
  SendNUIMessage({pendingRaces=pendingRaces})
  TriggerEvent("mkr_racing:api:removedPendingRace", pendingRaces)
  TriggerEvent("mkr_racing:api:updatedState", {pendingRaces=pendingRaces})
end)

RegisterNetEvent("mkr_racing:startCreation")
AddEventHandler("mkr_racing:startCreation", function()
  startRaceCreation()
end)

RegisterNetEvent("mkr_racing:addedRace")
AddEventHandler("mkr_racing:addedRace", function(newRace, newRaces)
  if not races then return end
  races = newRaces
  SendNUIMessage({races=newRaces})
  TriggerEvent("mkr_racing:api:addedRace")
  TriggerEvent("mkr_racing:api:updatedState", {races=races})
end)

AddEventHandler("onResourceStop", function (resourceName)
  if resourceName ~= GetCurrentResourceName() then return end
  cleanupProps()
  clearBlips()
end)
