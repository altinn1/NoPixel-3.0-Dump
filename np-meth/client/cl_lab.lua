local insideLab = nil
local carryingIngredient = false
local myWallet = nil


local animationMap = {
    PICKUP_INGREDIENTS = {
        time = 10000,
        dictionary = "anim@heists@prison_heiststation@",
        name = "pickup_bus_schedule",
        flag = 1,
        text = "Picking up stuff"
    },
    FRIDGE_TEMPERATURE = {
        time = 60000,
        dictionary = "random@train_tracks",
        name = "idle_e",
        flag = 1,
        text = "Adjusting temperature"
    },
    DISTIL_STEAM = {
        time = 60000,
        dictionary = "anim@amb@business@meth@meth_monitoring_cooking@monitoring@",
        name = "look_around_v5_monitor",
        flag = 49,
        text = "Adjusting steam levels"
    },
    DISTIL_SETTINGS = {
        time = 60000,
        dictionary = "anim@amb@business@meth@meth_monitoring_cooking@monitoring@",
        name = "look_around_v5_monitor",
        flag = 49,
        text = "Adjusting settings"
    },
    MIXER_TEMPERATURE = {
        time = 60000,
        dictionary = "anim@amb@business@meth@meth_monitoring_cooking@monitoring@",
        name = "look_around_v5_monitor",
        flag = 1,
        text = "Adjusting temperature"
    },
    MIXER_INGREDIENTS = {
        time = 60000,
        dictionary = "weapon@w_sp_jerrycan",
        name = "fire",
        flag = 49,
        text = "Adding ingredients"
    },
    MIXER_HARDWARE = {
        time = 60000,
        dictionary = "anim@amb@business@meth@meth_monitoring_cooking@monitoring@",
        name = "look_around_v5_monitor",
        flag = 49,
        text = "Adjusting settings"
    }
}

local function processAction(action, pEntity, fnCb)
    local animSettings = animationMap[action]
    if animSettings then
        TaskTurnPedToFaceEntity(PlayerPedId(), pEntity, -1)
        Wait(50)
        local animation = AnimationTask:new(PlayerPedId(), 'normal', animSettings.text, animSettings.time, animSettings.dictionary, animSettings.name, animSettings.flag)
        local result = animation:start()
        result:next(function (data)
            if data == 100 then
                RPC.execute("np-meth:doAction", insideLab, action)
                if fnCb then
                  fnCb()
                end
            else
                TriggerEvent("DoLongHudText", "Stopped?", 2)
            end
        end)
    end
end

RegisterUICallback("np-ui:submitRangeValues", function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    Wait(100)
    exports["np-ui"]:closeApplication("range-picker")
    
    local result = RPC.execute("np-meth:doAction", insideLab, "START_COOKING", data)

    if not result then return end

    RPC.execute("phone:adjustCryptoBalance", myWallet.wallet_id, "reduce", getConfig().METH_LAB_BATCH_PRICE)
end)

AddEventHandler("np-meth:startCooking", function()
    if not exports["np-inventory"]:hasEnoughOfItem("methlabkey", 1, false) then
        TriggerEvent("DoLongHudText", "No key...", 2)
        return
    end

    local wallet, message = RPC.execute("phone:checkCryptoAmount", 1, getConfig().METH_LAB_BATCH_PRICE)
    myWallet = wallet
    if not wallet then
        TriggerEvent("DoLongHudText", message, 2)
        return
    end

    exports["np-ui"]:openApplication("range-picker")
end)

AddEventHandler("np-meth:pickupIngredient", function(pArgs, pEntity)
    processAction("PICKUP_INGREDIENTS", pEntity, function()
      carryingIngredient = true
    end)
end)

-- actions

AddEventHandler("np-meth:adjustFridgeTemp", function(pArgs, pEntity)
    processAction("FRIDGE_TEMPERATURE", pEntity)
end)

AddEventHandler("np-meth:adjustSteamLevel", function(pArgs, pEntity)
    processAction("DISTIL_STEAM", pEntity)
end)

AddEventHandler("np-meth:adjustDistilSettings", function(pArgs, pEntity)
    processAction("DISTIL_SETTINGS", pEntity)
end)

AddEventHandler("np-meth:adjustMixerTemp", function(pArgs, pEntity)
    processAction("MIXER_TEMPERATURE", pEntity)
end)

AddEventHandler("np-meth:addIngredient", function(pArgs, pEntity)
    if not carryingIngredient then
        TriggerEvent("DoLongHudText", "Not carrying anything?", 2)
        return
    end
    carryingIngredient = false
    processAction("MIXER_INGREDIENTS", pEntity)
end)

AddEventHandler("np-meth:adjustMixerSettings", function(pArgs, pEntity)
    processAction("MIXER_HARDWARE", pEntity)
end)

-- end actions

AddEventHandler("np-inventory:itemUsed", function(item, info)
    if item == "methlabkey" then
        if not info then return end
        RPC.execute("np-meth:useDoorKey", NetworkGetNetworkIdFromEntity(PlayerPedId()), info)
    end
end)

AddEventHandler("np-meth:purchaseMethLabKey", function()
    local wallet, message = RPC.execute("phone:checkCryptoAmount", 1, getConfig().METH_LAB_KEY_PRICE)
    if not wallet then
        TriggerEvent("DoLongHudText", message, 2)
        return
    end
    local result = RPC.execute("np-meth:purchaseLabKey")
    if not result then return end
    RPC.execute("phone:adjustCryptoBalance", wallet.wallet_id, "reduce", getConfig().METH_LAB_KEY_PRICE)
end)

-- local foundObject = nil
-- AddEventHandler("np:target:changed", function(pEntity, pEntityType)
--   if not pEntity or pEntityType ~= 3 then
--     if foundObject then
--         foundObject = nil
--         TriggerEvent("np-menu:updateMethObject", foundObject)
--     end
--     return
--   end
--   for k, v in pairs(INTERACT_OBJECTS) do
--     if k == GetEntityModel(pEntity) then
--         foundObject = INTERACT_OBJECTS[k].name
--     end
--   end
--   if foundObject then
--     TriggerEvent("np-menu:updateMethObject", foundObject)
--   end
-- end)

AddEventHandler("np-polyzone:enter", function(name, data)
    if name ~= "methlab" then return end
    insideLab = data.id
end)
AddEventHandler("np-polyzone:exit", function(name, data)
    if name ~= "methlab" then return end
    insideLab = nil
end)
