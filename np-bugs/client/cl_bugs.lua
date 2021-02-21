function generateMetaData()
  local meta = {}

  -- location
  meta[#meta + 1] = { label = "Location", json = json.encode({ coords = GetEntityCoords(PlayerPedId()) }) }

  return meta
end

RegisterUICallback("np-ui:bugAction", function(data, cb)
  data.meta = generateMetaData()
  RPC.execute("np-ui:bugApiRequest", data)
  cb({ data = {}, meta = { ok = true, message = 'done' } })
end)
