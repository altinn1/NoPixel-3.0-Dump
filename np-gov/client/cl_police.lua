RegisterNetEvent("np-gov:police:showBadge")
AddEventHandler("np-gov:police:showBadge", function(pSource, pInventoryData)
    local veh = GetVehiclePedIsIn(PlayerPedId(), false)
    local isInCar = veh ~= 0 and veh ~= nil
    if GetPlayerServerId(PlayerId()) ~= pSource then
      Citizen.CreateThread(function()
        Citizen.Wait(isInCar and 1000 or 4500)
        exports["np-ui"]:openApplication("badge", {
            name = pInventoryData.Name,
            badge = pInventoryData.Badge,
            rank = pInventoryData.Rank,
            department = pInventoryData.Department,
            image = pInventoryData.image,
        }, false)
      end)
    else
        if isInCar then return end
        TriggerEvent("attachItem", "police_badge")
        local animation = AnimationTask:new(PlayerPedId(), 'normal', nil, 9500, 'paper_1_rcm_alt1-7', 'player_one_dual-7', 63)

        local result = Citizen.Await(animation:start())
        TriggerEvent("destroyProp")
    end
end)
