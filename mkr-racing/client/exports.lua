function createPendingRace(id, options)
  if curRace then return end
  RPC.execute("mkr_racing:createPendingRace", id, options)
end
exports("createPendingRace", createPendingRace)

function previewRace(id)
  local race = races[id]
  if race == nil then return end
  previewEnabled = false
  SetWaypointOff()
  race.start.pos = tableToVector3(race.start.pos)
  for i=1, #race.checkpoints do
    race.checkpoints[i].pos = tableToVector3(race.checkpoints[i].pos)
  end
  local checkpoints = race.checkpoints
  for i=1, #checkpoints do
    addCheckpointBlip(checkpoints, i)
  end
  if race.type == "Point" then
    addBlip(race.start.pos, 0, true)
  end
  previewEnabled = true
  -- Thread to continously render the route
  Citizen.CreateThread(function()
    while previewEnabled do
      -- If a race has been started, or waypoint has been placed, preview is disabled and cleared
      if IsWaypointActive() or curRace then
        previewEnabled = false
      end
      Citizen.Wait(0)
    end
    clearBlips()
  end)
end
exports("previewRace", previewRace)

function locateRace(id)
  local race = races[id]
  if race == nil then return end
  local start = race.start.pos
  previewEnabled = false
  SetNewWaypoint(start.x, start.y, start.z)
end
exports("locateRace", locateRace)

function startRace(countdown)
  local characterId = getCharacterId()
  for k, v in pairs(pendingRaces) do
    if v.owner == characterId then
      RPC.execute("mkr_racing:startRace", v.id, countdown or v.countdown)
      return
    end
  end
end
exports("startRace", startRace)

function endRace()
  if curRace then
    RPC.execute("mkr_racing:endRace")
  else
    RPC.execute("mkr_racing:leaveRace")
  end
end
exports("endRace", endRace)

function joinRace(id, alias, characterId)
  RPC.execute("mkr_racing:joinRace", id, alias, characterId)
end
exports("joinRace", joinRace)

function leaveRace()
  SendNUIMessage({showHUD=false})
  if curRace then
    RPC.execute("mkr_racing:dnfRace", curRace.id)
    cleanupRace()
  else
    RPC.execute("mkr_racing:leaveRace")
  end
end
exports("leaveRace", leaveRace)

function getAllRaces()
  if races then
    return {races=races, pendingRaces=pendingRaces, activeRaces=activeRaces}
  end
  local res = RPC.execute("mkr_racing:getAllRaces")
  races = res.races
  pendingRaces = res.pendingRaces
  activeRaces = res.activeRaces
  finishedRaces = RPC.execute("mkr_racing:getFinishedRaces")
  return res
end
exports("getAllRaces", getAllRaces)