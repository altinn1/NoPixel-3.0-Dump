--[[
    Functions below: Utility
    Description: Simple utility functions to make scripts easier
]]


Housing.ClosestObject = {}
Housing.plyCoords = nil

local _i, _f, _v, _r, _ri, _rf, _rl, _s, _rv, _ro, _in, _ii, _fi =
Citizen.PointerValueInt(), Citizen.PointerValueFloat(), Citizen.PointerValueVector(),
Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger(), Citizen.ResultAsFloat(), Citizen.ResultAsLong(), Citizen.ResultAsString(), Citizen.ResultAsVector(), Citizen.ResultAsObject(),
Citizen.InvokeNative, Citizen.PointerValueIntInitialized, Citizen.PointerValueFloatInitialized

local string_len = string.len
local inv_factor = 1.0 / 370.0

function Draw3DText(x,y,z, text)
    local factor = string_len(text) * inv_factor
    local onScreen,_x,_y = _in(0x34E82F05DF2974F5, x, y, z, _f, _f, _r) -- GetScreenCoordFromWorldCoord

    if onScreen then
        _in(0x07C837F9A01C34C9, 0.35, 0.35) -- SetTextScale
        _in(0x66E0276CC5F6B9DA, 4) -- SetTextFont
        _in(0x038C1F517D7FDCF8, 1) -- SetTextProportional
        _in(0xBE6B23FFA53FB442, 255, 255, 255, 215) -- SetTextColour
        _in(0x25FBB336DF1804CB, "STRING") -- SetTextEntry
        _in(0xC02F4DBFB51D988B, 1) -- SetTextCentre
        _in(0x6C188BE134E074AA, text) -- AddTextComponentString, assumes "text" is of type string
        _in(0xCD015E5BB0D96A57, _x, _y) -- DrawText
        _in(0x3A618A217E5154F0, _x,_y+0.0125, 0.015 + factor, 0.03, 41, 11, 41, 68) -- DrawRect
    end
end



local runDebugLocations = false

