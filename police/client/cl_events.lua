local listening, currentPrompt = false, nil

Citizen.CreateThread(function()

  exports["np-polyzone"]:AddPolyZone("mrpd_classroom", {
    vector2(448.41372680664, -990.47613525391),
    vector2(439.50704956055, -990.55731201172),
    vector2(439.43478393555, -981.08758544922),
    vector2(448.419921875, -981.26306152344),
    vector2(450.23190307617, -983.00885009766),
    vector2(450.25042724609, -988.77667236328)
  }, {
    gridDivisions = 25,
    minZ = 34.04,
    maxZ = 37.69
  })

  exports["np-polyzone"]:AddBoxZone("mrpd_clothing_lockers", vector3(461.81, -997.79, 30.69), 4.4, 4.8, {
    heading=0,
    minZ=29.64,
    maxZ=32.84
  })

  exports["np-polyzone"]:AddBoxZone("mrpd_armory", vector3(481.59, -995.35, 30.69), 3.2, 0.8, {
    heading=90,
    minZ=29.69,
    maxZ=32.49
  })

  exports["np-polyzone"]:AddBoxZone("mrpd_evidence", vector3(474.84, -996.26, 26.27), 1.2, 3.0, {
    heading=90,
    minZ=25.27,
    maxZ=27.87
  })

  exports["np-polyzone"]:AddBoxZone("mrpd_trash", vector3(472.88, -996.28, 26.27), 1.2, 3.0, {
    heading=90,
    minZ=25.27,
    maxZ=27.87
  })

  exports["np-polyzone"]:AddBoxZone("mrpd_character_switcher", vector3(478.88, -983.49, 30.69), 1.35, 1.3, {
    heading=0,
    minZ=29.74,
    maxZ=32.74
  })

  -- Armory, VBPD
  exports["np-polyzone"]:AddBoxZone("vbpd_armory", vector3(-1075.05, -830.85, 19.3), 4.6, 1.2, {
    heading=308,
    minZ=18.3,
    maxZ=21.1
  })

  exports["np-polyzone"]:AddBoxZone("vbpd_clothing_lockers", vector3(-1087.41, -832.43, 19.3), 4.2, 11.2, {
    heading=308,
    minZ=18.15,
    maxZ=21.95
  })

  exports["np-polyzone"]:AddCircleZone("vbpd_character_switcher", vector3(-1081.85, -834.42, 19.3), 0.5, {
    useZ=true,
  })

  exports["np-polyzone"]:AddCircleZone("vbpd_evidence", vector3(-1099.11, -824.35, 19.3), 0.7, {
    useZ=true,
  })

  exports["np-polyzone"]:AddCircleZone("vbpd_trash", vector3(-1096.47, -818.9, 19.3), 0.3, {
    useZ=true,
  })

  exports["np-polyzone"]:AddBoxZone("sandy_clothing_lockers", vector3(1861.04, 3689.48, 34.28), 2.9, 2.95, {
    heading=30,
    minZ=33.28,
    maxZ=35.48
  })

  exports["np-polyzone"]:AddBoxZone("sandy_character_switch_evidence_trash_armory", vector3(1849.44, 3694.38, 34.28), 2.4, 2.2, {
    heading=30,
    minZ=33.28,
    maxZ=36.68
  })

  exports["np-polyzone"]:AddBoxZone("paleto_clothing_lockers_character_switch_evidence_trash_armory", vector3(-452.63, 6014.1, 31.72), 2.4, 2.8, {
    heading=44,
    minZ=30.5,
    maxZ=33.0
  })
  
  
  exports["np-polyzone"]:AddCircleZone("doc_trash", vector3(1840.87, 2572.94, 46.01), 0.4, {
    useZ=true,
  })

  exports["np-polyzone"]:AddCircleZone("doc_trash2", vector3(1771.26, 2497.24, 50.43), 0.4, {
    useZ=true,
  })

  --[[
  AddReplaceTexture('gabz_mm_screen', 'script_rt_big_disp', 'duiTxd', 'duiTex')
  RemoveReplaceTexture('gabz_mm_screen', 'script_rt_big_disp')
  ]]
  -- DUI STUFF HERE
  local duiObj = CreateDui('https://preview.redd.it/350jhyn21sf41.png?width=640&crop=smart&auto=webp&s=af9f1dc2a3e250894e4c41a04b42c064154cee98', 1920, 1080)
   _G.duiObj = duiObj
  local dui = GetDuiHandle(duiObj)
  local txd = CreateRuntimeTxd('duiTxd')
  local tx = CreateRuntimeTextureFromDuiHandle(txd, 'duiTex', dui)
end)

