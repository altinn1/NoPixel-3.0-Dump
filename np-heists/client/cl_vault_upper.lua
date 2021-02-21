local activeKeypad = nil
local keypadCoords = {
    ["first_door"] = {
        coords = vector3(261.43, 223.13, 106.29),
        heading = 259.94,
    },
    ["vault_door"] = {
        coords = vector3(253.64, 228.17, 101.69),
        heading = 62.71,
    },
}
local activeEntranceDoor = nil
local entranceDoorCoords = {
    ["ground_floor"] = {
        coords = vector3(256.31155395508, 220.65788269043, 106.4295425415),
        heading = 0,
    },
    ["second_floor"] = {
        coords = vector3(266.36236572266, 217.56977844238, 110.43280792236),
        heading = 0,
    },
}

function VaultUpperCanUsePanel()
    local playerCoords = GetEntityCoords(PlayerPedId())
    for keypad, conf in pairs(keypadCoords) do
        if #(playerCoords - conf.coords) < 1.0 then
            activeKeypad = keypad
            return true
        end
    end
    activeKeypad = nil
    return false
end
function VaultUpperUsePanel()
    local canOpen, message = RPC.execute("heists:vaultUpperDoorAttempt", activeKeypad)
    if not canOpen then
        TriggerEvent("DoLongHudText", message, 2)
        return
    end

    if activeKeypad == "vault_door" then
        TriggerServerEvent("dispatch:svNotify", {
            dispatchCode = "10-90C",
            origin = keypadCoords[activeKeypad].coords,
        })
    end

    local active = keypadCoords[activeKeypad]
    local success = Citizen.Await(UseBankPanel(active.coords, active.heading, "vault_upper"))

    if not success then
        RPC.execute("np-heists:vaultUpperPanelFail")
        return
    end

    TriggerEvent("inventory:removeItem", "heistlaptop4", 1)
    local goldStatus = RPC.execute("heists:vaultUpperDoorOpen", activeKeypad)
    if activeKeypad ~= "vault_door" then return end

    local trolleyConfig1 = GetTrolleyConfig("vault_upper_cash_1")
    local trolleyConfig2 = GetTrolleyConfig("vault_upper_cash_2")
    SpawnTrolley(trolleyConfig1.cashCoords, "cash", trolleyConfig1.cashHeading)
    SpawnTrolley(trolleyConfig2.cashCoords, "cash", trolleyConfig2.cashHeading)
    if goldStatus.gold1 then
        SpawnTrolley(trolleyConfig1.goldCoords, "gold", trolleyConfig1.goldHeading)
    end
    if goldStatus.gold2 then
        SpawnTrolley(trolleyConfig2.goldCoords, "gold", trolleyConfig2.goldHeading)
    end
end

AddEventHandler("heists:vaultUpperTrolleyGrab", function(loc, type)
    local canGrab = RPC.execute("np-heists:vaultUpperCanGrabTrolley", loc, type)
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

AddEventHandler("np-inventory:itemUsed", function(item)
  if item ~= "lockpick" then return end

  activeEntranceDoor = nil
  local playerCoords = GetEntityCoords(PlayerPedId())
  for door, conf in pairs(entranceDoorCoords) do
    if #(playerCoords - conf.coords) < 2.0 then
      activeEntranceDoor = door
    end
  end
  if activeEntranceDoor == nil then return end

  TriggerServerEvent("dispatch:svNotify", {
    dispatchCode = "10-90C",
    origin = entranceDoorCoords[activeEntranceDoor].coords,
  })

  local skillComplete = LoopSkill(5)
  if not skillComplete then
    TriggerEvent("inventory:removeItem", "lockpick", 1)
    return
  end

  RPC.execute("heists:vaultUpperDoorOpen", activeEntranceDoor)
end)
