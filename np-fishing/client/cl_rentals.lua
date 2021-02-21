local boatsValeted = 0

function rentBoat()
    boatsValeted = boatsValeted + 1
    FreezeEntityPosition(PlayerPedId(), true)
    local finished = exports["np-taskbar"]:taskBar(30000, "Valeting Boat")
    FreezeEntityPosition(PlayerPedId(), false)
    if finished ~= 100 then
        return
    end
    DoScreenFadeOut(200)
    local model = "suntrap"
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end
    SetModelAsNoLongerNeeded(model)

    local veh = CreateVehicle(model, vector4(-814.48, -1504.66, -0.47, 109.29), true, false)

    local vehplate = "BOA"..math.random(10000, 99999) 
    SetVehicleNumberPlateText(veh, vehplate)
    Citizen.Wait(100)
    TriggerEvent("keys:addNew", veh, vehplate)
    SetModelAsNoLongerNeeded(model)
    TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)

    DoScreenFadeIn(2000)
end

AddEventHandler("np-fishing:rentBoat", function(name)
    rentBoat()
end)

