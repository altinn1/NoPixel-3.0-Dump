local function showBicycleMenu()
    local bicycles = RPC.execute("bicycles:getBicycles")
    local data = {}
    for _, bike in pairs(bicycles) do
        data[#data + 1] = {
            title = bike.name,
            description = "$" .. bike.retail_price .. ".00",
            image = bike.hd_image_url,
            key = bike.model,
            children = {
                { title = "Purchase Bicycle", action = "np-ui:bicyclesPurchase", key = bike.model },
            },
        }
    end
    exports["np-ui"]:showContextMenu(data)
end

local listening = false
local function listenForKeypress()
    listening = true
    Citizen.CreateThread(function()
        while listening do
            if IsControlJustReleased(0, 38) then
                listening = false
                exports["np-ui"]:hideInteraction()
                showBicycleMenu()
            end
            Wait(0)
        end
    end)
end

RegisterUICallback("np-ui:bicyclesPurchase", function(data, cb)
    data.model = data.key
    data.vehicle_name = GetLabelText(GetDisplayNameFromVehicleModel(data.model))

    local finished = exports["np-taskbar"]:taskBar(15000, "Purchasing...", true)
    if finished ~= 100 then
      cb({ data = {}, meta = { ok = false, message = 'cancelled' } })
      return
    end

    local success, message = RPC.execute("bicycles:purchaseBicycle", data)
    if not success then
        cb({ data = {}, meta = { ok = success, message = message } })
        TriggerEvent("DoLongHudText", message, 2)
        return
    end

    local veh = NetworkGetEntityFromNetworkId(message)

    DoScreenFadeOut(200)

    Citizen.Wait(200)

    TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)

    SetEntityAsMissionEntity(veh, true, true)
    SetVehicleOnGroundProperly(veh)

    DoScreenFadeIn(2000)

    cb({ data = {}, meta = { ok = true, message = "done" } })
end)

AddEventHandler("np-polyzone:enter", function(zone)
    if zone ~= "bicycles" then return end
    exports["np-ui"]:showInteraction("[E] View Catalog")
    listenForKeypress()
end)

AddEventHandler("np-polyzone:exit", function(zone)
    if zone ~= "bicycles" then return end
    exports["np-ui"]:hideInteraction()
    listening = false
end)
