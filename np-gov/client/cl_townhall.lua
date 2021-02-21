local isDoc = false
local isPolice = false
local isMedic = false
local isJudge = false

Citizen.CreateThread(function()
  exports["np-polyzone"]:AddBoxZone("voting_zone", vector3(-560.24, -206.62, 38.22), 6.0, 1.2, { heading=120, minZ=37.17, maxZ=39.77 })
  exports["np-polyzone"]:AddBoxZone("townhall_court_detector", vector3(-534.99, -184.95, 37.74), 4.0, 3.1, { minZ=37.25, maxZ=41.4, heading=30})
  exports["np-polyzone"]:AddBoxZone("townhall_court_detector", vector3(-535.68, -185.41, 42.76), 4.0, 4.2, { minZ=41.8, maxZ=45.9, heading=30})
  exports["np-polyzone"]:AddBoxZone("townhall_court_item_return", vector3(-550.43, -192.51, 38.22), 0.8, 2.0, { minZ=37.25, maxZ=39.4, heading=33 })
  exports["np-polyzone"]:AddBoxZone("townhall_court_detector_second", vector3(-533.09, -183.46, 38.22), 21.4, 1.8, { minZ=37.25, maxZ=41.4, heading=30})
  exports["np-polyzone"]:AddBoxZone("townhall_court_lobby", vector3(-550.96, -193.94, 38.22), 22.2, 22.0, { minZ=37.17, maxZ=50.57, heading=30 })
  exports["np-polyzone"]:AddCircleZone("townhall_court_public_records", vector3(-552.96, -194.14, 38.22), 0.6, { useZ=true })
  exports["np-polyzone"]:AddCircleZone("townhall_court_property_listing", vector3(-551.88, -193.58, 38.22), 0.6, { useZ=true })
  exports["np-polytarget"]:AddBoxZone("townhall:gavel", vector3(-519.18, -175.6, 38.55), 0.2, 0.45, { heading=15, minZ=38.45, maxZ=38.6 })
end)

local listening = 0
local function listenForKeypress(listenCounter, pEvent)
    Citizen.CreateThread(function()
        while listening == listenCounter do
            if IsControlJustReleased(0, 38) then
              if pEvent == "voting_zone" then
                exports["np-ui"]:openApplication("ballot")
              elseif pEvent == "townhall_court_item_return" then
                local success = RPC.execute("MetalDetectorItems", false)
              elseif pEvent == "townhall_court_public_records" then
                TriggerEvent("np-ui:openMDW", { publicApp = true })
              -- elseif pEvent == "townhall_court_property_listing" then
              --   TriggerEvent("houses:PropertyListing")
              end
              exports["np-ui"]:hideInteraction()
            end
            Wait(0)
        end
    end)
end

local function isExempt()
  return isJudge or isMedic or isDoc or isPolice
end

AddEventHandler("np-polyzone:enter", function(zone)
  if zone == "voting_zone" then
    exports["np-ui"]:showInteraction("[E] Vote")
    listenForKeypress(listening, zone)
  elseif (zone == "townhall_court_detector" or zone == "townhall_court_detector_second") and not isExempt() then
    if zone == "townhall_court_detector" then
      TriggerEvent("chatMessage", "SYSTEM ", 2, "Your items have been stored, you can pick them up at the front desk.")
      TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 3.0, 'metaldetector', 0.05)
    end
    local success = RPC.execute("MetalDetectorItems", true)
    exports["np-taskbar"]:taskbarDisableInventory(true)
    TriggerEvent("animation:carry","none")
    if IsPedArmed(PlayerPedId(), 7) then
      SetCurrentPedWeapon(PlayerPedId(), 0xA2719263, true)
      SetCurrentPedVehicleWeapon(PlayerPedId(), 0xA2719263)
    end
  elseif zone == "townhall_court_item_return" then
    exports["np-ui"]:showInteraction("[E] To get your items back")
    listenForKeypress(listening, zone)
  elseif zone == "townhall_court_lobby" then
    local currentVehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if currentVehicle ~= 0 and not IsVehicleModel(currentVehicle, `npwheelchair`) then
      SetEntityAsMissionEntity(currentVehicle, true, true)
      DeleteVehicle(currentVehicle)
    end
  elseif zone == "townhall_court_public_records" then
    exports["np-ui"]:showInteraction("[E] To view public records")
    listenForKeypress(listening, zone)
  -- elseif zone == "townhall_court_property_listing" then
  --   exports["np-ui"]:showInteraction("[E] To view property listings")
  --   listenForKeypress(listening, zone)
  end
end)

AddEventHandler("np-polyzone:exit", function(zone)
  if zone == "voting_zone" or zone == "townhall_court_item_return" or zone == "townhall_court_public_records" or zone == "townhall_court_property_listing" then
    exports["np-ui"]:hideInteraction()
    listening = listening + 1
  elseif zone == "townhall_court_detector" or zone == "townhall_court_detector_second" and not isExempt() then
    exports["np-taskbar"]:taskbarDisableInventory(false)
    listening = listening + 1
  end
end)

RegisterNetEvent("np-jobmanager:playerBecameJob")
AddEventHandler("np-jobmanager:playerBecameJob", function(job, name, notify)
    if isMedic and job ~= "ems" then isMedic = false end
    if isPolice and job ~= "police" then isPolice = false end
    if isDoc and job ~= "doc" then isDoc = false end
    if isJudge and job ~= "judge" then isJudge = false end
    if job == "police" then isPolice = true end
    if job == "ems" then isMedic = true end
    if job == "doc" then isDoc = true end
end)

RegisterNetEvent("isJudge")
AddEventHandler("isJudge", function()
  isJudge = true
end)

RegisterNetEvent("isJudgeOff")
AddEventHandler("isJudgeOff", function()
  isJudge = false
end)

RegisterNetEvent("np-gov:gavel")
AddEventHandler("np-gov:gavel", function(pArgs, pEntity, pContext)
  TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 20.0, 'gavel_3hit_mixdown', 1.0)
end)
