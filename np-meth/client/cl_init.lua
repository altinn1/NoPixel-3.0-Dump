local config = nil
function getConfig()
    return config
end

Citizen.CreateThread(function()
    config = RPC.execute("np-meth:getConfig")
    for _, v in pairs(config.ACTIVE_CORNERS) do
        if v.enabled then
            exports["np-polyzone"]:AddBoxZone(
                "meth_corner",
                vector3(v.polyzone.coords[1], v.polyzone.coords[2], v.polyzone.coords[3]),
                v.polyzone.h,
                v.polyzone.w,
                v.polyzone.options
            )
        end
    end
    for _, v in pairs(config.ACTIVE_LABS) do
        if v.enabled then
            exports["np-polyzone"]:AddBoxZone(
                "methlab", 
                vector3(v.polyzone.coords[1], v.polyzone.coords[2], v.polyzone.coords[3]), 
                v.polyzone.h, 
                v.polyzone.w, 
                v.polyzone.options
            )
            for k, target in pairs(v.polytargets) do
              exports["np-polytarget"]:AddBoxZone(
                "methlab_target_" .. k,
                vector3(target.coords.x, target.coords.y, target.coords.z),
                target.width,
                target.length,
                target.options
              )
            end
        end
    end
    local defaultOptions = { distance = { radius = 1.5 } }
    exports['np-interact']:AddPeekEntryByPolyTarget("methlab_target_laptop", {{
      id = "meth_start_cooking",
      event = "np-meth:startCooking",
      icon = "stroopwafel",
      label = "Start Cooking",
      parameters = {},
    }}, defaultOptions)
    exports['np-interact']:AddPeekEntryByPolyTarget("methlab_target_fridge", {{
      id = "meth_adjust_fridge_temp",
      event = "np-meth:adjustFridgeTemp",
      icon = "thermometer-quarter",
      label = "Adjust Temperature",
      parameters = {},
    }}, defaultOptions)
    exports['np-interact']:AddPeekEntryByPolyTarget("methlab_target_dis_settings", {{
      id = "meth_adjust_distil_settings",
      event = "np-meth:adjustDistilSettings",
      icon = "sliders-h",
      label = "Adjust Settings",
      parameters = {},
    }}, defaultOptions)
    exports['np-interact']:AddPeekEntryByPolyTarget("methlab_target_dis_steam", {{
      id = "meth_adjust_steam_level",
      event = "np-meth:adjustSteamLevel",
      icon = "bong",
      label = "Adjust Steam Levels",
      parameters = {},
    }}, defaultOptions)
    exports['np-interact']:AddPeekEntryByPolyTarget("methlab_target_settings", {{
      id = "meth_adjust_mixer_settings",
      event = "np-meth:adjustMixerSettings",
      icon = "blender",
      label = "Adjust Mixer Settings",
      parameters = {},
    }}, defaultOptions)
    exports['np-interact']:AddPeekEntryByPolyTarget("methlab_target_temperature", {{
      id = "meth_adjust_mixer_temp",
      event = "np-meth:adjustMixerTemp",
      icon = "thermometer-full",
      label = "Adjust Mixer Temperature",
      parameters = {},
    }}, defaultOptions)
    exports['np-interact']:AddPeekEntryByPolyTarget("methlab_target_drop", {{
      id = "meth_add_ingredient",
      event = "np-meth:addIngredient",
      icon = "mortar-pestle",
      label = "Drop Ingredients",
      parameters = {},
    }}, defaultOptions)
    exports['np-interact']:AddPeekEntryByModel({ 652625140, 1868096318, 974707040}, {{
      id = "meth_pikcup_ingredient",
      event = "np-meth:pickupIngredient",
      icon = "hand-holding",
      label = "Pick up Ingredients",
      parameters = {},
    }}, defaultOptions)
end)
