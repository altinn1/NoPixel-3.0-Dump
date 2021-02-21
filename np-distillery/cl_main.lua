local currentStand = nil
local currentPosition = GetEntityCoords(PlayerPedId())
local drawMarker = false
local isWithinShop = false
local isNearDistillery = false
local isNearDistilleryDrawText = false
local distilleryStatus = nil
local distilleryLocation = vector3(0, 0, 0)
local HeadBone = 0x796e
-- local distilleryObject = nil
local awaitingResponse = false

RegisterNetEvent("distillery:setFruitLocation")
AddEventHandler("distillery:setFruitLocation", function(pLocation)
	currentStand = pLocation
end)

RegisterNetEvent("distillery:setDistilleryLocation")
AddEventHandler("distillery:setDistilleryLocation", function(pLocation)
	if pLocation ~= nil and distilleryLocation ~= pLocation then
		distilleryLocation = pLocation
	end
end)

RegisterNetEvent("distillery:updateDistilleryProgress")
AddEventHandler("distillery:updateDistilleryProgress", function(pStatus)
	distilleryStatus = pStatus
	awaitingResponse = false
end)

Citizen.CreateThread(function()
	local tavernLoc = PolyZone:Create({
		vector2(1224.5, -419.92),
		vector2(1228.07, -420.87),
		vector2(1227.49, -423.04),
		vector2(1223.91, -422.08)
	}, {
		name = "tavern",
		debugGrid = false,
		gridDivisions = 5,
		minZ = 59.0,
		maxZ = 69.0,
	})

	while true do
		local plyPed = PlayerPedId()
		currentPosition = GetPedBoneCoords(plyPed, HeadBone)
		local inPoly = tavernLoc:isPointInside(currentPosition)
		if inPoly and not isNearDistillery then
			isNearDistillery = true
			TriggerServerEvent("distillery:requestUpdate")
		elseif not inPoly and isNearDistillery then
			isNearDistillery = false
		end
		Citizen.Wait(500)
	end
end)


local function stageProcess(pActionText, pTaskTime, pTaskText, pServerEvent, pCanExplode)
	DrawText3Ds(distilleryLocation.x, distilleryLocation.y, distilleryLocation.z + 1.2, pActionText)
	if IsControlJustReleased(1, 38) then
		TriggerEvent("animation:PlayAnimation","layspike")
		local finished = exports["np-taskbar"]:taskBar(pTaskTime, pTaskText, false, false, nil)
		ClearPedSecondaryTask(PlayerPedId())
		if (finished == 100) then
			if pCanExplode then --and (math.random() > 0.6) then
				AddExplosion(distilleryLocation, 7, 15.0, true, false, true, false)
				local streetName, crossingRoad = GetStreetNameAtCoord(distilleryLocation.x, distilleryLocation.y, distilleryLocation.z)
				TriggerServerEvent('dispatch:svNotify', {
					dispatchCode = "10-70",
					firstStreet = GetStreetNameFromHashKey(streetName),
					secondStreet = GetStreetNameFromHashKey(crossingRoad),
					origin = {
						x = distilleryLocation.x,
						y = distilleryLocation.y,
						z = distilleryLocation.z
					}
				})
			end
			awaitingResponse = true
			TriggerServerEvent(pServerEvent)
		end
	end
end

