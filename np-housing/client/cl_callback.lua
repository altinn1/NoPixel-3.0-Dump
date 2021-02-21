
--[[
    Functions below: Apartment App
    Description: All connections to the Apartment App
]]


function currentApartment()
    local cb = exports["np-apartments"]:getModule("func").currentApartment()
    return cb
end

function apartmentTable()
    local apartmentInfo = exports["np-apartments"]:getModule("info")
    return apartmentInfo
end

function upgradeApartment(apartmentTargetType)
    local isComplete,info = exports["np-apartments"]:getModule("func").upgradeApartment(apartmentTargetType)
    return isComplete,info
end

--[[
    Functions below: Housing App
    Description: All connections to the Housing App
]]

function currentLocation()
    local isComplete, propertyId, dist, zone = Housing.func.findClosestProperty()

    if isComplete and dist <= 3.0 then
        Housing.currentHousing = {
            ["housingName"] = Housing.info[propertyId].Street,
            ["housingCat"] = Housing.typeInfo[Housing.info[propertyId].model] and Housing.typeInfo[Housing.info[propertyId].model].cat or "Unknown",
            ["housingPrice"] = RPC.execute("getCostOfProperty", propertyId, zone)
        }
    else
        return false,"No property Found"
    end
    return isComplete, Housing.currentHousing
end

function buyProperty(housingName)

    local propertyID = Housing.func.getPropertyIdFromName(housingName)
    if propertyID == 0 then return false,"failed to find property" end

    if not isPropertyActive(propertyID) then return false,"property is not for sale" end

    local propertyZone = Housing.func.getPropertyZoneFromID(propertyID)
    if propertyZone == nil then return false,"failed to find property" end

    local complete, info = RPC.execute("AttemptHousingContract",propertyID,propertyZone)

    if type(info) == "table" then
        Housing.currentOwned = info
        getCurrentKeys()
        return true,combineIntoOneTable()
    end

    if type(info) == "string" then
        return complete, info
    end
    return complete,{}
end

function getOwnedHousing()
    return Housing.currentOwned
end

function setGps(housingName)

    local propertyID = Housing.func.getPropertyIdFromName(housingName)
    if propertyID == 0 and housingName ~= nil and housingName ~= "" then
        exports["np-apartments"]:getModule("func").gpsApartment(housingName)
    end
    if propertyID == 0 then return false,"failed to find property" end

    local pos = Housing.info[propertyID][1]
    SetNewWaypoint(pos.x,pos.y)

    return true,"marker Set"
end


function sellProperty(housingName)
    local propertyID = Housing.func.getPropertyIdFromName(housingName)
    if propertyID == 0 then return false,"failed to find property" end

    if Housing.currentOwned[propertyID] == nil then return false, "you do not own this property" end

    local propertyZone = Housing.func.getPropertyZoneFromID(propertyID)
    if propertyZone == nil then return false,"failed to find property" end

    local finished,message = RPC.execute("sellProperty",propertyID,propertyZone)

    if type(message) == "string" then
        return finished, message
    end
    return {},{}
end


function seizeProperty(propertyID)
    if propertyID == 0 then return false,"failed to find property" end

    local myjob = exports["isPed"]:isPed("myjob")
    if myjob ~= "judge" then return false,"Do not have the permission to perform this action" end

    local propertyZone = Housing.func.getPropertyZoneFromID(propertyID)
    if propertyZone == nil then return false,"failed to find property" end

    local finished,message = RPC.execute("seizeProperty",propertyID,propertyZone)
end

--[[
    Functions below: Housing App - Keys
    Description: All connections to the Housing App - Keys
]]


function getCurrentKeys()
    Housing.currentKeys = RPC.execute("currentKeys")
    return Housing.currentKeys
end

function removeKey(housingName,cid)
    
    local propertyID = Housing.func.getPropertyIdFromName(housingName)
    if propertyID == 0 then return false,"failed to find property" end

    if Housing.currentOwned[propertyID] == nil then return false, "you do not own this property" end
    local keyID = 0
    for k,v in pairs(Housing.currentOwned[propertyID].housingKeys) do
        if v.cid == cid then
            keyID = k
            break
        end
    end

    if keyID == 0 or Housing.currentOwned[propertyID].housingKeys[keyID] == nil then return false, "Invalid Key" end
    
    local currentKeys,currentOwned = RPC.execute("removeKey",keyID)

    if type(currentKeys) == "table" then
        Housing.currentKeys = currentKeys
        Housing.currentOwned = currentOwned

        return true,{}
    else
        return false,currentOwned
    end
end

