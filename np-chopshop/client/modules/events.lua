RPC.register('GetAvailableVehicles', function ()
    return GenerateVehicleList(GetVehicles())
end)