RegisterUICallback("np-ui:racingGetAllRaces", function(data, cb)
  local res = exports["mkr-racing"]:getAllRaces()
  local completed = RPC.execute("mkr_racing:getFinishedRaces")
  res.completed = completed
  cb({ data = res, meta = { ok = true, message = 'done' } })
end)

RegisterUICallback("np-ui:racingPreviewRace", function(data, cb)
  exports["mkr-racing"]:previewRace(data.id)
  cb({ data = {}, meta = { ok = true, message = 'done' } })
end)

RegisterUICallback("np-ui:racingLocateRace", function(data, cb)
  exports["mkr-racing"]:locateRace(data.id)
  cb({ data = {}, meta = { ok = true, message = 'done' } })
end)

RegisterUICallback("np-ui:racingCreateRace", function(data, cb)
  data.options.characterId = data.character.id
  exports["mkr-racing"]:createPendingRace(data.id, data.options)
  cb({ data = res, meta = { ok = true, message = 'done' } })
end)

RegisterUICallback("np-ui:racingJoinRace", function(data, cb)
  exports["mkr-racing"]:joinRace(data.race.id, data.alias, data.character.id)
  Wait(500)
  cb({ data = {}, meta = { ok = true, message = 'done' } })
end)

RegisterUICallback("np-ui:racingStartRace", function(data, cb)
  exports["mkr-racing"]:startRace(data.race.countdown)
  cb({ data = {}, meta = { ok = true, message = 'done' } })
end)

RegisterUICallback("np-ui:racingLeaveRace", function(data, cb)
  exports["mkr-racing"]:leaveRace()
  Wait(500)
  cb({ data = {}, meta = { ok = true, message = 'done' } })
end)

RegisterUICallback("np-ui:racingEndRace", function(data, cb)
  exports["mkr-racing"]:endRace()
  Wait(500)
  cb({ data = {}, meta = { ok = true, message = 'done' } })
end)

RegisterUICallback("np-ui:racingCreateMap", function(data, cb)
  local ped = PlayerPedId()
  local veh = GetVehiclePedIsIn(PlayerPedId(), false)
  if veh ~= 0 and GetPedInVehicleSeat(veh, -1) == ped then
    TriggerEvent("mkr_racing:cmd:racecreate", data)
    cb({ data = {}, meta = { ok = true, message = 'done' } })
    exports["np-ui"]:closeApplication("phone")
  else
    cb({ data = {}, meta = { ok = false, message = 'You are not driving a vehicle' } })
  end
end)

RegisterUICallback("np-ui:racingFinishMap", function(data, cb)
  TriggerEvent("mkr_racing:cmd:racecreatedone")
  cb({ data = {}, meta = { ok = true, message = 'done' } })
end)

RegisterUICallback("np-ui:racingCancelMap", function(data, cb)
  TriggerEvent("mkr_racing:cmd:racecreatecancel")
  cb({ data = {}, meta = { ok = true, message = 'done' } })
end)

AddEventHandler("mkr_racing:api:startingRace", function(startTime)
  TriggerEvent('DoLongHudText', "Starting race in " .. tostring(startTime / 1000) .. " seconds")
end)

AddEventHandler("mkr_racing:api:updatedState", function(state)
  local data = {action = "racing-update"}
  if state.finishedRaces then data.completed = state.finishedRaces end
  if state.races then data.maps = state.races end
  if state.pendingRaces then data.pending = state.pendingRaces end
  if state.activeRaces then data.active = state.activeRaces end
  exports["np-ui"]:sendAppEvent("phone", data)
end)

AddEventHandler("mkr_racing:api:playerJoinedYourRace", function(characterId, name)
  TriggerEvent('chatMessage', "", {255, 0, 0}, "^1" .. name .. " joined your race")
end)

AddEventHandler("mkr_racing:api:playerLeftYourRace", function(characterId, name)
  TriggerEvent('chatMessage', "", {255, 0, 0}, "^1" .. name .. " left your race")
end)
