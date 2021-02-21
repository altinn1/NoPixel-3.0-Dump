
local foodConfig = {
    burger = {
        {itemid = "bleederburger", displayName = "Bleeder", description = "", craftTime = 20},
        {itemid = "heartstopper", displayName = "Heart Stopper", description = "", craftTime = 20},
        {itemid = "torpedo", displayName = "Torpedo", description = "", craftTime = 20},
        {itemid = "moneyshot", displayName = "Moneyshot", description = "", craftTime = 20},
    },
    fries = {
        {itemid = "fries", displayName = "Fries", description = "", craftTime = 10}
    },
    drinks = {
        {itemid = "water", displayName =  "Tap Water", description = "", craftTime = 5},
        {itemid = "softdrink", displayName =  "Soft Drink", description = "", craftTime = 10},
        {itemid = "mshake", displayName =  "Milkshake", description = "", craftTime = 20},
        {itemid = "bscoffee", displayName =  "Cheap Coffee", description = "", craftTime = 60},
    },
    misc = {
        {itemid = "donut", displayName = "Donut", description = "", craftTime = 30},
    }
}

local numBurgerJobEmployees = 0
local isSignedOn = false
local isEmployee = false

local burgerContext, friesContext, drinksContext, miscContext = {}, {}, {}, {}

local activePurchases = {}

