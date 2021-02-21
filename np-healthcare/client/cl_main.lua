CreateThread(function()
	-- Checkin, pillbox
	exports["np-polyzone"]:AddCircleZone("pillbox_checkin", vector3(306.9, -595.03, 43.28), 0.4, {
		useZ=true,
	})
	-- Armory, pillbox
	exports["np-polyzone"]:AddCircleZone("pillbox_armory", vector3(306.28, -601.58, 43.28), 0.4, {
		useZ=true,
	})

	-- Clothing / Personal Lockers, Staff room, pillbox
	exports["np-polyzone"]:AddBoxZone("pillbox_clothing_lockers_staff", vector3(300.28, -598.83, 43.28), 3.2, 4.2, {
		heading=340,
		minZ=42.28,
		maxZ=45.68
	})
	-- Character Switcher, Staff room, pillbox
	exports["np-polyzone"]:AddBoxZone("pillbox_character_switcher_staff", vector3(296.16, -598.31, 43.28), 2.4, 1.2, {
		heading=250,
		minZ=42.28,
		maxZ=45.68
	})
	-- Character Switcher, Backroom pillbox
	exports["np-polyzone"]:AddBoxZone("pillbox_character_switcher_backroom", vector3(340.82, -596.46, 43.28), 2.4, 1.2, {
		heading=160,
		minZ=42.28,
		maxZ=45.68
	})
	-- Character Switcher, Morgue
	exports["np-polyzone"]:AddBoxZone("morgue_character_switcher_backroom", vector3(296.61, -1352.36, 24.53), 1.8, 2.0, {
		heading=50,
		minZ=23.53,
		maxZ=26.53
	})
	-- Character Switcher, Parsons
	exports["np-polyzone"]:AddBoxZone("parsons_character_switcher_backroom", vector3(-1501.62, 857.45, 181.59), 1.8, 2.0, {
		heading=25,
		minZ=180.59,
		maxZ=184.59
	})
end)