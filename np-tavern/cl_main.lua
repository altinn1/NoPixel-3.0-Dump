local Zones = {
    {
        id = "bar:grabDrink",
        center = vector3(1231.58, -422.9, 67.77),
        width = 1.0,
        height = 3.25,
        options = { heading = 344, minZ = 66.77, maxZ = 68.17, data = { name = 'hoa_bar_1' } }
    },
    {
        id = "bar:grabDrink",
        center = vector3(1231.16, -420.22, 67.77),
        width = 1.25,
        height = 3.75,
        options = { heading = 75, minZ = 66.77, maxZ = 68.17, data = { name = 'hoa_bar_2' } }
    },
    {
        id = "bar:openFridge",
        center = vector3(1233.67, -419.68, 67.79),
        width = 0.8,
        height = 2.55,
        options = { heading = 75, minZ = 66.74, maxZ = 68.64, data = { name = 'hoa_fridge_1' } }
    }
}

Citizen.CreateThread(function()
    for _, zone in ipairs(Zones) do
        exports["np-polytarget"]:AddBoxZone(zone.id, zone.center, zone.width, zone.height, zone.options)
    end
end)

AddEventHandler('np-tavern:peekAction', function(pArgs, pEntity, pContext)
	if not pArgs.action then return end

	local zoneName = ('bar:%s'):format(pArgs.action)

	local data = pContext.zones[zoneName]

	if pArgs.action == 'grabDrink' then
		TriggerEvent("server-inventory-open", "1", data.name)
	elseif pArgs.action then
		TriggerEvent("server-inventory-open", "31", "Craft");
	end
end)