RegisterCommand("chop", function ()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), true)

    if DoesEntityExist(vehicle) then
        InteractiveChopping(vehicle)
    else
        print("Vehicle not found")
    end
end, false)