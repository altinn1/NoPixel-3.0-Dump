local payphoneModels = {
  `p_phonebox_02_s`,
  `prop_phonebox_03`,
  `prop_phonebox_02`,
  `prop_phonebox_04`,
  `prop_phonebox_01c`,
  `prop_phonebox_01a`,
  `prop_phonebox_01b`,
  `p_phonebox_01b_s`,
}

Citizen.CreateThread(function()
  exports["np-interact"]:AddPeekEntryByModel(payphoneModels, {{
    event = "np-phone:startPayPhoneCall",
    id = "np-phone:startPayPhoneCall",
    icon = "phone-volume",
    label = "Make Call",
    parameters = {},
  }}, { distance = { radius = 1.5 } })
end)

AddEventHandler("np-phone:startPayPhoneCall", function()
  exports['np-ui']:openApplication('textbox', {
    callbackUrl = 'np-phone:startPayPhoneCallAction',
    key = 1,
    items = {
      {
        icon = "phone-volume",
        label = "Phone Number",
        name = "number",
      },
    },
    show = true,
  })
end)

RegisterUICallback("np-phone:startPayPhoneCallAction", function(data, cb)
  cb({ data = {}, meta = { ok = true, message = 'done' } })
  exports['np-ui']:closeApplication('textbox')
  local number = data.values.number
  TriggerEvent("np:fiber:voice-event", 'callStart', number, 'Unknown Number')
end)