function giveKey(housingName,cid)
    
    local propertyID = Housing.func.getPropertyIdFromName(housingName)
    if propertyID == 0 then return false,"failed to find property" end
    if cid == nil or cid == 0 then return false, "cannot find cid" end

    if Housing.currentOwned[propertyID] == nil then return false, "you do not own this property" end

    local currentKeys,currentOwned = RPC.execute("giveKey",propertyID,cid)

    if type(currentKeys) == "table" then
        Housing.currentKeys = currentKeys
        Housing.currentOwned = currentOwned

        return true,{}
    else
        return false,currentOwned
    end

end

--[[
    Functions below: Property Lock/unlcock
    Description: All connections to the property Locking
]]

function unlock(housingName)
    local propertyID = Housing.func.getPropertyIdFromName(housingName)
    if propertyID == 0 then return false,"failed to find property" end

    if not isPropertyActive(propertyID) then return false,"property is not active" end

    if not playerInRangeOfProperty(propertyID) then return false,"Not near your property" end

    if Housing.currentKeys == nil then return false,"You have no keys to property" end
    if Housing.currentKeys[propertyID] == nil then return false,"You have no keys to property" end

    if Housing.currentHousingLocks[propertyID] == nil or Housing.currentHousingLocks[propertyID] == true then
        
        if not lockdownCheck(propertyID) then
            TriggerEvent("DoLongHudText","Property on lockdown, you cannot alter locks.",2)
            return false,"Property on lockdown, you cannot alter locks."
        end

        local passed,currentHousingLocks = RPC.execute("unlockProperty",propertyID)


        if type(currentHousingLocks) == "table" then
            Housing.currentHousingLocks = currentHousingLocks
        end

        TriggerEvent("DoLongHudText","Property Unlocked.",2)
        return true,"Property unlocked"
    
    else
        return false,"Property is already unlocked"
    end


end

function lock(housingName)
    local propertyID = Housing.func.getPropertyIdFromName(housingName)
    if propertyID == 0 then return false,"failed to find property" end


    if not isPropertyActive(propertyID) then return false,"property is not active" end


    if not playerInRangeOfProperty(propertyID) then return false,"Not near your property" end
    if Housing.currentKeys == nil then return false,"You have no keys to property" end
    if Housing.currentKeys[propertyID] == nil then return false,"You have no keys to property" end

    if Housing.currentHousingLocks[propertyID] == false then
        
        if not lockdownCheck(propertyID) then
            TriggerEvent("DoLongHudText","Property on lockdown, you cannot alter locks.",2)
            return false,"Property on lockdown, you cannot alter locks."
        end

        local passed,currentHousingLocks = RPC.execute("lockProperty",propertyID)

        if type(currentHousingLocks) == "table" then
            Housing.currentHousingLocks = currentHousingLocks
        end

        TriggerEvent("DoLongHudText","Property Locked.",2)
        return true,"Property locked"
    
    else
        return false,"Property is already locked"
    end

end
--[[
    Functions below: Property Interactions
    Description: All connections to the property edit App
]]


function enterEdit(housingName)

    local propertyID = Housing.func.getPropertyIdFromName(housingName)
    if propertyID == 0 then return false,"failed to find property" end
    if Housing.typeInfo[Housing.info[propertyID].model].cat == "buisness" then return false, "cannot edit a buisness property" end

    if playerInRangeOfProperty(propertyID) then 
        Housing.currentlyEditing = propertyID

        local finished,housingInformation,currentHousingLocks,isResult,housingLockdown = RPC.execute("getCurrentSelected",propertyID)

        if isResult == false then
            if Housing.currentOwned[propertyID] == nil then 
                Housing.currentlyEditing = nil 
                return false, "you do not own this property" 
            end
        end

        if type(housingLockdown) == "table" then
            Housing.currentHousingLockdown = housingLockdown
        end
        
        if Housing.currentHousingLockdown ~= nil and Housing.currentHousingLockdown[propertyID] and isResult == false then
            return false,"cannot edit a lockdown building"
        end
        
        if type(housingInformation) == "table" then
            Housing.currentHousingInteractions = housingInformation
            Housing.currentHousingInteractions.id = propertyID
        end

        if type(currentHousingLocks) == "table" then
            Housing.currentHousingLocks = currentHousingLocks
        end

        

        return true,"entered edit mode"
    else
        return false, "to far from proeprty"
    end

end

function exitEdit(saveChanges)

    if saveChanges then 
        local finished = RPC.execute("updateCurrentSelected",Housing.currentlyEditing,Housing.currentHousingInteractions,Housing.hasEditedOrigin)
    end

    Housing.hasEditedOrigin = false
    Housing.positions = {}
    Housing.currentlyEditing = false
    if not Housing.currentlyInsideBuilding then
        Housing.currentHousingInteractions = nil
    end