local EVENTS = {
  LOCKERS = 1,
  CLOTHING = 2,
  SWITCHER = 3,
  EVIDENCE = 4,
  TRASH = 5,
  ARMORY = 6
}

local zoneData = {
  mrpd_clothing_lockers = {
    promptText = "[E] Lockers & Clothes",
    menuData = {
      {
        title = "Lockers",
        description = "Access your personal locker",
        action = "np-police:handler",
        key = EVENTS.LOCKERS
      },
      {
        title = "Clothing",
        description = "Gotta look Sharp",
        action = "np-police:handler",
        key = EVENTS.CLOTHING
      }
    }
  },
  vbpd_clothing_lockers = {
    promptText = "[E] Lockers & Clothes",
    menuData = {
      {
        title = "Lockers",
        description = "Access your personal locker",
        action = "np-police:handler",
        key = EVENTS.LOCKERS
      },
      {
        title = "Clothing",
        description = "Gotta look Sharp",
        action = "np-police:handler",
        key = EVENTS.CLOTHING
      }
    }
  },
  sandy_clothing_lockers = {
    promptText = "[E] Lockers & Clothes",
    menuData = {
      {
        title = "Lockers",
        description = "Access your personal locker",
        action = "np-police:handler",
        key = EVENTS.LOCKERS
      },
      {
        title = "Clothing",
        description = "Gotta look Sharp",
        action = "np-police:handler",
        key = EVENTS.CLOTHING
      }
    }
  },
  mrpd_character_switcher = {
    promptText = "[E] Switch Character",
    menuData = {
      {
        title = "Character switch",
        description = "Go bowling with your cousin",
        action = "np-police:handler",
        key = EVENTS.SWITCHER
      }
    }
  },
  vbpd_character_switcher = {
    promptText = "[E] Switch Character",
    menuData = {
      {
        title = "Character switch",
        description = "Go bowling with your cousin",
        action = "np-police:handler",
        key = EVENTS.SWITCHER
      }
    }
  },
  sandy_character_switch_evidence_trash_armory = {
    promptText = "[E] Station Services",
    menuData = {
      {
        title = "Armory",
        description = "WEF - Weapons, Equipment, Fun!",
        action = "np-police:handler",
        key = EVENTS.ARMORY
      },
      {
        title = "Evidence",
        description = "Drop off some evidence",
        action = "np-police:handler",
        key = EVENTS.EVIDENCE
      },
      {
        title = "Trash",
        description = "Where Spaghetti Code belongs",
        action = "np-police:handler",
        key = EVENTS.TRASH
      },
      {
        title = "Character switch",
        description = "Go bowling with your cousin",
        action = "np-police:handler",
        key = EVENTS.SWITCHER
      },
    } 
  },
  mrpd_trash = {
    promptText = "[E] Trash"
  },
  vbpd_trash = {
    promptText = "[E] Trash"
  },
  mrpd_armory = {
    promptText = "[E] Armory"
  },
  vbpd_armory = {
    promptText = "[E] Armory"
  },
  mrpd_evidence = {
    promptText = "[E] Evidence"
  },
  vbpd_evidence = {
    promptText = "[E] Evidence"
  },
  doc_trash = {
    promptText = "[E] Trash"
  },
  doc_trash2 = {
    promptText = "[E] Trash"
  },
  paleto_clothing_lockers_character_switch_evidence_trash_armory = {
    promptText = "[E] Station Services",
    menuData = {
      {
        title = "Lockers",
        description = "Access your personal locker",
        action = "np-police:handler",
        key = EVENTS.LOCKERS
      },
      {
        title = "Clothing",
        description = "Gotta look Sharp",
        action = "np-police:handler",
        key = EVENTS.CLOTHING
      },
      {
        title = "Armory",
        description = "WEF - Weapons, Equipment, Fun!",
        action = "np-police:handler",
        key = EVENTS.ARMORY
      },
      {
        title = "Evidence",
        description = "Drop off some evidence",
        action = "np-police:handler",
        key = EVENTS.EVIDENCE
      },
      {
        title = "Trash",
        description = "Where Spaghetti Code belongs",
        action = "np-police:handler",
        key = EVENTS.TRASH
      },
      {
        title = "Character switch",
        description = "Go bowling with your cousin",
        action = "np-police:handler",
        key = EVENTS.SWITCHER
      },
    } 
  }
}

