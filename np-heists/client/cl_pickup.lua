local pickupLocation = vector3(508.91, 3099.83, 41.31)
local lastCheck = 0

Citizen.CreateThread(function()
    while true do
        local playerCoords = GetEntityCoords(PlayerPedId())
        if #(playerCoords - pickupLocation) < 1.0 and lastCheck + 60000 < GetGameTimer() then
            RPC.execute("heists:pickupPurchasedItems")
            lastCheck = GetGameTimer()
        end
        Citizen.Wait(1000)
    end
end)

RegisterUICallback("np-ui:heistsPurchaseItem", function(data, cb)
    local character_id = data.character.id
    local success, message = RPC.execute("phone:getCrypto", character_id)
    if not success then
        cb({ data = {}, meta = { ok = success, message = (not success and message or 'done') } })
        return
    end
    local found = nil
    for _, v in pairs(message) do
        if v.id == 1 then
            found = v
        end
    end
    if found == nil then
        cb({ data = {}, meta = { ok = false, message = "Shungite wallet not found" } })
        return
    end
    if found.amount < data.price then
        cb({ data = {}, meta = { ok = false, message = "Not enough Shungite" } })
        return
    end
    local success = RPC.execute("phone:adjustCryptoBalance", found.wallet_id, "reduce", data.price)
    if not success then
        cb({ data = {}, meta = { ok = false, message = "Unknown error" } })
        return
    end
    RPC.execute("heists:addPickupItem", data.item)
    TriggerEvent("DoLongHudText", "You know where to go", 1)
    local blip = AddBlipForCoord(pickupLocation)
    SetBlipSprite(blip, 440)
    SetBlipScale(blip, 1.2)
    SetBlipColour(blip, 5)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Item Pickup")
    EndTextCommandSetBlipName(blip)
    cb({ data = {}, meta = { ok = true, message = "done" } })
end)
