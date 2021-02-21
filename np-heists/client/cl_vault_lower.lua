local keypadCoords = vector3(271.77,231.05,97.69)
local keypadHeading = 334.09
local bicBoiVaultDoorStates = nil
local cityPowerState = true

local keypadHash = 623406777
local activeKeypadId = nil
local keypadLocations = {
  {
    coords = vector3(286.8705, 227.4326, 98.27712),
    id = 1,
  },
  {
    coords = vector3(289.1876, 227.4275, 98.27712),
    id = 2,
  },
  {
    coords = vector3(286.5231, 220.1748, 98.27712),
    id = 3,
  },
  {
    coords = vector3(284.7573, 221.6077, 98.27712),
    id = 4,
  },
}

local animSettings = {
  time = 2500,
  dictionary = "anim@amb@business@meth@meth_monitoring_cooking@monitoring@",
  name = "look_around_v5_monitor",
  flag = 1,
  text = "Pressing buttons",
}

local listening = false
local function listenForKeypress(pEntity)
    listening = true
    Citizen.CreateThread(function()
        while listening do
            if IsControlJustReleased(0, 38) then
                local myActiveKeypad = activeKeypadId
                TaskTurnPedToFaceEntity(PlayerPedId(), pEntity, -1)
                Wait(1000)
                RPC.execute("np-heists:lowerVaultPressKeypad", myActiveKeypad)
                local animation = AnimationTask:new(
                  PlayerPedId(), 'normal', animSettings.text, animSettings.time, animSettings.dictionary, animSettings.name, animSettings.flag
                )
                local result = animation:start()
                result:next(function (data)
                    if data ~= 100 then
                        TriggerEvent("DoLongHudText", "Stopped?", 2)
                    end
                end)
            end
            Wait(0)
        end
    end)
end

AddEventHandler("np:target:changed", function(pEntity, pEntityType, pEntityCoords)
    if activeKeypadId then
      listening = false
      exports["np-ui"]:hideInteraction()
    end
    activeKeypadId = nil
    if pEntityType == nil or pEntityType ~= 3 then
        return
    end
    local model = GetEntityModel(pEntity)
    if model ~= keypadHash then return end
    local coords = GetEntityCoords(PlayerPedId())
    if #(coords - GetEntityCoords(pEntity)) > 1.0 then return end
    for _, v in pairs(keypadLocations) do
        if #(coords - v.coords) < 1.0 then
            activeKeypadId = v.id
        end
    end
    if not activeKeypadId then return end
    exports["np-ui"]:showInteraction("[E] Press Keypad")
    listenForKeypress(pEntity)
end)

function VaultLowerCanUsePanel()
    local playerCoords = GetEntityCoords(PlayerPedId())
    return #(playerCoords - keypadCoords) < 1.0
end

function VaultLowerUsePanel()
    local canOpen, message = RPC.execute("heists:vaultLowerDoorAttempt", activeKeypad)
    if not canOpen then
        TriggerEvent("DoLongHudText", message, 2)
        return
    end
    
    local success = Citizen.Await(UseBankPanel(keypadCoords, keypadHeading, "vault_lower"))

    if not success then
        RPC.execute("np-heists:vaultLowerPanelFail")
        return
    end

    local goldStatus = RPC.execute("heists:vaultLowerDoorOpen")
    local trolleyNames = {
        "vault_lower_cash_1",
        "vault_lower_cash_2",
        "vault_lower_cash_3",
        "vault_lower_cash_4",
    }
    Citizen.CreateThread(function()
        for _, v in pairs(trolleyNames) do
            local trolleyConfig = GetTrolleyConfig(v)
            SpawnTrolley(trolleyConfig.cashCoords, "cash", trolleyConfig.cashHeading)
        end
    end)
end

function refreshVaultDoor()
    RequestIpl("np_int_placement_ch_interior_6_dlc_casino_vault_milo_")
    local interiorid = GetInteriorAtCoords(259.2812, 203.5071, 96.77954)

    for k, s in pairs(bicBoiVaultDoorStates) do
        DisableInteriorProp(interiorid, k)
    end

    for k, s in pairs(bicBoiVaultDoorStates) do
        if s then
            EnableInteriorProp(interiorid, k)
        end
    end

    RefreshInterior(interiorid)
end

RegisterNetEvent("np-heists:swapLowerVaultIPL")
AddEventHandler("np-heists:swapLowerVaultIPL", function(state)
    bicBoiVaultDoorStates = state
    refreshVaultDoor()
end)

Citizen.CreateThread(function()
    local result = RPC.execute("np-heists:getVaultLowerState")
    bicBoiVaultDoorStates = result.doorState
    cityPowerState = result.cityPowerState
    refreshVaultDoor()
end)

RegisterNetEvent("sv-heists:cityPowerState")
AddEventHandler("sv-heists:cityPowerState", function(state)
    cityPowerState = state
end)

AddEventHandler("np-polyzone:enter", function(name)
    if name ~= "vault_lower_entrance" then return end
    RPC.execute("np-heists:lowerVaultEntranceEnter")
end)

AddEventHandler("heists:vaultLowerTrolleyGrab", function(loc, type)
    local canGrab = RPC.execute("np-heists:vaultLowerCanGrabTrolley", loc, type)
    if canGrab then
        ActivateGrabListener(false)
        Loot(type)
        ActivateGrabListener(true)
        TriggerEvent("DoLongHudText", "You discarded the counterfeit items", 1)
        RPC.execute("np-heists:payoutTrolleyGrab", loc, type)
    else
        ActivateGrabListener(true)
        TriggerEvent("DoLongHudText", "You can't do that yet...", 2)
    end
end)


