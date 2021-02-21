isCop, PlayerPed, PlayerCoords, CurrentChopShop, IsNearChopShop, AlreadyNearChopShop = false

Citizen.CreateThread(function()
    TriggerServerEvent('np:chopshop:ready')

    while true do
        local idle = 500

        PlayerPed = PlayerPedId()
        PlayerCoords = GetEntityCoords(PlayerPed)

        IsNearChopShop = false

        if CurrentChopShop then
            local distance = #(CurrentChopShop - PlayerCoords)

            CurrentVehicle = GetVehiclePedIsIn(PlayerPed)
            IsInsideVehicle = CurrentVehicle ~= 0
            CurrentZone = GetNameOfZone(PlayerCoords)

            if distance <= 50 then
                IsNearChopShop = true
                idle = conditional(PreviousCoords ~= PlayerCoords, 100, 250)
            end
        end

        if IsNearChopShop and not AlreadyNearChopShop then
            AlreadyNearChopShop = true
            CreateChopShopThread()
        end

        if not IsNearChopShop and AlreadyNearChopShop then
            AlreadyNearChopShop = false
        end

        PreviousCoords = PlayerCoords

        Citizen.Wait(idle)
    end
end)

function CreateChopShopThread()
    Citizen.CreateThread(function()
        while IsNearChopShop do
            local idle = 100

            if CurrentVehicle ~= 0 then
                if isCop and GetVehicleClass(CurrentVehicle) == 18 and not IsAlertCountdownActive then
                    StartAlertCountdown(5000)
                end

                if IsTaskCompleted and not IsUsingInteractiveChopping and CurrentCollectionList and IsVehicleValid(CurrentVehicle) then
                    InteractiveChopping(CurrentVehicle)
                end
            end

            if not IsCollectionTaskActive and CurrentChopKeeper then
                local distance = #(CurrentChopKeeper.coords - PlayerCoords)

                if distance <= 5.0 then
                    Draw3DText(CurrentChopKeeper.coords.x, CurrentChopKeeper.coords.y, CurrentChopKeeper.coords.z, "Press ~w~~g~[E]~w~ to Get Chop List")

                    if distance <= 1.8 and IsControlJustReleased(0, 38) then
                        TriggerServerEvent("np:chop:collection:request")
                    end
                end

                idle = 0
            end

            Citizen.Wait(idle)
        end
    end)
end

function StartAlertCountdown(time)
    IsAlertCountdownActive = true

    Citizen.SetTimeout(time, function()
        if IsNearChopShop then
            TriggerServerEvent("np:chop:location:relocate")
        end

        IsAlertCountdownActive = false
    end)
end

RegisterNetEvent("np:chop:location:set")
AddEventHandler("np:chop:location:set", function(coords, keeper)
    CurrentChopShop, CurrentChopKeeper = coords, keeper

    UpdateNPCPosition(CurrentChopKeeper)

    if ChopNPC then
        exports["np-npcs"]:EnableNPC(ChopNPC.id)
    end
end)

RegisterNetEvent("np:chop:location:closed")
AddEventHandler("np:chop:location:closed", function ()
    CurrentChopShop = nil

    if IsCollectionTaskActive or CurrentCollectionList then
        CurrentCollectionList = nil
        IsCollectionTaskActive = false
        SendChopEmail("shop-cops")
    end

    if ChopNPC then
        exports["np-npcs"]:DisableNPC(ChopNPC.id)
    end
end)

RegisterNetEvent('nowCopSpawn')
AddEventHandler('nowCopSpawn', function()
    isCop = true
end)

RegisterNetEvent('nowCopSpawnOff')
AddEventHandler('nowCopSpawnOff', function()
    isCop = false
end)

TriggerServerEvent("np:chop:location:fetch")