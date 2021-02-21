IsCollectionTaskActive, IsTaskCompleted = false, false

function GetVehicles()
    local success, vehicles = false, {}

    local handle, vehicle = FindFirstVehicle()

    repeat
        vehicles[#vehicles + 1] = vehicle

        success, vehicle = FindNextVehicle(handle)
    until not success

    EndFindVehicle(handle)

    return vehicles
end

function IsVehicleModelWanted(modelHash)
    local wanted = false

    for _, element in ipairs(CurrentCollectionList) do
        if element.model == modelHash and not element.resolved then
            wanted = true
            break
        end
    end

    return wanted
end

function IsVehicleValid(vehicle)
    local modelHash, wanted = GetEntityModel(vehicle), false

    if modelHash then
        wanted = IsVehicleModelWanted(modelHash)
    end

    return wanted
end

function MarkVehicleAsResolved(modelHash)
    for _, element in ipairs(CurrentCollectionList) do
        if element.model == modelHash then
            element.resolved = true
            break
        end
    end
end

function GenerateVehicleList(vehicles)
    local list, added = {}, {}

    local currentModel = GetEntityModel(CurrentVehicle)

    for _, vehicle in ipairs(vehicles) do
        local vin = GetVehicleIdentifier(vehicle)

        if not vin then
            local vehicleModel = GetEntityModel(vehicle)

            if not added[vehicleModel] and vehicleModel ~= currentModel then
                list[#list + 1] = {
                    model = vehicleModel,
                    name = GetDisplayNameFromVehicleModel(vehicleModel),
                    class = GetVehicleClassFromName(vehicleModel)
                }
                added[vehicleModel] = true
            end
        end
    end

    return list
end

function StartCollectionThread(zoneID)
    if IsCollectionTaskActive then return end

    Citizen.CreateThread(function()
        IsCollectionTaskActive = true

        while IsCollectionTaskActive do
            local idle = 1000

            if not IsTaskCompleted and CurrentZone == zoneID and Throttled("collection:zone", 3000) then
                local vehicles = GenerateVehicleList(GetVehicles())

                if #vehicles > 5 then
                    IsTaskCompleted = true
                    TriggerServerEvent("np:chop:collection:list:request", vehicles)
                end
            end

            Citizen.Wait(idle)
        end
    end)
end

function CraftVehicleListMessage(vehicles)
    local list = ""

    for _, vehicle in ipairs(vehicles) do
        local name = conditional(vehicle.rarity == 15, GetLabelText(vehicle.name) .. " (Priority)", GetLabelText(vehicle.name))

        list = list .. ("%s \n\n"):format(name)
    end

    return list
end

RegisterNetEvent("np:chop:collection:zone:set")
AddEventHandler("np:chop:collection:zone:set", function (zoneID, next)
    local zoneName = GetLabelText(zoneID)
    local subject = "collect-zone"

    if next then
        subject = "collect-next"
    end

    if zoneName == 'NULL' then
        print('[CHOP] WTF IS THIS NULL BS', zoneID)
    end

    SendChopEmail(subject, zoneName)

    StartCollectionThread(zoneID)
end)

RegisterNetEvent("np:chop:collection:list:set")
AddEventHandler("np:chop:collection:list:set", function(list, time)
    local vehicleList = CraftVehicleListMessage(list)

    SendChopEmail("collect-list", vehicleList, time)

    CurrentCollectionList, CurrentCollectionTimer = list, time
end)

RegisterNetEvent("np:chop:collection:vehicle:resolved")
AddEventHandler("np:chop:collection:vehicle:resolved", function(vehicleModel)
    if IsCollectionTaskActive and IsVehicleModelWanted(vehicleModel) then
        local vehicleName = GetLabelText(GetDisplayNameFromVehicleModel(vehicleModel))

        MarkVehicleAsResolved(vehicleModel)

        SendChopEmail("collect-resolved", vehicleName)
    end
end)

RegisterNetEvent("np:chop:collection:completed")
AddEventHandler("np:chop:collection:completed", function ()
    CurrentCollectionList = nil
    IsCollectionTaskActive = false
    IsTaskCompleted = false

    Citizen.Wait(2000)

    TriggerServerEvent("np:chop:collection:request", true)
end)

RegisterNetEvent("np:chop:collection:list:data:req")
AddEventHandler("np:chop:collection:list:data:req", function(data)
    local vehicles = {}

    for _, netID in ipairs(data) do
        local vehicle = NetToVeh(netID)

        if DoesEntityExist(vehicle) then
            vehicles[#vehicles + 1] = vehicle
        end
    end

    local list = GenerateVehicleList(vehicles)

    TriggerServerEvent("np:chop:collection:list:data:res", list)
end)