RegisterNetEvent("phone:twatter:receive")
AddEventHandler("phone:twatter:receive", function(pTwat)
  SendUIMessage({
    source = "np-nui",
    app = "phone",
    data = {
      action = "twatter-receive",
      character = pTwat.character,
      timestamp = pTwat.timestamp,
      text = pTwat.text
    }
  })
end)

RegisterUICallback("np-ui:twatSend", function(data, cb)
  local character_id, first_name, last_name, text = data.character.id, data.character.first_name, data.character.last_name, data.text
  local success, message = RPC.execute("phone:addTwatterEntry", character_id, first_name, last_name, text)
  cb({ data = message, meta = { ok = success, message = (not success and message or 'done') } })
end)

RegisterUICallback("np-ui:getTwats", function(data, cb)
  local success, message = RPC.execute("phone:getTwatterEntries")
  cb({ data = message, meta = { ok = success, message = (not success and message or 'done') } })
end)

-- TODO: Iterate over online admins.
-- report a twat
RegisterUICallback("np-ui:twatReport", function(data, cb)
  -- INCOMING
  -- data.character = character data from np-ui:init
  -- data.twat = tweet content

  -- RETURN
  -- cb data = {},
  --    meta = { ok: true | false, message: string }
  cb({ data = {}, meta = { ok = true, message = '' } });
end)
