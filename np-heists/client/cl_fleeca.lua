local function usePanel()
    Citizen.CreateThread(function()
        local ply = PlayerPedId()
        local plyCoords = GetEntityCoords(ply)

        local canUsePanel, loc = RPC.execute("heists:fleecaUsePanel", plyCoords)
        if not canUsePanel then
            TriggerEvent("DoLongHudText", loc, 2)
            return
        end

        TriggerServerEvent("dispatch:svNotify", {
            dispatchCode = "10-90E",
            origin = loc.panelCoords,
        })

        local success = Citizen.Await(UseBankPanel(loc.panelCoords, loc.panelHeading, "fleeca"))

        if not success then
            RPC.execute("np-heists:fleecaPanelFail")
            return
        end

        TriggerEvent("inventory:removeItem", "heistlaptop3", 1)
        local shouldSpawnGold = RPC.execute("heists:fleecaStart", loc)
        SpawnTrolley(loc.cashCoords, "cash", loc.cashHeading)
        if shouldSpawnGold then
            SpawnTrolley(loc.goldCoords, "gold", loc.goldHeading)
        end
    end)
end

function FleecaUsePanel()
    usePanel()
end

AddEventHandler("heists:fleecaTrolleyGrab", function(loc, type)
    local canGrab = RPC.execute("np-heists:fleecaCanGrabTrolley", loc, type)
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

-- Citizen.CreateThread(function()
--   SpawnTrolley(vector3(147.16,-1049.69,29.35), "cash", 311.58)
-- end)
