
RegisterUICallback("np-ui:activateSelfieMode", function(data, cb)
  exports["np-ui"]:closeApplication("phone")
  DestroyMobilePhone()
  Wait(0)
  CreateMobilePhone(0)
  CellCamActivate(true, true)
  CellCamDisableThisFrame(true)
  Citizen.CreateThread(function()
    local selfieMode = true
    while selfieMode == true do
      if IsControlJustPressed(0, 177) then
        selfieMode = false
        DestroyMobilePhone()
        Wait(0)
        CellCamDisableThisFrame(false)
        CellCamActivate(false, false)
      end
      Wait(0)
    end
  end)
  cb({ data = {}, meta = { ok = true, message = '' } })
end)

AddEventHandler("np-ui:application-closed", function (name, data)
  if name ~= "phone" then return end
  StopAnimTask(PlayerPedId(), "cellphone@", "cellphone_text_read_base", 1.0)
  if not IsInActiveCall() then
    TriggerEvent("destroyPropPhone")
  end
end)

AddEventHandler('np-inventory:itemCheck', function(itemId, hasItem)
  if not itemId == "mobilephone" then return end

  exports["np-ui"]:sendAppEvent("phone", { action = "phone-state-update", hasPhone = hasItem })
end)
