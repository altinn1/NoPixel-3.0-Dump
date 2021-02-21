local inCorner = false
local inCornerId = nil
local menuSellButtonActive = false
local currentTarget = nil
local playerCornering = false

AddEventHandler("np-meth:cornerSellProduct", function(pArgs, pEntity)
    if not exports["np-inventory"]:hasEnoughOfItem("methlabproduct", 1, false, true) then
        TriggerEvent("DoLongHudText", "No product...", 2)
        return
    end
    function loadAnimDict(dict)
        while ( not HasAnimDictLoaded(dict) ) do
            RequestAnimDict(dict)
            Citizen.Wait(0)
        end
    end
    loadAnimDict('anim@narcotics@trash')
    TaskPlayAnim(PlayerPedId(), 'anim@narcotics@trash', 'drop_front',0.9, -8, 1500, 49, 3.0, 0, 0, 0)
    RPC.execute("np-meth:attemptCornerSale", NetworkGetNetworkIdFromEntity(pEntity), inCornerId)
end)

AddEventHandler("np-meth:cornerStartSelling", function()
    local result = RPC.execute("np-meth:startCornering", inCornerId)
    if not result then return end
    TriggerEvent("np-meth:showSellDrugsMenuItem", "cancorner", false)
    playerCornering = true
end)

AddEventHandler("np-polyzone:enter", function(name, data)
    if name ~= "meth_corner" then return end
    if not exports["np-inventory"]:hasEnoughOfItem("methlabproduct", 1, false) then return end
    inCorner = true
    inCornerId = data.id
    TriggerEvent("DoLongHudText", "Looks like a good spot to sell...")
    TriggerEvent("np-meth:showSellDrugsMenuItem", "cancorner", true)
end)
AddEventHandler("np-polyzone:exit", function(name, data)
    if name ~= "meth_corner" then return end
    if not inCorner then return end
    if playerCornering then
        RPC.execute("np-meth:stopCornering")
        TriggerEvent("DoLongHudText", "No longer selling...", 2)
    end
    inCorner = false
    inCornerId = nil
    TriggerEvent("np-meth:showSellDrugsMenuItem", "cancorner", false)
end)
