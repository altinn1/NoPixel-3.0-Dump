local currentJob = nil
local showDispatchLog = false
local isDead = false
local disableNotifications = false
local disableNotificationSounds = false
local currentCallSign = 0

RegisterNetEvent("police:setCallSign")
AddEventHandler("police:setCallSign", function(pCallSign)
	if pCallSign ~= nil then currentCallSign = pCallSign end
end)

local function randomizeBlipLocation(pOrigin)
    local x = pOrigin.x
    local y = pOrigin.y
    local z = pOrigin.z
    local luck = math.random(2)
    y = math.random(25) + y
    if luck == 1 then
        x = math.random(25) + x
    end
    return {x = x, y = y, z = z}
end

local function sendNewsBlip(pNotificationData)
    TriggerEvent("phone:registerBlip", {
        currentJob = currentJob,
        isImportant = pNotificationData.isImportant,
        blipTenCode = pNotificationData.dispatchCode == nil and '' or pNotificationData.dispatchCode,
        blipDescription = pNotificationData.dispatchMessage,
        blipLocation = pNotificationData.origin,
        blipSprite = pNotificationData.blipSprite,
        blipColor = pNotificationData.blipColor
    })
end

RegisterNetEvent('pd:deathcheck')
AddEventHandler('pd:deathcheck', function()
    if not isDead then
        isDead = true
    else
        isDead = false
    end
end)

RegisterNetEvent('dispatch:clNotify')
AddEventHandler('dispatch:clNotify', function(pNotificationData)
    if pNotificationData ~= nil then
        if pNotificationData.recipientList then
            for key, value in pairs(pNotificationData.recipientList) do
                if key == currentJob and value and not disableNotifications then
                    if pNotificationData.origin ~= nil then
                        if pNotificationData.originStatic == nil or not pNotificationData.originStatic then
                            pNotificationData.origin = randomizeBlipLocation(pNotificationData.origin)
                        else
                            pNotificationData.origin = pNotificationData.origin
                        end
                    end

                    if currentJob ~= "news" then
                        sendNewsBlip(pNotificationData)
                    elseif currentJob == "news" then
                        if exports["np-inventory"]:getQuantity("scanner") > 0 then
                            local newsObject = {}
                            newsObject.dispatchMessage = "A 911 call has been picked up on your radio scanner!"
                            newsObject.displayCode = nil
                            newsObject.isImportant = false
                            newsObject.priority = 1

                            sendNewsBlip(pNotificationData)
                        end
                    end
                    if(pNotificationData.getStreetCord) then
                        local streetName, crossingRoad = GetStreetNameAtCoord(pNotificationData.origin.x, pNotificationData.origin.y, pNotificationData.origin.z)
                        pNotificationData.firstStreet = GetStreetNameFromHashKey(streetName)
                        pNotificationData.secondStreet = GetStreetNameFromHashKey(crossingRoad)
                    end
                    if(pNotificationData.playSound and currentJob ~= "news" and not disableNotificationSounds) then
                        TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 3.0, pNotificationData.soundName, 0.6)
                    end
                end
            end
        end
    else
        print("I didnt receive any data")
    end
end)

RegisterNetEvent("np-jobmanager:playerBecameJob")
AddEventHandler("np-jobmanager:playerBecameJob", function(job, name, notify)
    currentJob = job
end)

function displayFastDispatch()
    if showDispatchLog or ((currentJob == "police" or currentJob == "ems" or currentJob == "news") and not isDead) then
        showDispatchLog = not showDispatchLog
        exports["np-ui"]:SendUIMessage({
            source = "np-nui",
            app = "dispatch",
            show = showDispatchLog,
            data = data or {},
        })
        exports["np-ui"]:SetUIFocusCustom(showDispatchLog, showDispatchLog)
    end
end
RegisterCommand('+showFastDispatch', displayFastDispatch, false)
RegisterCommand('-showFastDispatch', displayFastDispatch, false)

Citizen.CreateThread(function()
    exports["np-keybinds-1"]:registerKeyMapping("","Gov", "View Dispatch", "+showFastDispatch", "-showFastDispatch")
end)

RegisterNetEvent('dispatch:toggleNotifications')
AddEventHandler('dispatch:toggleNotifications', function(state)
    state = string.lower(state)
    if state == "on" then
        disableNotifications = false
        disableNotificationSounds = false
        TriggerEvent('DoLongHudText', "Dispatch is now enabled.")
    elseif state == "off" then
        disableNotifications = true
        disableNotificationSounds = true
        TriggerEvent('DoLongHudText', "Dispatch is now disabled.")
    elseif state == "mute" then
        disableNotifications = false
        disableNotificationSounds = true
        TriggerEvent('DoLongHudText', "Dispatch is now muted.")
    else
        TriggerEvent('DoLongHudText', "You need to type in 'on', 'off' or 'mute'.")
    end
end)

