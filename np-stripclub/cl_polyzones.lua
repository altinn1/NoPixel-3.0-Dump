local Zones = {
    { 
        id = "bar:grabDrink", 
        center = vector3(127.39, -1282.16, 29.27), 
        width = 0.95, 
        height = 0.85, 
        options = { heading = 300, minZ = 29.27, maxZ = 29.47, data = { name = 'vu_bar_1' } }
    },
    { 
        id = "bar:grabDrink", 
        center = vector3(128.2, -1283.59, 29.27), 
        width = 0.95, 
        height = 0.85, 
        options = { heading = 300, minZ = 29.27, maxZ = 29.47, data = { name = 'vu_bar_2' } }
    },
    { 
        id = "bar:grabDrink", 
        center = vector3(128.88, -1284.78, 29.27), 
        width = 0.95, 
        height = 0.85, 
        options = { heading = 300, minZ = 29.27, maxZ = 29.47, data = { name = 'vu_bar_3' } }
    },
    { 
        id = "bar:grabDrink", 
        center = vector3(129.56, -1285.89, 29.27), 
        width = 0.95, 
        height = 0.85, 
        options = { heading = 300, minZ = 29.27, maxZ = 29.47, data = { name = 'vu_bar_4' } }
    },
    { 
        id = "bar:grabDrink", 
        center = vector3(130.07, -1287.27, 29.27), 
        width = 0.55, 
        height = 1.25, 
        options = { heading = 300, minZ = 29.27, maxZ = 29.47, data = { name = 'vu_bar_5' } }
    },
    { 
        id = "bar:grabDrink", 
        center = vector3(117.5, -1283.03, 28.26), 
        width = 1.5, 
        height = 1.5, 
        options = { heading = 346, minZ = 27.26, maxZ = 28.36, data = { name = 'vu_bar_6' } }
    },
    { 
        id = "bar:grabDrink", 
        center = vector3(115.87, -1286.81, 28.88), 
        width = 1.5, 
        height = 1.5, 
        options = { heading = 346, minZ = 27.26, maxZ = 28.36, data = { name = 'vu_bar_7' } }
    },
    { 
        id = "bar:grabDrink", 
        center = vector3(112.78, -1283.14, 28.88), 
        width = 1.5, 
        height = 1.5, 
        options = {  heading = 346, minZ = 27.26, maxZ = 28.36, data = { name = 'vu_bar_8' } }
    },
    { 
        id = "bar:grabDrink", 
        center = vector3(120.96, -1285.2, 28.26), 
        width = 0.8, 
        height = 1.05, 
        options = { heading = 30, minZ = 27.26, maxZ = 28.06, data = { name = 'vu_bar_9' } }
    },
    { 
        id = "bar:grabDrink", 
        center = vector3(122.0, -1287.05, 28.26), 
        width = 0.8, 
        height = 1.05, 
        options = { heading = 30, minZ = 27.16, maxZ = 28.06, data = { name = 'vu_bar_10' } }
    },
    { 
        id = "bar:grabDrink", 
        center = vector3(116.51, -1291.33, 28.26), 
        width = 0.8, 
        height = 1.1, 
        options = { heading = 306, minZ = 27.16, maxZ = 28.06, data = { name = 'vu_bar_11' } }
    },
    { 
        id = "bar:grabDrink", 
        center = vector3(123.37, -1294.85, 29.27), 
        width = 0.8, 
        height = 1.1, 
        options = { heading = 298, minZ = 28.17, maxZ = 28.97, data = { name = 'vu_bar_12' } }
    },
    { 
        id = "bar:grabDrink", 
        center = vector3(119.98, -1296.78, 29.27), 
        width = 0.8, 
        height = 1.1, 
        options = { heading = 303, minZ = 28.17, maxZ = 28.97, data = { name = 'vu_bar_13' } }
    },
    { 
        id = "bar:grabDrink", 
        center = vector3(113.35, -1303.07, 29.89), 
        width = 1.5, 
        height = 1.5, 
        options = { heading = 35, minZ = 27.64, maxZ = 29.24, data = { name = 'vu_bar_14' } }
    },
    { 
        id = "bar:grabDrink", 
        center = vector3(114.65, -1305.58, 29.29), 
        width = 0.8, 
        height = 1.1, 
        options = { heading = 30, minZ = 25.99, maxZ = 28.99, data = { name = 'vu_bar_15' } }
    },
    { 
        id = "bar:grabDrink", 
        center = vector3(125.83, -1286.79, 29.27), 
        width = 0.8, 
        height = 1.1, 
        options = { heading = 35, minZ = 28.87, maxZ = 29.67, data = { name = 'vu_bar_16' } }
    },
    { 
        id = "bar:grabDrink", 
        center = vector3(124.25, -1284.04, 29.27), 
        width = 0.8, 
        height = 0.8, 
        options = { heading = 35, minZ = 28.87, maxZ = 29.67, data = { name = 'vu_bar_17' } }
    },
    { 
        id = "bar:openFridge",
        center = vector3(129.95, -1280.39, 29.27), 
        width = 0.95, 
        height = 2.2, 
        options = { heading = 300, minZ = 29.27, maxZ = 29.47, data = { name = 'vu_fridge_1' } }
    }
}

Citizen.CreateThread(function()
    for _, zone in ipairs(Zones) do
        exports["np-polytarget"]:AddBoxZone(zone.id, zone.center, zone.width, zone.height, zone.options)
    end
end)

AddEventHandler('np-stripclub:peekAction', function(pArgs, pEntity, pContext)
	if not pArgs.action then return end

	local zoneName = ('bar:%s'):format(pArgs.action)

	local data = pContext.zones[zoneName]

	if pArgs.action == 'grabDrink' then
		TriggerEvent("server-inventory-open", "1", data.name)
	elseif pArgs.action then
		TriggerEvent("server-inventory-open", "31", "Craft");
	end
end)