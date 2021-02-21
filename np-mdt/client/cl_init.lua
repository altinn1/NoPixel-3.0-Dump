Citizen.CreateThread(function()
  exports["np-keybinds-1"]:registerKeyMapping("","Gov", "MDW", "+openMdw", "-openMdw")
  RegisterCommand("+openMdw", function()
    TriggerEvent("np-ui:openMDW", {})
  end, false)
  RegisterCommand("-openMdw", function() end, false)
  regCommand()
end)

AddEventHandler("np-spawn:characterSpawned", function()
  regCommand()
end)

function regCommand()
  Citizen.Wait(5000)
  local result = RPC.execute("np-ui:mdtApiRequest", {
    action = "hasConfigPermission",
    data = {},
  })
  if result and result.message and result.message.steam then
    RegisterCommand("mdw", function()
      TriggerEvent("np-ui:openMDW", { fromCmd = true })
    end)
  end
end
