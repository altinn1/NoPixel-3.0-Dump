local insideVU, listening = false, 0
local curPaycheck = 0
local vuRank = nil

Citizen.CreateThread(function()
	local vu = exports["np-polyzone"]:AddPolyZone("vanilla_unicorn", {
		vector2(90.151443481445, -1290.5842285156),
		vector2(99.329360961914, -1283.6525878906),
		vector2(132.82504272461, -1276.8958740234),
		vector2(141.96463012695, -1290.7845458984),
		vector2(114.44309997559, -1306.5148925781),
		vector2(114.71855163574, -1308.8446044922),
		vector2(106.34483337402, -1314.2183837891)
	}, {
		gridDivisions = 25
	})
end)

local ticks = 0
local nextTicksCount = math.random(12, 18)

Citizen.CreateThread(function()
	while true do
		Wait(500)
		if insideVU then
			local isEntertainer = (DecorGetInt(PlayerPedId(), "CurrentJob") == 7 and true or false)
			if isEntertainer then
				local playersAround = 0
				for index, value in ipairs(GetActivePlayers()) do
					local curPed = GetPlayerPed(value)
					if exports['np-flags']:HasPedFlag(curPed, 'isInsideVanillaUnicorn') and DecorGetInt(curPed, "CurrentJob") ~= 7  then
						playersAround = playersAround + 1
					end
				end
				curPaycheck = curPaycheck + (playersAround == 0 and 1.0 or math.min((playersAround / 0.8), 2.5))
				if curPaycheck >= 96.0 then
					TriggerServerEvent("server:givepayJob", "Entertainer Payment", math.floor(curPaycheck))
					curPaycheck = 0
				end
				playersAround = 0
				ticks = -1
			else
				if ticks == nextTicksCount then -- a tick is 10000ms, so, every 120000ms do this
					local entertainersAround = 0
					for index, value in ipairs(GetActivePlayers()) do
						local curPed = GetPlayerPed(value)
						if exports['np-flags']:HasPedFlag(curPed, 'isInsideVanillaUnicorn') and DecorGetInt(curPed, "CurrentJob") == 7  then
							entertainersAround = entertainersAround + 1
						end
					end
					if entertainersAround > 0 then
						local payment = math.random(10,110)
						if exports["np-inventory"]:hasEnoughOfItem("markedbills",20,false) then
							TriggerEvent("inventory:removeItem","markedbills", 20)
							payment = payment + (250 * 20) -- $5k / $250 per
						elseif exports["np-inventory"]:hasEnoughOfItem("rollcash",5,false) then
							TriggerEvent("inventory:removeItem","rollcash", 5)
							payment = payment + (30 * 5) -- $150 / $30 per
						elseif exports["np-inventory"]:hasEnoughOfItem("band",5,false) then
							TriggerEvent("inventory:removeItem","band", 5)
							payment = payment + (300 * 5) -- $1500, / $300 per
						else
							payment = 0
						end
						if payment ~= 0 then
							TriggerServerEvent("server:GroupPayment", "strip_club", (payment / 100 * math.random(5,10)))
							TriggerServerEvent('complete:job',payment)
						end
						TriggerEvent("client:newStress", false, math.random(100,250))
					end
					entertainersAround = 0
					ticks = -1
					nextTicksCount = math.random(12, 18)
				end
			end
			ticks = ticks + 1
			vuRank = exports["isPed"]:GroupRank("strip_club")
			Citizen.Wait(10000)
		end
	end
end)

local nextSmokeAllowed = GetCloudTimeAsInt()
RegisterNetEvent('np-stripclub:smokemachine')
AddEventHandler('np-stripclub:smokemachine', function(pArgs, pEntity, pContext)
	if GetCloudTimeAsInt() > nextSmokeAllowed then
		nextSmokeAllowed = GetCloudTimeAsInt() + 15
		TriggerServerEvent("fx:smoke", "scr_ba_club", "scr_ba_club_smoke_machine", vector3(104.36, -1296.02, 28.46), vector3(0.0, 0.0, 50.0), 15000, { r = 255.0, g = 255.0, b = 255.0 }, true)
		TriggerServerEvent("fx:smoke", "scr_ba_club", "scr_ba_club_smoke_machine", vector3(100.86, -1289.84, 28.46), vector3(0.0, 0.0, 00.0), 15000, { r = 255.0, g = 255.0, b = 255.0 }, true)
	end
end)

AddEventHandler("np-polyzone:enter", function(zone, data)
	if zone == "vanilla_unicorn" then
		insideVU = true
		exports['np-flags']:SetPedFlag(PlayerPedId(), 'isInsideVanillaUnicorn', true)
	end
end)

AddEventHandler("np-polyzone:exit", function(zone)
	if zone == "vanilla_unicorn" then 
		insideVU = false
		exports['np-flags']:SetPedFlag(PlayerPedId(), 'isInsideVanillaUnicorn', false)
	end
end)