Citizen.CreateThread(function()
	while true do
        Citizen.Wait(0)
        if showDispatchLog then
            DisableControlAction(0, 1, true)
            DisableControlAction(0, 2, true)
            DisableControlAction(0, 263, true) -- disable melee
            DisableControlAction(0, 264, true) -- disable melee
            DisableControlAction(0, 257, true) -- disable melee
            DisableControlAction(0, 140, true) -- disable melee
            DisableControlAction(0, 141, true) -- disable melee
            DisableControlAction(0, 142, true) -- disable melee
            DisableControlAction(0, 143, true) -- disable melee
            DisableControlAction(0, 24, true) -- disable attack
            DisableControlAction(0, 25, true) -- disable aim
            DisableControlAction(0, 47, true) -- disable weapon
            DisableControlAction(0, 58, true) -- disable weapon
            DisablePlayerFiring(PlayerPedId(), true) -- Disable weapon firing
        end
    end
end)

AddEventHandler("np-ui:application-closed", function(name)
    if name == "dispatch" and showDispatchLog then
        showDispatchLog = false
        exports["np-ui"]:SetUIFocusCustom(false, false)
    end
end)

-- v2
local receiveMapUpdates = false

RegisterUICallback("np-ui:dispatchToggleMapListener", function(data, cb)
    receiveMapUpdates = data.active
    cb({ data = {}, meta = { ok = true, message = "done" } })
end)

RegisterNetEvent("np-dispatch:onDutyToggle")
AddEventHandler("np-dispatch:onDutyToggle", function(onDuty)
    exports["np-ui"]:sendAppEvent("dispatch", {
        action = "toggleDuty",
        data = { active = onDuty },
    })
end)

RegisterNetEvent("np-dispatch:updateUnits")
AddEventHandler("np-dispatch:updateUnits", function(units)
    exports["np-ui"]:sendAppEvent("dispatch", {
        action = "updateUnits",
        data = units,
    })
end)

RegisterNetEvent('dispatch:clNotify')
AddEventHandler('dispatch:clNotify', function(pNotificationData)
    if not pNotificationData then return end
    exports["np-ui"]:sendAppEvent("dispatch", {
        action = "addPing",
        data = pNotificationData,
    })
end)

RegisterNetEvent("np-dispatch:updateUnitCoords")
AddEventHandler("np-dispatch:updateUnitCoords", function(pCoords)
    if not receiveMapUpdates then return end
    exports["np-ui"]:sendAppEvent("dispatch", {
        action = "updateUnitLocations",
        data = pCoords,
    })
end)

RegisterNetEvent("np-dispatch:updateDispatch")
AddEventHandler("np-dispatch:updateDispatch", function(pData)
    exports["np-ui"]:sendAppEvent("dispatch", pData)
end)

show = false
RegisterCommand("dispatcheroo", function()
    show = not show
    if show then
        exports["np-ui"]:openApplication("dispatch")
    else
        exports["np-ui"]:closeApplication("dispatch")
    end
end)

RegisterUICallback("np-ui:dispatchAction", function(data, cb)
    if data.action == "createCall" then
        RPC.execute("np-dispatch:createCall", data.ctxId)
    end
    if data.action == "dismissPing" then
        RPC.execute("np-dispatch:dismissPing", data.ctxId)
    end
    if data.action == "dismissCall" then
        RPC.execute("np-dispatch:dismissCall", data.ctxId)
    end
    if data.action == "toggleUnit" then
        RPC.execute("np-dispatch:toggleUnitAssignment", data.ctxId, data.unit)
    end
    if data.action == "setGPSLocation" then
        SetNewWaypoint(data.ping.origin.x, data.ping.origin.y)
    end
    if data.action == "setUnitVehicle" then
        RPC.execute("np-dispatch:setUnitVehicle", data.data)
    end
    if data.action == "setUnitRidingWith" then
        RPC.execute("np-dispatch:setUnitRidingWith", data.data)
    end
    cb({ data = {}, meta = { ok = true, message = "done" } })
end)
RegisterUICallback("np-ui:getDispatchData", function(data, cb)
    local result = RPC.execute("np-dispatch:getDispatchData")
    cb({ data = result, meta = { ok = true, message = result } })
end)

RegisterNetEvent("np-dispatch:openFull")
AddEventHandler("np-dispatch:openFull", function(pData)
    exports["np-ui"]:openApplication("dispatch", {
        showWithMap = true
    })
end)
