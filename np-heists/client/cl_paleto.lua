local keypadCoords = vector3(-105.3, 6471.61, 31.63)
local keypadHeading = 46.5

local function usePanel()
    local canRobPaleto, message = RPC.execute("heists:paletoReady")
    if not canRobPaleto then
        TriggerEvent("DoLongHudText", message, 2)
        return
    end

    TriggerServerEvent("dispatch:svNotify", {
        dispatchCode = "10-90B",
        origin = keypadCoords,
    })

    local success = Citizen.Await(UseBankPanel(keypadCoords, keypadHeading, "paleto"))

    if not success then
        RPC.execute("np-heists:paletoPanelFail")
        return
    end

    TriggerEvent("inventory:removeItem", "heistlaptop4", 1)
    local trolleyConfig = GetTrolleyConfig("paleto")
    local shouldSpawnGold = RPC.execute("heists:paletoStart")
    SpawnTrolley(trolleyConfig.cashCoords, "cash", trolleyConfig.cashHeading)
    if shouldSpawnGold then
        SpawnTrolley(trolleyConfig.goldCoords, "gold", trolleyConfig.goldHeading)
    end
end

RegisterCommand("fup2", function()
    usePanel()
end)

function PaletoCanUsePanel()
    return #(GetEntityCoords(PlayerPedId()) - keypadCoords) < 1.0
end
function PaletoUsePanel()
    usePanel()
end

AddEventHandler("heists:paletoTrolleyGrab", function(loc, type)
    local canGrab = RPC.execute("np-heists:paletoCanGrabTrolley", loc, type)
    if canGrab then
        ActivateGrabListener(false)
        Loot(type)
        ActivateGrabListener(true)
        TriggerEvent("DoLongHudText", "You discarded the counterfeit items", 1)
        RPC.execute("np-heists:payoutTrolleyGrab", loc, type)
    else
        ActivateGrabListener(true)
        TriggerEvent("DoLongHudText", "You can't do that yet...", 2)
    end
end)
