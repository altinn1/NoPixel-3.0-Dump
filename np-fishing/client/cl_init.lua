Citizen.CreateThread(function()
    exports["np-polyzone"]:AddBoxZone("rentafish", vector3(-805.61, -1496.64, 1.6), 3.6, 4, {
        heading=20,
        minZ=0.4,
        maxZ=4.4,
    })

    exports["np-polyzone"]:AddCircleZone("fishsales", vector3(-1847.29, -1191.02, 14.32), 1.5, {
        useZ = true,
    })
end)
