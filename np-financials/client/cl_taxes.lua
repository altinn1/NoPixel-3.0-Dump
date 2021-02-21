RegisterUICallback("np-ui:getTaxOptions", function(data, cb)
    local success, message = RPC.execute("GetTaxLevels", true)
    cb({ data = message, meta = { ok = success, message = 'ok' } })
end)

RegisterUICallback("np-ui:getTaxHistory", function(data, cb)
    local success, message = RPC.execute("GetTaxHistory")
    cb({ data = message, meta = { ok = success, message = 'ok' } })
end)

RegisterUICallback("np-ui:saveTaxOptions", function(data, cb)
    local options = data.options -- { [ id: 1, level: 10 ]}
    local success, message = RPC.execute("SetTaxLevel", options)
    cb({ data = message, meta = { ok = success, message = 'ok' } })
end)

RegisterUICallback("np-ui:getAssetTaxes", function(data, cb)
    local cid = data.character.id
    local success, message = RPC.execute("GetAssetTaxes", cid)
    cb({ data = message, meta = { ok = success, message = (not success and message or 'done') } })
end)
RegisterUICallback("np-ui:payAssetTax", function(data, cb)
    local pCharacterId, pSourceAccountId, pAssetTaxId, pAssetName = data.character.id, data.character.bank_account_id, data.asset.id, data.asset.name
    local success, message = RPC.execute("PayAssetTaxes", pCharacterId, pSourceAccountId, pAssetTaxId, pAssetName)
    cb({ data = message, meta = { ok = success, message = (not success and message or 'done') } })
end)
