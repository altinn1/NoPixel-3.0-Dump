NP = {}
NP.isDead = false

myJob = "unemployed"
isJudge = false
isDoctor = false
isNews = false
isDoc = false
isPolice = false
isMedic = false
isDead = false
isInstructorMode = false

RegisterNetEvent('pd:deathcheck')
AddEventHandler('pd:deathcheck', function()
  if not NP.isDead then
    NP.isDead = true
  else
    NP.isDead = false
  end
end)

RegisterNetEvent("np-jobmanager:playerBecameJob")
AddEventHandler("np-jobmanager:playerBecameJob", function(job, name, notify)
    if isMedic and job ~= "ems" then isMedic = false end
    if isPolice and job ~= "police" then isPolice = false end
    if isDoc and job ~= "doc" then isDoc = false end
    if isDoctor and job ~= "doctor" then isDoctor = false end
    if isNews and job ~= "news" then isNews = false end
    if job == "police" then isPolice = true end
    if job == "ems" then isMedic = true end
    if job == "news" then isNews = true end
    if job == "doctor" then isDoctor = true end
    if job == "doc" then isDoc = true end
    myJob = job

    if not CanUseFrequency(CurrentChannel) then
      return SetRadioFrequency()
    end
end)

function IsEmergency()
  return (isPolice or isDoc or isDoctor or isMedic)
end

function CanUseFrequency(pFrequency, pNotify)
  if not pFrequency then return false end

  if pFrequency == 0 then return true end

  local hasPDRadio = exports["np-inventory"]:hasEnoughOfItem("radio", 1, false)
  local hasCivRadio = exports["np-inventory"]:hasEnoughOfItem("civradio", 1, false)

  if pFrequency <= 10 and (not hasPDRadio or not IsEmergency()) then
    if pNotify then TriggerEvent('DoLongHudText', 'This frequency is encrypted.', 2) end
    return false
  elseif pFrequency > 10 and not hasCivRadio then
    if pNotify then TriggerEvent('DoLongHudText', 'PD Walkie cannot operate in civ frequencies.', 2) end
    return false
  end

  return true
end