Citizen.CreateThread(function()
    exports['np-interact']:AddPeekEntryByPolyTarget('np-foodchain:burgerjob_signon', {{
        event = "np-foodchain:signOnPrompt",
        id = "food_chain_sign_on",
        icon = "clock",
        label = "Clock In"
    }}, { distance = { radius = 3.5 }  , isEnabled = function(pEntity, pContext) return not isSignedOn end })

    exports['np-interact']:AddPeekEntryByPolyTarget('np-foodchain:burgerjob_signon', {{
        event = "np-foodchain:signOffPrompt",
        id = "food_chain_sign_off",
        icon = "clock",
        label = "Clock Out"
    }}, { distance = { radius = 3.5 }, isEnabled = isChargeActive })

    exports['np-interact']:AddPeekEntryByPolyTarget('np-foodchain:burgerjob_shelfstorage', {{
        event = "np-foodchain:shelfPrompt",
        id = "food_chain_shelf_storage",
        icon = "box-open",
        label = "Open"
    }}, { distance = { radius = 3.5 }  })

    exports['np-interact']:AddPeekEntryByPolyTarget('np-foodchain:burgerjob_tray1', {{
        event = "np-foodchain:pickupPrompt",
        id = "food_chain_order_pickup_tray1",
        icon = "hand-holding",
        label = "Open"
    }}, { distance = { radius = 3.5 }  })

    exports['np-interact']:AddPeekEntryByPolyTarget('np-foodchain:burgerjob_tray2', {{
        event = "np-foodchain:pickupPrompt",
        id = "food_chain_order_pickup_tray2",
        icon = "hand-holding",
        label = "Open"
    }}, { distance = { radius = 3.5 }  })

    --Stations
    exports['np-interact']:AddPeekEntryByPolyTarget('np-foodchain:burgerjob_station0', {{
        event = "np-foodchain:stationPrompt",
        id = 'food_chain_station_0', --Fridge
        icon = "ice-cream",
        label = "Open Station",
        parameters = { stationId = 0 }
    }}, { distance = { radius = 3.5 } , isEnabled = isChargeActive })

    exports['np-interact']:AddPeekEntryByPolyTarget('np-foodchain:burgerjob_station1', {{
        event = "np-foodchain:stationPrompt",
        id = 'food_chain_station_1', --Fries
        icon = "temperature-high",
        label = "Open Station",
        parameters = { stationId = 1 }
    }}, { distance = { radius = 3.5 } , isEnabled = isChargeActive })

    exports['np-interact']:AddPeekEntryByPolyTarget('np-foodchain:burgerjob_station2', {{
        event = "np-foodchain:stationPrompt",
        id = 'food_chain_station_2', --Burgers
        icon = "hamburger",
        label = "Open Station",
        parameters = { stationId = 2 }
    }}, { distance = { radius = 3.5 } , isEnabled = isChargeActive })

    exports['np-interact']:AddPeekEntryByPolyTarget('np-foodchain:burgerjob_station3', {{
        event = "np-foodchain:stationPrompt",
        id = 'food_chain_station_3', --Drinks
        icon = "mug-hot",
        label = "Open Station",
        parameters = { stationId = 3 }
    }}, { distance = { radius = 3.5 } , isEnabled = isChargeActive })

    --Cash Registers
    local purchasePeekData = {{
            event = "np-foodchain:registerPurchasePrompt",
            icon = "cash-register",
            label = "Make Payment",
            parameters = {}
    }}

    local purchasePeekOptions = { distance = { radius = 3.5 } }

    -- This should 100% not work, but it does because exports serialize/copy the object
    -- If exports were to send references in the future then it would break for sure!

    purchasePeekData[1].id = 'food_chain_register_customer_1'
    purchasePeekData[1].parameters = {registerId = 1}
    exports['np-interact']:AddPeekEntryByPolyTarget('np-foodchain:burgerjob_register1', purchasePeekData, purchasePeekOptions)

    purchasePeekData[1].id = 'food_chain_register_customer_2'
    purchasePeekData[1].parameters = {registerId = 2}
    exports['np-interact']:AddPeekEntryByPolyTarget('np-foodchain:burgerjob_register2', purchasePeekData, purchasePeekOptions)

    purchasePeekData[1].id = 'food_chain_register_customer_3'
    purchasePeekData[1].parameters = {registerId = 3}
    exports['np-interact']:AddPeekEntryByPolyTarget('np-foodchain:burgerjob_register3', purchasePeekData, purchasePeekOptions)


    local registerPeekData = {{
        event = "np-foodchain:registerChargePrompt",
        icon = "credit-card",
        label = "Charge Customer",
        parameters = {}
    }}

    local registerPeekOptions = { distance = { radius = 3.5 }, isEnabled = isChargeActive }

    registerPeekData[1].id = 'food_chain_register_worker_1'
    registerPeekData[1].parameters = { registerId = 1 }
    exports['np-interact']:AddPeekEntryByPolyTarget('np-foodchain:burgerjob_register1', registerPeekData, registerPeekOptions)
    
    registerPeekData[1].id = 'food_chain_register_worker_2'
    registerPeekData[1].parameters = { registerId = 2 }
    exports['np-interact']:AddPeekEntryByPolyTarget('np-foodchain:burgerjob_register2', registerPeekData, registerPeekOptions)

    registerPeekData[1].id = 'food_chain_register_worker_3'
    registerPeekData[1].parameters = { registerId = 3 }
    exports['np-interact']:AddPeekEntryByPolyTarget('np-foodchain:burgerjob_register3', registerPeekData, registerPeekOptions)

    --Chair stuff
    for k,v in ipairs(ChairZones) do
        exports['np-interact']:AddPeekEntryByPolyTarget('np-foodchain:burgerjob_chairzone_' .. tostring(v[4].name), {{
            event = "np-foodchain:chairSit",
            id = "food_chain_chair_" .. tostring(v[4].name),
            icon = "chair",
            label = "sit",
            parameters = {chairPosition = k, chairName = v[4].name}
        }}, { distance = { radius = 3.0 }})
    end

    --Build Context Menus
    for foodContext, data in pairs(foodConfig) do
        local temp = {}
        for k, item in pairs(data) do
            temp[#temp+1] = {
                title = item.displayName,
                description = item.description .. " Cooking time: " .. item.craftTime .. "s",
                action = "np-foodchain:orderFood",
                key = {itemid = item.itemid, displayName = item.displayName, craftTime = item.craftTime, context = foodContext},
                disabled = false
            }
        end

        if foodContext == "burger" then
            burgerContext = temp
        elseif foodContext == "fries" then
            friesContext = temp
        elseif foodContext == "drinks" then
            drinksContext = temp
        else
            miscContext = temp
        end
    end
end)

function isChargeActive(pEntity, pContext)
    return isSignedOn
end