local cleaning = false
Citizen.CreateThread(function()
    defaultStart() --delete when done with debuging 
    Wait(2000)
    generateZoneList()
    while true do
        if runDebugLocations then
            Citizen.Wait(1)
            Housing.plyCoords = GetEntityCoords(PlayerPedId())
            cleaning = false


            for i=1,#Housing.info do
                local vec3 = vector3(Housing.info[i][1].x,Housing.info[i][1].y,Housing.info[i][1].z)
                local dist = #(vec3-Housing.plyCoords)
                if dist < 500 then
                    Housing.ClosestObject[#Housing.ClosestObject+1] = {i}
                end
            end


            Wait(5000)
            cleaning = true
            Housing.ClosestObject = {}
        else
            Wait(20000)
        end
    end
end)

local colorTable = {
    ["dik"] = {235, 16, 115},
    ["ex_int_office_03b_dlc"] = {17, 33, 212},
    ["trailer"] = {216, 16, 235},
    ["v_int_16_low"] = {64, 112, 133},
    ["v_int_16_mid_empty"] = {38, 255, 230},
    ["v_int_24"] = {59, 222, 9},
    ["v_int_44_empty"] = {237, 255, 36},
    ["v_int_49_empty"] = {199, 138, 24},
    ["v_int_61"] = {84, 28, 28},
    ["ghost_stash_houses_01"] = {255,255,255}
}

local addition = {
  
}

function buildPropertyListAddition(model)
    local addonProperty = {}
    local missingZones = {}
    local index = #Housing.info
    for k,v in pairs(addition) do
        local streetName , crossingRoad = GetStreetNameAtCoord(v[2].x,v[2].y,v[2].z)
        result = ""..GetStreetNameFromHashKey(streetName).." "..GetStreetNameFromHashKey(crossingRoad)
        addonProperty[index] = {
            [1] = v[2],
            [2] = vector4(0.0, 0.0, 0.0, 0.0),
            ["model"] = model,
            ["Street"] = result,
            ["enabled"] = true
        }
        index = index + 1 
    end


    for k,v in pairs(Housing.info) do

        local zone = GetZoneAtCoords(v[1])
        local zoneName = GetNameOfZone(v[1])

        if Housing.zoningPrices[zoneName] == nil then
            missingZones[zoneName] = zoneName
        end
    end

    TriggerServerEvent("saveNewProperty",addonProperty,missingZones)
end

Citizen.CreateThread(function()

    
    exports["np-keybinds-1"]:registerKeyMapping("","Housing", "Interact", "+propertyInteract", "-propertyInteract", "E")
    RegisterCommand("+propertyInteract", InteractionPressed, false)
    RegisterCommand("-propertyInteract", function() end, false)

    --buildPropertyListAddition("ghost_stash_houses_01")
    while true do
        if runDebugLocations then
            Housing.plyCoords = GetEntityCoords(PlayerPedId())

            for i=1,#Housing.info do

                local pos = vector3(Housing.info[i][1].x,Housing.info[i][1].y,Housing.info[i][1].z)

                local dist = #(pos-Housing.plyCoords)
                if dist <= 400 then


                    local color = colorTable[Housing.info[i].model]
                    DrawMarker(1,pos, 0, 0, 0, 0, 0, 0, 0.701,1.0001,100.3001, color[1], color[2], color[3], 255, 0, 0, 0, 0)
                end
            end

            if #Housing.ClosestObject >= 1 or cleaning then
                Wait(1)
            else
                Wait(2000)
            end
        else
            Wait(20000)
        end
       
    end
end)

function generateZoneList()
    for k,v in pairs(Housing.info) do

        
        local zone = GetZoneAtCoords(v[1])
        local zoneName = GetNameOfZone(v[1])

        if Housing.zone[zoneName] == nil then
            Housing.zone[zoneName] = {
                locations = {},
                zoneName = zoneName
            }
        end
        Housing.zone[zoneName].locations[k] = vec3FromVec4(v[1])

        
    end
    RPC.execute("setZoneLocations",Housing.zone)
    
end

function vec3FromVec4(vec4)
    return vector3(vec4.x,vec4.y,vec4.z)
end


function playerInRangeOfProperty(propertyID)
    if propertyID == nil or propertyID == 0 then return false end
    local playerCoords = GetEntityCoords(PlayerPedId())
    local distance = #(playerCoords - vec3FromVec4(Housing.info[propertyID][1]))
    if distance <= Housing.ranges.editRange then
        return true
    end

    if distance <= 600 and Housing.currentlyInsideBuilding then
        return true
    end

    return false
end

function Raycast()
    local start = GetEntityCoords(PlayerPedId())
    local target = vector3(start.x,start.y,start.z - 1.5)
 
    local ray = StartShapeTestRay(start, target, -1, PlayerPedId(), 1)
    local a, b, c, d, ent = GetShapeTestResult(ray)
    return {
        Hit = b,
        SurfaceNormal = d,
    }
end


function isLocked(propertyID,hideText)
    if Housing.currentHousingLocks == nil or Housing.currentHousingLocks[propertyID] == nil then
        if not hideText then
            TriggerEvent("DoLongHudText","Property is locked",2)
        end
        return true
    end

    if Housing.currentHousingLocks[propertyID] == true then 
        if not hideText then
            TriggerEvent("DoLongHudText","Property is locked",2) 
        end
        return true
    else
        return false
    end
end


function isPropertyActive(propertyID)
    return Housing.info[propertyID].enabled
end

function fixHousingLockdownIndexing(currentHousingLockdown)
    local newTable = {}
    local index1 = 1
    for k,v in pairs(currentHousingLockdown) do
        newTable[index1] = {}
        newTable[index1].housing_id = k
        newTable[index1].state = v
    end

    return newTable
end

function fixHousingLocksIndexing(currentHousingLocks)
    local newTable = {}
    local index1 = 1
    for k,v in pairs(currentHousingLocks) do
        newTable[index1] = {}
        newTable[index1].housing_id = k
        newTable[index1].state = v
    end

    return newTable
end

function fixOwnedIndexing(ownedHousing)
    local newTable = {}
    

    local index1 = 1
    
    for k,v in pairs(ownedHousing) do
        newTable[index1] = v
        newTable[index1].id = k
        local index2 = 1
        local newkeyTable = {}
        for i,u in pairs(newTable[index1].housingKeys) do
            newkeyTable[index2] = {}
            newkeyTable[index2].id = i
            newkeyTable[index2].character_id = u.cid
            newkeyTable[index2].first_name = u.first_name
            newkeyTable[index2].last_name = u.last_name
            index2 = index2 + 1
        end
        newTable[index1].housingKeys = newkeyTable    
        index1 = index1 + 1
    end
   return newTable
end

function fixKeyIndexing(keyTable)
    local newKeyTable = {}

    local index1 = 1

    for k,v in pairs(keyTable) do
        newKeyTable[index1] = {}
        newKeyTable[index1].housing_id = k
        newKeyTable[index1].street = v.information.housingName
        newKeyTable[index1].name = v.information.name

        local index2 = 1
        newKeyTable[index1].keys = {}
        for u,i in pairs(v) do
            if u ~= "information" then
                newKeyTable[index1].keys[index2] = {
                    key_id = u,
                    cid = i,
                }
                index2 = index2 + 1
                
            end
        end

        index1 = index1 + 1
    end

    return newKeyTable
end

function combineIntoOneTable()

    local owned = fixOwnedIndexing(Housing.currentOwned)
    local keys = fixKeyIndexing(Housing.currentKeys)

    local table = {}
    
    local index1 = 1
    for k,v in pairs(owned) do
        local n = v.housingOwnedBy
        table[index1] = {
            id = v.id,
            is_owner = true,
            is_locked = isLocked(v.id,true),
            keys = v.housingKeys,
            owner = {["first_name"] = n.first_name, ["last_name"] = n.last_name },
            locations = v.housingInformation,
            cat = v.housingCat,
            name = v.housingName,
        }
        index1 = index1 + 1
    end


    for k,v in pairs(keys) do
        local housing_id = v.housing_id
        if not Housing.currentOwned[housing_id] then
            local locked = isLocked(housing_id,true)
            local name = v.street
            local cat = Housing.typeInfo[Housing.info[housing_id].model].cat
            local playerName = v.name
            for i,u in pairs(v.keys) do
                if type(u) == "table" then
                        table[index1] = {
                            id = housing_id,
                            is_owner = false,
                            is_locked = locked,
                            keys = { character_id = u.cid, first_name = playerName.first_name, last_name = playerName.last_name,id = u.key_id},
                            owner = nil,
                            locations = nil,
                            cat = cat,
                            name = name,
                        }
                        index1 = index1 + 1
                end
                
            end
        end
    end


    return table
end

function isNearProperty(isOwned)
    local isComplete, propertyId, dist, zone = Housing.func.findClosestProperty()

    if isComplete and dist <= 3.0 then
        if Housing.typeInfo[Housing.info[propertyId].model].cat == "buisness" then return false end
        if isOwned then
            if Housing.currentOwned[propertyId] == nil and Housing.currentHousingLocks[propertyId] == nil then 
                return false
            end
            return true
        end
        return true
    end
    return false
end

local targetProperty = 0

RegisterUICallback("np-housing:handler", function(data, cb)
    local eventData = data.key
    local eventType = eventData.type

    if eventType == "forfeit" then
        if targetProperty == nil or targetProperty == 0 then cb({ data = {}, meta = { ok = false, message = "Error" } }) end

        if eventData.forfeit then
            seizeProperty(targetProperty)
        end

        targetProperty = 0
    end

    if eventType == "removeInv" then

        if eventData.remove then
            placeBench(true)
        end

    end

    if eventType == "removeCraft" then

        if eventData.remove then
            setInventory()
        end

    end
    


    cb({ data = {}, meta = { ok = true, message = "done" } })
  end)

RegisterNetEvent("property:menuAction")
AddEventHandler("property:menuAction", function(pData)
    local action = pData.action
    local isComplete, propertyID, dist, zone = Housing.func.findClosestProperty()

    if isComplete and dist <= 3.0 then
        if Housing.typeInfo[Housing.info[propertyID].model].cat == "buisness" then return false end
        if action == "lockdown" then
            RPC.execute("property:clientLockdown",propertyID)
        elseif action == "checkOwner" then
            RPC.execute("property:getOwner",propertyID)
        elseif action == "forfeit" then
            targetProperty = propertyID
            exports["np-ui"]:showContextMenu(MenuData["property_check"])
        end
    else
        TriggerEvent("apartments:menuAction",action)
    end
    
end)
