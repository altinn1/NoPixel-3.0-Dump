local isDialing, isRinging = false, false
local incomingCallId = nil
local activeCallId = nil

function IsInActiveCall()
  return isDialing or isRinging or activeCallId
end

-- This is what you should call on the receiving end ;)
RegisterNetEvent("phone:call:receive")
AddEventHandler("phone:call:receive", function(pNumber, pCallId)
  SendUIMessage({
    source = "np-nui",
    app = "phone",
    data = {
      action = "call-receiving",
      number = pNumber,
      callId = pCallId
    }
  })
  isRinging = true
  incomingCallId = pCallId
end)

-- call this event when call begins
RegisterNetEvent("phone:call:in-progress")
AddEventHandler("phone:call:in-progress", function(pNumber, pCallId)
  SendUIMessage({
    source = "np-nui",
    app = "phone",
    data = {
      action = "call-in-progress",
      number = pNumber,
      callId = pCallId
    }
  })
  isDialing, isRinging = false, false
  activeCallId = pCallId
  playPhoneCallAnim()
end)

-- call this event when call is outgoing
RegisterNetEvent("phone:call:dialing")
AddEventHandler("phone:call:dialing", function(pNumber, pCallId)
  SendUIMessage({
    source = "np-nui",
    app = "phone",
    data = {
      action = "call-dialing",
      number = pNumber,
      callId = pCallId
    }
  })
  isDialing = true
  incomingCallId = pCallId
  playPhoneCallAnim()
end)

-- call this when there is no active calling state (not dialing, receiving, in call - after hang up)
RegisterNetEvent("phone:call:inactive")
AddEventHandler("phone:call:inactive", function(pNumber)
  SendUIMessage({
    source = "np-nui",
    app = "phone",
    data = {
      action = "call-inactive",
      number = pNumber
    }
  })
  isDialing, isRinging = false, false
  activeCallId = nil
  incomingCallId = nil
end)

-- dial from phone
RegisterUICallback("np-ui:callStart", function(data, cb)
  local caller_number, target_number  = data.character.number, data.number
  -- RPC.execute("phone:callStart", caller_number, target_number)
  TriggerEvent("np:fiber:voice-event", 'callStart', target_number, caller_number)
  cb({ data = {}, meta = { ok = true, message = '' } })
end)

-- answer from phone
RegisterUICallback("np-ui:callAccept", function(data, cb)
  local call_id = data.meta.callId
  -- local success, message = RPC.execute('phone:callAccept', call_id)
  TriggerEvent("np:fiber:voice-event", 'callAccept', call_id)
  
  cb({ data = {}, meta = { ok = true, message = 'done' }})
end)

-- end from phone
RegisterUICallback("np-ui:callEnd", function(data, cb)
  local call_id = data.meta.callId
  -- local success, message = RPC.execute('phone:callEnd', call_id)
  if isDialing or activeCallId then 
    TriggerEvent("np:fiber:voice-event", 'callEnd', call_id)
  elseif isRinging and incomingCallId then
    TriggerEvent("np:fiber:voice-event", 'callDecline', call_id)
  end
  cb({ data = {}, meta = { ok = true, message = 'done' }})
end)

function endPhoneCall()
  if isRinging then
    -- RPC.execute('phone:callEnd', incomingCallId)
    TriggerEvent("np:fiber:voice-event", 'callDecline', incomingCallId)
  elseif isDialing then
    -- RPC.execute('phone:callEnd', incomingCallId)
    TriggerEvent("np:fiber:voice-event", 'callEnd', incomingCallId)
  elseif activeCallId then
    -- RPC.execute('phone:callEnd', activeCallId)
    TriggerEvent("np:fiber:voice-event", 'callEnd', activeCallId)
  end
  TriggerEvent("destroyPropPhone")
end

function answerPhoneCall()
  if not incomingCallId then return end
  -- RPC.execute('phone:callAccept', incomingCallId)
  TriggerEvent("np:fiber:voice-event", 'callAccept', incomingCallId)
end

function LoadAnimDict(dict)
  if not HasAnimDictLoaded(dict) then
      RequestAnimDict(dict)

      while not HasAnimDictLoaded(dict) do
          Citizen.Wait(0)
      end
  end
end

local isDead = false
AddEventHandler("pd:deathcheck", function()
  isDead = not isDead
  if isDead then
    endPhoneCall()
  end
end)

RegisterNetEvent('np-inventory:itemCheck')
AddEventHandler('np-inventory:itemCheck', function(itemId, hasItem)
  if not itemId == "mobilephone" then return end

  if not hasItem then
    endPhoneCall()
  end
end)

function playPhoneCallAnim()
    local dict, anim = "cellphone@", "cellphone_text_to_call"

    Citizen.CreateThread(function() 
      LoadAnimDict(dict)

      local playerPed = PlayerPedId()

      while (isDialing or activeCallId) and not isDead do
        if not IsEntityPlayingAnim(playerPed, dict, anim, 3) then
          TaskPlayAnim(playerPed, dict, anim, 3.0, -1, -1, 50, 0, false, false, false)
        end

        Citizen.Wait(100)
      end
      
      -- TODO: add transitions between browse and call mode rather than clearing task
      ClearPedTasks(playerPed)
    end)
end

-- init
Citizen.CreateThread(function()
  exports["np-keybinds-1"]:registerKeyMapping("","Phone", "Call Answer", "+answerPhoneCall", "-answerPhoneCall")
  RegisterCommand('+answerPhoneCall', answerPhoneCall, false)
  RegisterCommand('-answerPhoneCall', function() end, false)
  exports["np-keybinds-1"]:registerKeyMapping("","Phone", "Call End", "+endPhoneCall", "-endPhoneCall")
  RegisterCommand('+endPhoneCall', endPhoneCall, false)
  RegisterCommand('-endPhoneCall', function() end, false)
end)