RegisterUICallback("np-police:handler", function(data, cb)
  local eventData = data.key
  local location = currentPrompt ~= nil and string.match(currentPrompt, "(.-)_") or ''
  local job = exports["isPed"]:isPed("myjob")
  if eventData == EVENTS.LOCKERS and job == "police" then
    local cid = exports["isPed"]:isPed("cid")
    TriggerEvent("server-inventory-open", "1", ("personalStorage-%s-%s"):format(location, cid))
    TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 3.0, 'LockerOpen', 0.4)
  elseif eventData == EVENTS.CLOTHING then
    exports["np-ui"]:hideInteraction()
    Wait(500)
    TriggerEvent("raid_clothes:openClothing", true, true)
  elseif eventData == EVENTS.SWITCHER then
    isCop = false
    TransitionToBlurred(500)
    DoScreenFadeOut(500)
    Wait(1000)
    TriggerEvent("np-base:clearStates")
    exports["np-base"]:getModule("SpawnManager"):Initialize()
    Wait(1000)
  elseif eventData == EVENTS.EVIDENCE and job == "police" then
    TriggerEvent("server-inventory-open", "1", ("%s_evidence"):format(location))
  elseif eventData == EVENTS.TRASH and job == "police" then
    TriggerEvent("server-inventory-open", "1", ("%s_trash"):format(location))
  elseif eventData == EVENTS.ARMORY and job == "police" then
    TriggerEvent("server-inventory-open", "10", "Shop")
  end
  cb({ data = {}, meta = { ok = true, message = "done" } })
end)

local function listenForKeypress(pZone)
  listening = true
  Citizen.CreateThread(function()
    while listening do
      if IsControlJustReleased(0, 38) then
        if pZone == "mrpd_clothing_lockers" or pZone == "vbpd_clothing_lockers" or pZone == "sandy_clothing_lockers" or pZone == "paleto_clothing_lockers_character_switch_evidence_trash_armory" then
          exports["np-ui"]:showContextMenu(zoneData[pZone].menuData)
        elseif pZone == "mrpd_character_switcher" or pZone == "vbpd_character_switcher" or pZone == "sandy_character_switch_evidence_trash_armory" then
          exports["np-ui"]:showContextMenu(zoneData[pZone].menuData)
        elseif (pZone == "mrpd_armory" or pZone == "vbpd_armory") and exports["isPed"]:isPed("myjob") == "police"  then
          TriggerEvent("server-inventory-open", "10", "Shop")
        elseif pZone == "mrpd_trash" or pZone == "vbpd_trash" or pZone == "doc_trash" or pZone == "doc_trash2" then
          TriggerEvent("server-inventory-open", "1", pZone)
        elseif pZone == "mrpd_evidence" or pZone == "vbpd_evidence" then
          TriggerEvent("server-inventory-open", "1", pZone)
          TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 3.0, 'LockerOpen', 0.4)
        end
      end
      Wait(0)
    end
  end)
end


AddEventHandler("np-polyzone:enter", function(zone)
  local currentZone = zoneData[zone]
  if zone == "mrpd_classroom" then
    AddReplaceTexture('prop_planning_b1', 'prop_base_white_01b', 'duiTxd', 'duiTex')
  elseif currentZone then --and isCop
    currentPrompt = zone
    local prompt = type(currentZone.promptText) == 'function' and currentZone.promptText() or currentZone.promptText
    exports["np-ui"]:showInteraction(prompt)
    listenForKeypress(zone)
  end
end)

AddEventHandler("np-polyzone:exit", function(zone)
  local currentZone = zoneData[zone]
  if zone == "mrpd_classroom" then
    RemoveReplaceTexture('prop_planning_b1', 'prop_base_white_01b')
  elseif currentZone then
    exports["np-ui"]:hideInteraction()
    listening = false
    currentPrompt = nil
  end
end)