end

function setGarage()

    if Housing.currentlyEditing == false then return false,"Not in edit mode" end
    if Housing.currentOwned[Housing.currentlyEditing] == nil then return false, "you do not own this property" end

    local playerCoords = GetEntityCoords(PlayerPedId())
    
    local passed, info = canPlaceAtLocation(playerCoords,Housing.currentlyEditing)


    if not IsPedInAnyVehicle(PlayerPedId(), false) then TriggerEvent("DoLongHudText","Must be in vehicle.",2) return end
    local playerHeading = GetEntityHeading(GetVehiclePedIsIn(PlayerPedId(), false))
    if passed then
        local garage = vector4(playerCoords.x,playerCoords.y,playerCoords.z,playerHeading)
        Housing.currentHousingInteractions.garage_coordinates = garage
    end

    return passed,info
end

function setCharChanger()

    if Housing.currentlyEditing == false then return false,"Not in edit mode" end
    if Housing.currentOwned[Housing.currentlyEditing] == nil then return false, "you do not own this property" end

    if Housing.currentlyInsideBuilding then
        local playerCoords = GetEntityCoords(PlayerPedId())

        
        local buildingVector = exports["np-build"]:getModule("func").currentBuildingVector()
        local vector = (playerCoords - buildingVector)
        
        if not canPlaceInteractionPoint("charChanger_offset",vector) then return false,"Invalid placement" end

        Housing.currentHousingInteractions.charChanger_offset = vector
        Housing.func.loadInteractions(Housing.info[Housing.currentHousingInteractions.id].model)
        return true,"Moved Char Changer"
    else
        return false,"not inside house"
    end
end

function setBackdoor()
    if Housing.currentlyEditing == false then return false,"Not in edit mode" end
    if Housing.currentOwned[Housing.currentlyEditing] == nil then return false, "you do not own this property" end

    local playerCoords = GetEntityCoords(PlayerPedId())
    
    if not Housing.currentlyInsideBuilding then 
        local passed, info = canPlaceAtLocation(playerCoords,Housing.currentlyEditing)
        if passed then
            Housing.currentHousingInteractions.backdoor_coordinates.external = playerCoords
            return true,"Moved External Backdoor"
        else
            return passed,info
        end
    else
        local buildingVector = exports["np-build"]:getModule("func").currentBuildingVector()
        local vector = (playerCoords - buildingVector)
        if not canPlaceInteractionPoint("backdoor_offset_internal",vector) then return false,"Invalid placement" end
        Housing.currentHousingInteractions.backdoor_coordinates.internal = vector
        Housing.func.loadInteractions(Housing.info[Housing.currentHousingInteractions.id].model)
        return true,"Moved Internal Backdoor"
    end
    
end



function setOriginLocation(x,y)
    
    if Housing.currentlyEditing == false then return false,"Not in edit mode" end
    if Housing.currentOwned[Housing.currentlyEditing] == nil then return false, "you do not own this property" end

    if (x >= Housing.ranges.minOrigin and x <= Housing.ranges.maxOrigin) and (y >= Housing.ranges.minOrigin and y <= Housing.ranges.maxOrigin) then
        local offset = vector3(x,y,0.0)
        Housing.hasEditedOrigin = true
        Housing.currentHousingInteractions.origin_offset = offset
    else
        return false,"offset out of bounds"
    end

end

function switchBenchInventory(isBench)
    if Housing.currentlyEditing == false then return false,"Not in edit mode" end
    if Housing.currentOwned[Housing.currentlyEditing] == nil then return false, "you do not own this property" end
    if RPC.execute("property:checkedSwapped",Housing.currentlyEditing) then  TriggerEvent("DoLongHudText","This has been changed in the last Restart. Wait Until next restart.",2) return false, "This has been changed in the last Restart" end

    if isBench then
        local progressionData = exports["np-progression"]:GetProgression("crafting:guns")
        if progressionData == nil or progressionData < 1 then return false, "you do not have the knowledge for this" end 
    

        local invVector = Housing.currentHousingInteractions.inventory_offset

        if invVector == nil then return false, "No vector found" end

        if invVector ~= vector3(0.0,0.0,0.0) and invVector ~= nil then
            exports["np-ui"]:closeApplication("phone")
            exports["np-ui"]:showContextMenu(MenuData["crafting_check"])
        else
            placeBench(false)
        end
    else
        local benchVector = Housing.currentHousingInteractions.crafting_offset

        if benchVector == nil then return false, "No vector found" end
        if benchVector ~= vector3(0.0,0.0,0.0) and benchVector ~= nil then
            exports["np-ui"]:closeApplication("phone")
            exports["np-ui"]:showContextMenu(MenuData["inventory_check"])
        else
            setInventory()
        end
    end