-- door / screen fx stuff
-- local allScreenEffects = {
--     ["SwitchHUDIn"] = true,
--     ["SwitchHUDOut"] = true,
--     ["FocusIn"] = true,
--     ["FocusOut"] = true,
--     ["MinigameEndNeutral"] = true,
--     ["MinigameEndTrevor"] = true,
--     ["MinigameEndFranklin"] = true,
--     ["MinigameEndMichael"] = true,
--     ["MinigameTransitionOut"] = true,
--     ["MinigameTransitionIn"] = true,
--     ["SwitchShortNeutralIn"] = true,
--     ["SwitchShortFranklinIn"] = true,
--     ["SwitchShortTrevorIn"] = true,
--     ["SwitchShortMichaelIn"] = true,
--     ["SwitchOpenMichaelIn"] = true,
--     ["SwitchOpenFranklinIn"] = true,
--     ["SwitchOpenTrevorIn"] = true,
--     ["SwitchHUDMichaelOut"] = true,
--     ["SwitchHUDFranklinOut"] = true,
--     ["SwitchHUDTrevorOut"] = true,
--     ["SwitchShortFranklinMid"] = true,
--     ["SwitchShortMichaelMid"] = true,
--     ["SwitchShortTrevorMid"] = true,
--     ["DeathFailOut"] = true,
--     ["CamPushInNeutral"] = true,
--     ["CamPushInFranklin"] = true,
--     ["CamPushInMichael"] = true,
--     ["CamPushInTrevor"] = true,
--     ["SwitchOpenMichaelIn"] = true,
--     ["SwitchSceneFranklin"] = true,
--     ["SwitchSceneTrevor"] = true,
--     ["SwitchSceneMichael"] = true,
--     ["SwitchSceneNeutral"] = true,
--     ["MP_Celeb_Win"] = true,
--     ["MP_Celeb_Win_Out"] = true,
--     ["MP_Celeb_Lose"] = true,
--     ["MP_Celeb_Lose_Out"] = true,
--     ["DeathFailNeutralIn"] = true,
--     ["DeathFailMPDark"] = true,
--     ["DeathFailMPIn"] = true,
--     ["MP_Celeb_Preload_Fade"] = true,
--     ["PeyoteEndOut"] = true,
--     ["PeyoteEndIn"] = true,
--     ["PeyoteIn"] = true,
--     ["PeyoteOut"] = true,
--     ["MP_race_crash"] = true,
--     ["SuccessFranklin"] = true,
--     ["SuccessTrevor"] = true,
--     ["SuccessMichael"] = true,
--     ["DrugsMichaelAliensFightIn"] = true,
--     ["DrugsMichaelAliensFight"] = true,
--     ["DrugsMichaelAliensFightOut"] = true,
--     ["DrugsTrevorClownsFightIn"] = true,
--     ["DrugsTrevorClownsFight"] = true,
--     ["DrugsTrevorClownsFightOut"] = true,
--     ["HeistCelebPass"] = true,
--     ["HeistCelebPassBW"] = true,
--     ["HeistCelebEnd"] = true,
--     ["HeistCelebToast"] = true,
--     ["MenuMGHeistIn"] = true,
--     ["MenuMGTournamentIn"] = true,
--     ["MenuMGSelectionIn"] = true,
--     ["ChopVision"] = true,
--     ["DMT_flight_intro"] = true,
--     ["DMT_flight"] = true,
--     ["DrugsDrivingIn"] = true,
--     ["DrugsDrivingOut"] = true,
--     ["SwitchOpenNeutralFIB5"] = true,
--     ["HeistLocate"] = true,
--     ["MP_job_load"] = true,
--     ["RaceTurbo"] = true,
--     ["MP_intro_logo"] = true,
--     ["HeistTripSkipFade"] = true,
--     ["MenuMGHeistOut"] = true,
--     ["MP_corona_switch"] = true,
--     ["MenuMGSelectionTint"] = true,
--     ["SuccessNeutral"] = true,
--     ["ExplosionJosh3"] = true,
--     ["SniperOverlay"] = true,
--     ["RampageOut"] = true,
--     ["Rampage"] = true,
--     ["Dont_tazeme_bro"] = true,
--     ["DeathFailOut"] = true,
-- }

-- -- delete this stuff before prod
-- local cleanToggle = true
-- RegisterCommand("vault:swap", function(s, args)
--     if cleanToggle then
--         bicBoiVaultDoorStates = {
--             ["np_vault_broken"] = true,
--             ["np_vault_clean"] = false,
--         }
--         cleanToggle = false
--     else
--         bicBoiVaultDoorStates = {
--             ["np_vault_broken"] = false,
--             ["np_vault_clean"] = true,
--         }
--         cleanToggle = true
--     end
    
--     refreshVaultDoor()

--     if not cleanToggle and not args[1] then
        
--         DoScreenFadeOut(0)
--         Wait(32)
--         DoScreenFadeIn(1000)
--         Wait(32)
--         StartScreenEffect("DrugsTrevorClownsFightOut", 5000, true)
--         Wait(5000)
--         StopScreenEffect("DrugsTrevorClownsFightOut")
--         DoScreenFadeOut(0)
--         Wait(0)
--         DoScreenFadeIn(400)
--         Wait(1000)
--     end
-- end)
