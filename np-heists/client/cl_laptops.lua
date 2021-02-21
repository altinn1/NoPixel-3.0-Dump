AddEventHandler("np-inventory:itemUsed", function(item)
    if item == "heistlaptop3" then -- fleeca, green
        FleecaUsePanel()
        return
    end
    if item == "heistlaptop4" then -- vault upper, paleto, red
        if PaletoCanUsePanel() then
            PaletoUsePanel()
            return
        end
        if VaultUpperCanUsePanel() then
            VaultUpperUsePanel()
            return
        end
        TriggerEvent("DoLongHudText", "That doesn't seem right", 2)
    end
    if item == "heistlaptop1" then -- vault lower, gold
        if VaultLowerCanUsePanel() then
            VaultLowerUsePanel()
            return
        end
        TriggerEvent("DoLongHudText", "That doesn't seem right", 2)
        return
    end
end)