end

function openFurniture()

    if Housing.currentlyEditing == false then return false,"Not in edit mode" end
    if Housing.currentOwned[Housing.currentlyEditing] == nil then return false, "you do not own this property" end
    if not Housing.currentlyInsideBuilding then return false, "you are not inside the property" end

    local propertyID = Housing.currentHousingInteractions.id
    local cat = Housing.typeInfo[Housing.info[propertyID].model].cat
    local max = Housing.max[cat]

    if max.canHaveFurniture then
        exports["np-ui"]:closeApplication("phone")
        TriggerServerEvent("CheckFurniture",Housing.currentHousingInteractions.id)
    end
end

RegisterNetEvent("np:vehicles:hasHouseGarageAccess")
AddEventHandler("np:vehicles:hasHouseGarageAccess", function(garageId, resolve)
    local canUse = false
    local propertyID = 0
    for k,v in pairs(Housing.currentKeys) do
        if "garage_"..k == garageId then
            propertyID = k
            canUse = true
            break
        end
    end

    if propertyID ~= 0 and not lockdownCheck(propertyID) then
        return false,"Property on lockdown, you cannot alter locks."
    end

    resolve(canUse)
end)

--[[
    Functions below: UI Connections
    Description: All UI connections to the property App
]]


RegisterUICallback("np-ui:getCurrentApartment", function(data, cb)
    local message = exports["np-apartments"]:getModule("func").currentApartment()
    cb({ data = message, meta = { ok = true, message = (not success and message or 'done') } })
end)
RegisterUICallback("np-ui:getApartmentTypes", function(data, cb)
    local message = RPC.execute("getApartmentInformation")
    cb({ data = message, meta = { ok = true, message = (not success and message or 'done') } })
end)
RegisterUICallback("np-ui:upgradeApartmentType", function(data, cb)
    local success, message = exports["np-apartments"]:getModule("func").upgradeApartment(data.type)
    cb({ data = message, meta = { ok = success, message = (not success and message or 'done') } })
end)

RegisterUICallback("np-ui:getProperties", function(data, cb)
    local properties = combineIntoOneTable()
    cb({ data = properties, meta = { ok = true, message = "done" } })
end)

RegisterUICallback("np-ui:housingSetGPS", function(data, cb)
    setGps(data.name)
    cb({ data = {},  meta = { ok = true, message = "done" } })
end)

RegisterUICallback("np-ui:housingCheckCurrentLocation", function(data, cb)
    local success, message = currentLocation()
    cb({ data = message,  meta = { ok = success, message = (not success and message or 'done') } })
end)
RegisterUICallback("np-ui:housingCurrentLocationPurchase", function(data, cb)
    local success, message = buyProperty(data.name)
    cb({ data = message,  meta = { ok = success, message = (not success and message or 'done') } })
end)
RegisterUICallback("np-ui:housingSellProperty", function(data, cb)
    local success, message = sellProperty(data.name)
    cb({ data = message,  meta = { ok = success, message = (not success and message or 'done') } })
end)
RegisterUICallback("np-ui:housingEditProperty", function(data, cb)
    local success, message = enterEdit(data.name)
    cb({ data = message,  meta = { ok = success, message = (not success and message or 'done') } })
end)
RegisterUICallback("np-ui:housingEditPropertyStop", function(data, cb)
    exitEdit(true)
    cb({ data = {},  meta = { ok = true, message = "done" } })
end)
RegisterUICallback("np-ui:housingEditPropertyConfig", function(data, cb)
    if data.type == "backdoor" then
        setBackdoor()
    elseif data.type == "inventory" then
        switchBenchInventory(false)
    elseif data.type == "garage" then
        setGarage()
    elseif data.type == "char-changer" then
        setCharChanger()
    elseif data.type == "crafting" then
        switchBenchInventory(true)
    elseif data.type == "furniture" then
        openFurniture()
    end
    cb({ data = {},  meta = { ok = true, message = "done" } })
end)
RegisterUICallback("np-ui:housingToggleLock", function(data, cb)
    if data.action == "unlock" then
        unlock(data.name)
    else
        lock(data.name)
    end
    cb({ data = {},  meta = { ok = true, message = "done" } })
end)

RegisterUICallback("np-ui:housingAddKey", function(data, cb)
    local success, message = giveKey(data.name, data.state_id)
    cb({ data = message,  meta = { ok = success, message = message } })
end)
RegisterUICallback("np-ui:housingRemoveKey", function(data, cb)
    removeKey(data.name, data.state_id)
    cb({ data = {},  meta = { ok = true, message = "done" } })
end)