local previousPosition = nil
local isSitting = false
function chairSit(chairPosition, cancel)
    if isSitting then
        if cancel then
            TriggerEvent("animation:cancel")
        end
        Wait(1700)
        if previousPosition ~= nil then
            SetEntityCoords(PlayerPedId(), previousPosition.x, previousPosition.y, previousPosition.z, 0, 0, 0, false)
            previousPosition = nil
        end
        isSitting = false
    else
        if chairPosition == nil then return end
        --Save old location
        previousPosition = GetEntityCoords(PlayerPedId())
        --Set player position to chair
        local pos = ChairZones[chairPosition][1]
        local heading = (ChairZones[chairPosition][4].heading) * 1.0
        SetEntityHeading(PlayerPedId(), heading)
        isSitting = true
        TaskStartScenarioAtPosition(PlayerPedId(), 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT', pos.x, pos.y, pos.z - 0.5, heading, -1, true, true)
    end
    exports["np-flags"]:SetPedFlag(PlayerPedId(), 'isSittingOnChair', isSitting)
end

RegisterUICallback('np-foodchain:orderFood', function (data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    local startPos = GetEntityCoords(PlayerPedId())

    local tempContext, tempAction, tempAnimDict, tempAnim, animLoop = {}, "", "", "", false
    if data.key.context == "burger" then
        tempContext = burgerContext
        tempAction = "Building "
        tempAnimDict = "anim@amb@business@coc@coc_unpack_cut@"
        tempAnim = "fullcut_cycle_v6_cokecutter"
        animLoop = true
    elseif data.key.context == "fries" then
        tempContext = friesContext
        tempAction = "Frying "
        tempAnimDict = "missfinale_c2ig_11"
        tempAnim = "pushcar_offcliff_f"
        animLoop = true
    elseif data.key.context == "drinks" then
        tempContext = drinksContext
        tempAction = "Dispensing "
        tempAnimDict = "mp_ped_interaction"
        tempAnim = "handshake_guy_a"
        animLoop = false
    else
        tempContext = miscContext
        tempAction = "Grabbing "
        tempAnimDict = "missfinale_c2ig_11"
        tempAnim = "pushcar_offcliff_f"
        animLoop = true
    end

    if IsPedArmed(PlayerPedId(), 7) then
        SetCurrentPedWeapon(PlayerPedId(), 0xA2719263, true)
    end

    RequestAnimDict(tempAnimDict)

    while not HasAnimDictLoaded(tempAnimDict) do
        Citizen.Wait(0)
    end

    if IsEntityPlayingAnim(PlayerPedId(), tempAnimDict, tempAnim, 3) then
        ClearPedSecondaryTask(PlayerPedId())
    else
        local animLength = animLoop and -1 or GetAnimDuration(tempAnimDict, tempAnim)
        TaskPlayAnim(PlayerPedId(), tempAnimDict, tempAnim, 1.0, 4.0, animLength, 18, 0, 0, 0, 0)
    end

    local finished = exports["np-taskbar"]:taskBar(data.key.craftTime * 1000, tempAction .. data.key.displayName)
    if finished == 100 then
        pos = GetEntityCoords(PlayerPedId(), false)
        if(Vdist(startPos, pos) < 2.0) then
            TriggerEvent("player:receiveItem", data.key.itemid, 1, false, {})
            exports['np-ui']:showContextMenu(tempContext)
        end
    end

    StopAnimTask(PlayerPedId(), tempAnimDict, tempAnim, 3.0)
end)

AddEventHandler('np-foodchain:signOnPrompt', function(pParameters, pEntity, pContext)
    isSignedOn, isEmployee = RPC.execute("np-foodchain:tryJoinJob")
    if isSignedOn then
        TriggerEvent("DoLongHudText", "Clocked in")
    else
        TriggerEvent("DoLongHudText", "You can't take this job right now!")
    end
end)

AddEventHandler('np-foodchain:signOffPrompt', function(pParameters, pEntity, pContext)
    TriggerEvent("DoLongHudText", "Clocked out.")
    RPC.execute("np-foodchain:leaveJob")
    isSignedOn = false
end)

AddEventHandler('np-foodchain:pickupPrompt', function(pParameters, pEntity, pContext)
    TriggerEvent("server-inventory-open", "1", "burgerjob_counter");
end)

AddEventHandler('np-foodchain:shelfPrompt', function(pParameters, pEntity, pContext)
    TriggerEvent("server-inventory-open", "1", "burgerjob_shelf");
end)


AddEventHandler('np-foodchain:chairSit', function(pParameters, pEntity, pContext)
    chairSit(pParameters.chairPosition, true)
end)

RegisterNetEvent("np-emotes:sitOnChair")
AddEventHandler("np-emotes:sitOnChair", function(pArgs, pEntity, pContext)
    chairSit(nil, true)
end)

RegisterNetEvent("turnoffsitting")
AddEventHandler("turnoffsitting", function()
	chairSit(nil, false)
end)


AddEventHandler('np-foodchain:stationPrompt', function(pParameters, pEntity, pContext)
    local tempContext, tempBrokeText, tempBrokeAction = {}, "", ""
    if pParameters.stationId == 0 then
        tempContext = miscContext
        tempBrokeText = "The trays need cleaning"
    elseif pParameters.stationId == 1 then
        tempContext = friesContext
        tempBrokeText = "The fryer needs cleaning"
    elseif pParameters.stationId == 2 then
        tempContext = burgerContext
        tempBrokeText = "The table needs cleaning"
    elseif pParameters.stationId == 3 then
        tempContext = drinksContext
        tempBrokeText = "The dispenser needs cleaning"
    end

    --Check if station is broken (server handles the random break chance)
    local isActive = RPC.execute("np-foodchain:isStationActive", pParameters.stationId)

    if not isActive then
        --Open failed dialog
        local failedContext = {{
            title = "Clean",
            description = tempBrokeText,
            action = "np-foodchain:cleanStation",
            key = {stationId = pParameters.stationId},
            disabled = false
        }}
        tempContext = failedContext
    end
    
    exports['np-ui']:showContextMenu(tempContext)
end)

AddEventHandler('np-foodchain:registerPurchasePrompt', function(pParameters, pEntity, pContext)
    local activeRegisterId = pParameters.registerId
    local activeRegister = activePurchases[activeRegisterId]
    if not activeRegister or activeRegister == nil then
        TriggerEvent("DoLongHudText", "No purchase active.")
        return
    end

    local acceptContext = {{
        title = "Accept Purchase",
        description = "$" .. activeRegister.cost .. " | " .. activeRegister.comment,
        action = "np-foodchain:finishPurchasePrompt",
        key = {cost = activeRegister.cost, comment = activeRegister.comment, registerId = pParameters.registerId, charger = activeRegister.charger},
        disabled = false
    }}
    exports['np-ui']:showContextMenu(acceptContext)
end)

AddEventHandler('np-foodchain:registerChargePrompt', function(pParameters, pEntity, pContext)
    exports['np-ui']:openApplication('textbox', {
        callbackUrl = 'np-ui:foodchain:charge',
        key = pParameters.registerId,
        items = {
          {
            icon = "dollar-sign",
            label = "Cost",
            name = "cost",
          },
          {
            icon = "pencil-alt",
            label = "Comment",
            name = "comment",
          },
        },
        show = true,
    })
end)


RegisterUICallback('np-foodchain:cleanStation', function(data, cb)
    local tempAnimDict = "amb@world_human_maid_clean@base"
    local tempAnim = "base"

    if IsPedArmed(PlayerPedId(), 7) then
        SetCurrentPedWeapon(PlayerPedId(), 0xA2719263, true)
    end

    RequestAnimDict(tempAnimDict)

    while not HasAnimDictLoaded(tempAnimDict) do
        Citizen.Wait(0)
    end

    if IsEntityPlayingAnim(PlayerPedId(), tempAnimDict, tempAnim, 3) then
        ClearPedSecondaryTask(PlayerPedId())
    else
        TaskPlayAnim(PlayerPedId(), tempAnimDict, tempAnim, 1.0, 4.0, -1, 19, 0, 0, 0, 0)
    end

    --Open taskbar skill
    local failed = false
    for i=1,8 do
        if not failed then
            local finished = exports["np-ui"]:taskBarSkill(2500,  math.random(5, 15))
            if finished ~= 100 then
                failed = true
            end
        end
    end

    StopAnimTask(PlayerPedId(), tempAnimDict, tempAnim, 3.0)

    if not failed then
        RPC.execute("np-foodchain:setStationActive", data.key.stationId)
        TriggerEvent("DoLongHudText", "Station cleaned.")
    end
end)

RegisterUICallback('np-foodchain:finishPurchasePrompt', function (data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    local success = RPC.execute("np-foodchain:completePurchase", data.key)
    if not success then
        TriggerEvent("DoLongHudText", "The purchase could not be completed.")
    end
end)

RegisterUICallback("np-ui:foodchain:charge", function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    exports['np-ui']:closeApplication('textbox')
    local cost = tonumber(data.values.cost)
    local comment = data.values.comment
    --check if cost is actually a number
    if cost == nil or not cost then return end
    if comment == nil then comment = "" end

    if cost < 10 then cost = 10 end --Minimum $10

    --Send event to everyone indicating a purchase is ready at specified register
    RPC.execute("np-foodchain:startPurchase", {cost = cost, comment = comment, registerId = data.key})
end)

RegisterNetEvent('np-foodchain:updateEmployees')
AddEventHandler("np-foodchain:updateEmployees", function(numEmployees)
    numBurgerJobEmployees = numEmployees
end)

--Add to purchases at registerId pos
RegisterNetEvent('np-foodchain:activePurchase')
AddEventHandler("np-foodchain:activePurchase", function(data)
    activePurchases[data.registerId] = data
end)

--Remove at registerId pos
RegisterNetEvent('np-foodchain:closePurchase')
AddEventHandler("np-foodchain:closePurchase", function(data)
    activePurchases[data.registerId] = nil
end)

--Getting fired
RegisterNetEvent('np-foodchain:firedEmployee')
AddEventHandler("np-foodchain:firedEmployee", function(data)
    isSignedOn = false
    TriggerEvent("DoLongHudText", data)
end)

--Firing someone
RegisterNetEvent('np-foodchain:burgerjob_fire')
AddEventHandler("np-foodchain:burgerjob_fire", function(employee)
    if employee == nil then return end
    local success = RPC.execute("np-foodchain:fireEmployee", employee)
    if success then 
        TriggerEvent("DoLongHudText", "Fired Employee")
    end
end)

AddEventHandler("np-polyzone:enter", function(zone, data)
    if zone == "np-foodchain:burgerjob_interior" then
        numBurgerJobEmployees = RPC.execute("np-foodchain:getNumEmployees")
    end
end)

AddEventHandler("np-polyzone:exit", function(zone)
     if zone == "np-foodchain:burgerjob_interior" then
         --Prevent people from teleporting back abusing chair bug
         isSitting = false
         exports["np-flags"]:SetPedFlag(PlayerPedId(), 'isSittingOnChair', false)
     end
end)

-- Fallback to old shop if nobody is working
Citizen.CreateThread(function()
    local helpTextShowing = false
    while true do
        if numBurgerJobEmployees > 0 then
            Wait(30000)
        else
            local pos = GetEntityCoords(PlayerPedId())
            if(Vdist(-1193.22, -892.2792, 13.99516, pos.x, pos.y, pos.z) < 10.0) then
                DrawMarker(27, -1193.22, -892.2792, 13.99516 - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, 0, 25, 165, 165, 0,0, 0,0)
                if(Vdist(-1193.22, -892.2792, 13.99516, pos.x, pos.y, pos.z) < 2.0) then
                    if not helpTextShowing then
                        exports["np-ui"]:showInteraction("[E] Wait in Line")
                        helpTextShowing = true
                    end
                    if IsControlJustPressed(1, 38) then
                        exports["np-ui"]:hideInteraction()
                        local finished = exports["np-taskbar"]:taskBar(10000, "Ordering Food")
                        if finished == 100 then
                            pos = GetEntityCoords(PlayerPedId(), false)
                            if(Vdist(-1193.22, -892.2792, 13.99516, pos.x, pos.y, pos.z) < 2.0) then
                                TriggerEvent("server-inventory-open", "123", "Shop");
                                Wait(1000)
                            end
                        end
                    end
                else
                    if helpTextShowing then
                        exports["np-ui"]:hideInteraction()
                        helpTextShowing = false
                    end
                end
            else
                Wait(2000)
            end
        end
        Wait(0)
    end
end)