Citizen.CreateThread(function()
	while true do
		if currentStand ~= nil then
			if drawMarker then
				DrawMarker(27, currentStand.x, currentStand.y, currentStand.z + 0.10, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, 0, 25, 165, 165, 0,0, 0,0)
			end
			if isWithinShop then
				DrawText3Ds(currentStand.x, currentStand.y, currentStand.z + 1.0, "Press ~r~[E]~w~ to buy fruit and vegetables")
				if IsControlJustReleased(1,38) then
					TriggerEvent("server-inventory-open", "32", "Shop");
				end
			end
			if isNearDistillery and distilleryStatus then
				DrawText3Ds(distilleryLocation.x, distilleryLocation.y, distilleryLocation.z + 1.0,
					(distilleryStatus.stage.ruined and 'Ruined' or stages[distilleryStatus.stage.current].name))
				if distilleryStatus.stage.current == 0 then
					DrawText3Ds(distilleryLocation.x, distilleryLocation.y, distilleryLocation.z + 1.1, "Fruit " .. distilleryStatus.mash.fruit.count .. " | Potato " .. distilleryStatus.mash.potato.count .." | Grain " .. distilleryStatus.mash.grain.count .. " | Water " ..  distilleryStatus.mash.water.count)
					DrawText3Ds(distilleryLocation.x, distilleryLocation.y, distilleryLocation.z + 0.8, "Press ~r~[E]~w~ to add ingredients")
					if IsControlJustReleased(1, 38) and #(distilleryLocation - GetEntityCoords(PlayerPedId())) < 1.6 then
						TriggerEvent("animation:PlayAnimation","layspike")
						Wait(1000)
						for _, mashType in pairs(distilleryStatus.mash) do
							if mashType.count < batchRequirements[_].count then
								if batchRequirements[_].validIngredient ~= nil then
									if exports["np-inventory"]:hasEnoughOfItem(batchRequirements[_].validIngredient,1,false) then
										TriggerServerEvent("distillery:addIngredient", _)
										TriggerEvent("inventory:removeItem", batchRequirements[_].validIngredient, 1)
										break
									end
								else
									if batchRequirements[_].validIngredients ~= nil then
										local shouldBreak = false
										for  __, validIngredient in pairs(batchRequirements[_].validIngredients) do
											if exports["np-inventory"]:hasEnoughOfItem(validIngredient,1,false) then
												TriggerServerEvent("distillery:addIngredient", _)
												TriggerEvent("inventory:removeItem", validIngredient, 1)
												shouldBreak = true
												break
											end
										end
										if shouldBreak then break end
									end
								end
							end
						end
					end
				elseif distilleryStatus.stage.current == 1 and not awaitingResponse then
					if distilleryStatus.stage.ruined then
						stageProcess("Press ~r~[E]~w~ clean out the ruined mash", 15000, "Cleaning out the ruined mash", "distillery:reset")
					elseif not distilleryStatus.stage.ruined and distilleryStatus.stage.readyForNextStage then
						stageProcess("Press ~r~[E]~w~ to start brewing", 3000, "Starting the brewing process", "distillery:nextStage")
					end
				elseif distilleryStatus.stage.current == 2 and not awaitingResponse then
					if distilleryStatus.stage.ruined then
						stageProcess("Press ~r~[E]~w~ to pour out the ruined brew", 15000, "Pouring out the ruined brew", "distillery:reset")
					elseif not distilleryStatus.stage.ruined and distilleryStatus.stage.readyForNextStage then
						stageProcess("Press ~r~[E]~w~ to start distilling", 3000, "Starting the distilling process", "distillery:nextStage")
					end
				elseif distilleryStatus.stage.current == 3 and not awaitingResponse then
					if distilleryStatus.stage.ruined then
						stageProcess("Press ~r~[E]~w~ to let out the alcohol vapor", 15000, "Emitting alcohol vapor", "distillery:reset", true)
					elseif not distilleryStatus.stage.ruined and distilleryStatus.stage.readyForNextStage then
						stageProcess("Press ~r~[E]~w~ to start bottling", 3000, "Starting the bottling process", "distillery:nextStage")
					end
				elseif distilleryStatus.stage.current == 4 then
					if not distilleryStatus.stage.ruined and not awaitingResponse then
						DrawText3Ds(distilleryLocation.x, distilleryLocation.y, distilleryLocation.z + 1.2, "Press ~r~[E]~w~ to start bottling")
						if IsControlJustReleased(1, 38) then
							if exports["np-inventory"]:hasEnoughOfItem("glass",1,false) then
								TriggerEvent("animation:PlayAnimation","layspike")
								local finished = exports["np-taskbar"]:taskBar(1000, "Bottling moonshine", false, false, nil)
								ClearPedSecondaryTask(PlayerPedId())
								if (finished == 100) then
									awaitingResponse = true
									TriggerServerEvent("distillery:bottling")
									TriggerEvent("inventory:removeItem", "glass", 1)
									TriggerEvent("player:receiveItem", "moonshine", 1)
								end
							else
								TriggerEvent('DoLongHudText',"You do not have any glass to bottle it with.", 101)
							end
						end
					elseif not awaitingResponse then
						stageProcess("Press ~r~[E]~w~ to pour out the ruined alcohol", 15000, "Pouring out the alcohol, shame 🔔", "distillery:reset")
					end
				end
			end
			Wait(0)
		else
			Wait(5000)
		end
	end
end)

-- Slow Thread
Citizen.CreateThread(function()
	TriggerServerEvent("distillery:getDistilleryLocation")
	Wait(1500)
	while true do
		for _, stand in pairs(fruitStandLocations) do
			local distanceDiff = #(stand - currentPosition)
			if distanceDiff < 5.0 then
				drawMarker = true
				if stand == currentStand and distanceDiff < 2.0 then
					isWithinShop = true
				end
				break
			else
				isWithinShop = false
				drawMarker = false
			end
		end
		Wait(2000)
	end
end)


function DrawText3Ds(x,y,z, text)
	local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	local px,py,pz=table.unpack(GetGameplayCamCoords())
	SetTextScale(0.35, 0.35)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text)) / 370
	DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end

AddEventHandler("onResourceStop", function(resource)
	if resource == GetCurrentResourceName() then
		-- if distilleryObject ~= nil then
		-- 	DeleteObject(distilleryObject)
		-- 	distilleryObject = nil
		-- end
	end
end)
