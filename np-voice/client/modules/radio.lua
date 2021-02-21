RadioChannels, IsRadioOn, IsTalkingOnRadio, RadioVolume, CurrentChannel = {}, false, false, Config.settings.radioVolume

function SetRadioPowerState(poweredOn)
    if Throttled("radio:transmit") then return end

    IsRadioOn = poweredOn

    TriggerEvent('np:fiber:voice-event', 'radioPowerState', IsRadioOn)

    Throttled("radio:powerState", 500)
end

function SetRadioFrequency(frequency)
    CurrentChannel = CanUseFrequency(frequency, true) and frequency or CurrentChannel

    TriggerEvent('np:fiber:voice-event', 'radioFrequency', CurrentChannel)

    Debug("[Radio] Connected | Radio ID: %s", CurrentChannel)
end

function SetRadioVolume(volume)
    if volume <= 0 then return end

    RadioVolume = _C(volume > 10, 1.0, volume * 0.1)

    if almostEqual(0.0, volume, 0.01) then RadioVolume = 0.0 end

    TriggerEvent("DoLongHudText", ("New volume %s"):format(RadioVolume))

    TriggerEvent("np:fiber:voice-event", 'volumeRadio', RadioVolume)

    Debug("[Radio] Volume Changed | Current: %s", RadioVolume)
end

function IncreaseRadioVolume()
  local currentVolume = RadioVolume * 10
  SetRadioVolume(currentVolume + 1)
end

function DecreaseRadioVolume()
  local currentVolume = RadioVolume * 10
  SetRadioVolume(currentVolume - 1)
end

local isDead = false
AddEventHandler("pd:deathcheck", function()
  isDead = not isDead
end)
function StartTransmission()
    if not IsRadioOn or not CurrentChannel or Throttled("radio:transmit") or isDead then return end

    if not IsTalkingOnRadio then
        IsTalkingOnRadio = true

        StartRadioTask()
    end

    if RadioTimeout then
        RadioTimeout:resolve(false)
    end
end

function StopTransmission(forced)
    if not IsTalkingOnRadio or RadioTimeout then return end

    RadioTimeout = TimeOut(300):next(function (continue)
        RadioTimeout = nil

        if forced ~= true and not continue then return end

        IsTalkingOnRadio = false

        Throttled("radio:transmit", 300)
    end)

    return RadioTimeout
end

function StartRadioTask()
    Citizen.CreateThread(function()
        local lib = "random@arrests"
        local anim = "generic_radio_chatter"
        local playerPed = PlayerPedId()

        LoadAnimDict("random@arrests")

        while IsTalkingOnRadio do
            if not IsEntityPlayingAnim(playerPed, lib, anim, 3) then
                TaskPlayAnim(playerPed, lib, anim, 8.0, 0.0, -1, 49, 0, false, false, false)
            end

            SetControlNormal(0, 249, 1.0)

            Citizen.Wait(0)
        end

        StopAnimTask(playerPed, lib, anim, 3.0)
    end)
end

function LoadRadioModule()
    exports["np-keybinds-1"]:registerKeyMapping("", "Radio", "Push-To-Talk", "+transmitToRadio", "-transmitToRadio", "CAPITAL")
    RegisterCommand('+transmitToRadio', StartTransmission, false)
    RegisterCommand('-transmitToRadio', StopTransmission, false)

    exports["np-keybinds-1"]:registerKeyMapping("", "Radio", "Push-To-Talk (Secondary)", "+secondaryTransmitToRadio", "-secondaryTransmitToRadio")
    RegisterCommand('+secondaryTransmitToRadio', StartTransmission, false)
    RegisterCommand('-secondaryTransmitToRadio', StopTransmission, false)

    exports["np-keybinds-1"]:registerKeyMapping("", "Radio", "Volume Up", "+increaseRadioVolume", "-increaseRadioVolume")
    RegisterCommand('+increaseRadioVolume', IncreaseRadioVolume, false)
    RegisterCommand('-increaseRadioVolume', function() end, false)

    exports["np-keybinds-1"]:registerKeyMapping("", "Radio", "Volume Down", "+decreaseRadioVolume", "-decreaseRadioVolume")
    RegisterCommand('+decreaseRadioVolume', DecreaseRadioVolume, false)
    RegisterCommand('-decreaseRadioVolume', function() end, false)

    exports["np-keybinds-1"]:registerKeyMapping("", "Radio", "On / Off", "+toggleRadioState", "-toggleRadioState")
    RegisterCommand('+toggleRadioState', function() SetRadioPowerState(not IsRadioOn) end, false)
    RegisterCommand('-toggleRadioState', function() end, false)

    exports("SetRadioPowerState", SetRadioPowerState)
    exports("SetRadioVolume", SetRadioVolume)
    exports("SetRadioFrequency", SetRadioFrequency)
    exports("IncreaseRadioVolume", IncreaseRadioVolume)
    exports("DecreaseRadioVolume", DecreaseRadioVolume)

    TriggerEvent("np:voice:radio:ready")

    Debug("[Radio] Module Loaded")
end
