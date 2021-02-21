local drugEffectTime

-- Cocaine Effects
RegisterNetEvent('hadcocaine')
AddEventHandler('hadcocaine', function(quality)
  TriggerEvent("addiction:drugTaken", "cocaine")
  drugEffectTime = 0

  TriggerEvent("fx:run", "cocaine", 8, 0.0, false, false)

  local addictionFactor = getFactor("cocaine")

  -- sets the sprint multipler based on the addictionfactor... if your addiction is higher then 5.0, you start slowing down. max sprint speep is 1.25
  local sprintfactor = map_range(addictionFactor, 0.0, 5.0, 1.1, 1.00)

  if sprintfactor < 1.0 then
    sprintfactor = 1.0
  end

  SetRunSprintMultiplierForPlayer(PlayerId(), sprintfactor)

  drugEffectTime = 50 + (150 * (quality and quality / 100 or 1.0))
  if quality and quality < 40 then
    TriggerEvent("DoLongHudText", "This is some poor quality shit", 2)
  end

  TriggerEvent("client:newStress", false, math.random(250))

  while drugEffectTime > 0 do
    Citizen.Wait(1000)
    RestorePlayerStamina(PlayerId(), 1.0)
    drugEffectTime = drugEffectTime - 1

    if IsPedRagdoll(PlayerPedId()) then
      SetPedToRagdoll(PlayerPedId(), math.random(5), math.random(5), 3, 0, 0, 0)
    end

    local armor = GetPedArmour(PlayerPedId())
    SetPedArmour(PlayerPedId(), armor + 3)

    if math.random(500) < 3 then
      TriggerEvent("fx:run", "cocaine", 8, 0.0, false, false)
      Citizen.Wait(math.random(30000))
    end

    if math.random(100) > 91 and IsPedRunning(PlayerPedId()) then
      SetPedToRagdoll(PlayerPedId(), math.random(1000), math.random(1000), 3, 0, 0, 0)
    end
  end

  drugEffectTime = 0

  if IsPedRunning(PlayerPedId()) then
    SetPedToRagdoll(PlayerPedId(), 1000, 1000, 3, 0, 0, 0)
  end

  SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
  exports["carandplayerhud"]:revertToStress()
end)

RegisterNetEvent('hadnitrous')
AddEventHandler('hadnitrous', function()
  drugEffectTime = 0

  TriggerEvent("fx:run", "cocaine", 8, 0.0, false, false)

  SetRunSprintMultiplierForPlayer(PlayerId(), 1.01)

  drugEffectTime = 200

  -- TriggerEvent("client:newStress", false, math.random(250))

  while drugEffectTime > 0 do
    Citizen.Wait(1000)
    drugEffectTime = drugEffectTime - 1

    if IsPedRagdoll(PlayerPedId()) then
      SetPedToRagdoll(PlayerPedId(), math.random(5), math.random(5), 3, 0, 0, 0)
    end
  end

  drugEffectTime = 0

  if IsPedRunning(PlayerPedId()) then
    SetPedToRagdoll(PlayerPedId(), 1000, 1000, 3, 0, 0, 0)
  end

  SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
  exports["carandplayerhud"]:revertToStress()
end)

-- Crack Effects
RegisterNetEvent('hadcrack')
AddEventHandler('hadcrack', function()
  TriggerEvent("addiction:drugTaken", "crack")
  drugEffectTime = 0
  Citizen.Wait(1000)

  TriggerEvent("fx:run", "crack", 8, 0.0, false, false)

  local addictionFactor = getFactor("crack")

  local sprintfactor = map_range(addictionFactor, 0.0, 5.0, 1.35, 1.00)

  if sprintfactor < 1.0 then
    sprintfactor = 1.0
  end

  SetRunSprintMultiplierForPlayer(PlayerId(), sprintfactor)

  drugEffectTime = 30

  TriggerEvent("client:newStress", true, math.random(750, 1250))

  while drugEffectTime > 0 do
    Citizen.Wait(1000)
    RestorePlayerStamina(PlayerId(), 1.0)
    drugEffectTime = drugEffectTime - 1

    if IsPedRagdoll(PlayerPedId()) then
      SetPedToRagdoll(PlayerPedId(), math.random(5), math.random(5), 3, 0, 0, 0)
    end

    if math.random(500) < 100 then
      TriggerEvent("fx:run", "crack", 8, 0.0, false, false)
      Citizen.Wait(math.random(30000))
    end

    if math.random(100) > 91 and IsPedRunning(PlayerPedId()) then
      SetPedToRagdoll(PlayerPedId(), math.random(1000), math.random(1000), 3, 0, 0, 0)
    end
  end

  drugEffectTime = 0

  if IsPedRunning(PlayerPedId()) then
    SetPedToRagdoll(PlayerPedId(), 6000, 6000, 3, 0, 0, 0)
  end

  SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
  exports["carandplayerhud"]:revertToStress()
end)

RegisterNetEvent("weed")
AddEventHandler("weed", function(alteredValue, scenario)
  local timeout = 500

  while not IsPedUsingScenario(PlayerPedId(), scenario) do
    Wait(1)

    timeout = timeout - 1

    if timeout == 0 then
      print("WEED ANIMATION TIMED OUT")
      return
    end
  end

  TriggerEvent("addiction:drugTaken", "weed")
  local removedStress = 0

  TriggerEvent("DoShortHudText", 'Stress is being relieved', 6)

  SetPlayerMaxArmour(PlayerId(), 60)

  local addictionFactor = getFactor("weed")

  -- Addiction will scale the amount of armor you get over time between 0 and 3 dependiong on how addicted you are
  local armorchange = map_range(addictionFactor, 0.0, 5.0, 3.0, 0.0)

  if armorchange < 0 then
    armorchange = 0
  end

  while removedStress <= alteredValue do
    removedStress = removedStress + 100

    local armor = GetPedArmour(PlayerPedId())

    SetPedArmour(PlayerPedId(), armor + math.ceil(armorchange))

    if scenario ~= "None" then
      if not IsPedUsingScenario(PlayerPedId(), scenario) then
        TriggerEvent("animation:cancel")
        break
      end
    end

    Citizen.Wait(1000)
  end

  TriggerServerEvent("server:alterStress", false, removedStress)
end)

function map_range(s, a1, a2, b1, b2)
  return b1 + (s - a1) * (b2 - b1) / (a2 - a1)
end
