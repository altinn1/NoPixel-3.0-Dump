local isTriageEnabled = false
local currentPrompt, isExercising = nil, false

local EVENTS = {
  LOCKERS = 1,
  CLOTHING = 2,
  SWITCHER = 3
}


RegisterNetEvent("np-healthcare:yoga")
AddEventHandler("np-healthcare:yoga", function(pArgs, pEntity, pContext)
	TaskTurnPedToFaceEntity(PlayerPedId(), pEntity, -1)
	Wait(50)
	local animation = AnimationTask:new(PlayerPedId(), 'normal', 'Breathe in..', 30000, 'WORLD_HUMAN_YOGA', nil, nil)
	local result = animation:start()
	result:next(function (data)
		if data == 100 then
			TriggerEvent("client:newStress", false, math.ceil(450))
		else
			TriggerEvent("DoLongHudText", "You just ruined your chakra.")
		end
	end)
end)

RegisterNetEvent("np-healthcare:exercise")
AddEventHandler("np-healthcare:exercise", function(pArgs, pEntity, pContext)
	local function getExerciseAnimation(pModel)
		if pModel == `prop_weight_squat` then
			return 'WORLD_HUMAN_MUSCLE_FREE_WEIGHTS'
		elseif pModel == `prop_beach_bars_02` then
			return 'amb@prop_human_muscle_chin_ups@male@base', 'base'
		end
	end

	TaskTurnPedToFaceEntity(PlayerPedId(), pEntity, -1)
	Wait(50)
	local exerciseDict, exerciseAnim = getExerciseAnimation(pContext.model)
	local animation = AnimationTask:new(PlayerPedId(), 'normal', 'Getting buff as hell', 30000, exerciseDict, exerciseAnim, exerciseAnim and 9 or nil)
	local result = animation:start()
	result:next(function (data)
		if data == 100 then
			TriggerEvent("client:newStress", false, math.ceil(450))
		else
			TriggerEvent("DoLongHudText", "No gains for you bro")
		end
	end)
end)

AddEventHandler("playerSpawned", function()
	TriggerServerEvent('doctor:setTriageState')
end)

RegisterNetEvent("doctor:setTriageState")
AddEventHandler("doctor:setTriageState", function(pState)
	isTriageEnabled = pState
end)

RegisterUICallback("np-healthcare:handler", function(data, cb)
	local eventData = data.key
  local location = string.match(currentPrompt, "(.-)_")
	if eventData == EVENTS.LOCKERS then
		local cid = exports["isPed"]:isPed("cid")
		TriggerEvent("server-inventory-open", "1", ("personalStorage-%s-%s"):format(location, cid))
		TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 3.0, 'LockerOpen', 0.4)
	elseif eventData == EVENTS.CLOTHING then
		TriggerEvent("raid_clothes:openClothing", true, true)
	elseif eventData == EVENTS.SWITCHER then
		TransitionToBlurred(500)
		DoScreenFadeOut(500)
		Wait(1000)
		TriggerEvent("np-base:clearStates")
		exports["np-base"]:getModule("SpawnManager"):Initialize()
		Wait(1000)
	end
	cb({ data = {}, meta = { ok = true, message = "done" } })
end)

local function getDoctorsOnline()
	local doctors = RPC.execute("np-jobmanager:jobCount", "doctor")
	return doctors
end


local zoneData = {
	pillbox_checkin = {
		promptText = "[E] Checkin"
	},
	pillbox_armory = {
		promptText = "[E] Armory"
	},
	pillbox_clothing_lockers_staff = {
		promptText = "[E] Lockers & Clothes",
		menuData = {
			{
				title = "Lockers",
				description = "Access your personal locker",
				action = "np-healthcare:handler",
				key = EVENTS.LOCKERS
			},
			{
				title = "Clothing",
				description = "Gotta look Sharp",
				action = "np-healthcare:handler",
				key = EVENTS.CLOTHING
			}
		}
	},
	pillbox_character_switcher_staff = {
		promptText = "[E] Switch Character",
		menuData = {
			{
				title = "Character switch",
				description = "Go bowling with your cousin",
				action = "np-police:handler",
				key = EVENTS.SWITCHER
			}
		}
	},
	pillbox_character_switcher_backroom = {
		promptText = "[E] Switch Character",
		menuData = {
			{
				title = "Character switch",
				description = "Go bowling with your cousin",
				action = "np-police:handler",
				key = EVENTS.SWITCHER
			}
		}
	},
	morgue_character_switcher_backroom = {
		promptText = "[E] Switch Character",
		menuData = {
			{
				title = "Character switch",
				description = "Go bowling with your cousin",
				action = "np-police:handler",
				key = EVENTS.SWITCHER
			}
		}
	},
	parsons_character_switcher_backroom = {
		promptText = "[E] Switch Character",
		menuData = {
			{
				title = "Character switch",
				description = "Go bowling with your cousin",
				action = "np-police:handler",
				key = EVENTS.SWITCHER
			}
		}
	}
}

local function listenForKeypress(pZone, pDoctors)
	listening = true
	Citizen.CreateThread(function()
		while listening do
			if IsControlJustReleased(0, 38) then
				if pZone == "pillbox_clothing_lockers_staff" then
					exports["np-ui"]:showContextMenu(zoneData[pZone].menuData)
				elseif pZone == "pillbox_checkin" then
					loadAnimDict('anim@narcotics@trash')
					TaskPlayAnim(PlayerPedId(),'anim@narcotics@trash', 'drop_front',1.0, 1.0, -1, 1, 0, 0, 0, 0)
					local finished = exports["np-taskbar"]:taskBar(1700, (pDoctors > 0 and not isTriageEnabled) and "Paging a doctor" or "Checking Credentials")
					ClearPedSecondaryTask(PlayerPedId())
					if finished == 100 then
						if pDoctors > 0 and not isTriageEnabled then
							TriggerEvent("DoLongHudText","A doctor has been paged. Please take a seat and wait.",2)
							TriggerServerEvent("phone:triggerPager")
						else
							TriggerEvent("bed:checkin")
						end
					end
				elseif pZone == "pillbox_character_switcher_staff" or pZone == "pillbox_character_switcher_backroom" or pZone == "morgue_character_switcher_backroom" or pZone == "parsons_character_switcher_backroom" then
					exports["np-ui"]:showContextMenu(zoneData[pZone].menuData)
				elseif pZone == "pillbox_armory" then
					local job = exports["isPed"]:isPed("myjob")
					if job == "doctor" or job == "ems" then
						TriggerEvent("server-inventory-open", "15", "Shop")
					else
						TriggerEvent("server-inventory-open", "29", "Shop")
					end
				end
			end
			Wait(0)
		end
	end)
end

AddEventHandler("np-polyzone:enter", function(zone)
	local currentZone = zoneData[zone]
	if currentZone then --and isCop
		currentPrompt = zone
		local prompt = currentZone.promptText
		local doctors = 0

		if zone == 'pillbox_checkin' then
			doctors = getDoctorsOnline()
			prompt = (doctors > 0 and not isTriageEnabled) and '[E] Page a doctor' or prompt
		end
		exports["np-ui"]:showInteraction(prompt)
		listenForKeypress(zone, doctors)
	end
end)

AddEventHandler("np-polyzone:exit", function(zone)
	if zoneData[zone] then
		exports["np-ui"]:hideInteraction()
		listening = false
		currentPrompt = nil
	end
end)