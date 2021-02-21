local fishes = { "fishingbass", "fishingcod", "fishingmackerel", "fishingbluefish", "fishingflounder" }
local bMarketFishes = { "fishingwhale", "fishingdolphin", "fishingshark" }
local nightTime = false
local pricePerFish = 5

local function sellFish()
    local totalFish = 0
    local totalBMarketFish = 0

    function processFish(fish, bMarket)
        local qty = exports["np-inventory"]:getQuantity(fish)

        if not bMarket then
            totalFish = totalFish + qty
        else
            totalBMarketFish = totalBMarketFish + qty
        end
        
        if qty > 0 and (not bMarket or (bMarket and nightTime)) then
            TriggerEvent("inventory:removeItem", fish, qty)
        end
    end

    for _, fish in pairs(fishes) do
        processFish(fish, false)
    end
    for _, fish in pairs(bMarketFishes) do
        processFish(fish, true)
    end

    if totalFish == 0 and totalBMarketFish == 0 then
        TriggerEvent("DoLongHudText", "Nothing to sell, dummy.", 2)
    end
    
    if totalFish > 0 then
        TriggerServerEvent("complete:job", totalFish * pricePerFish)
    end

    if totalBMarketFish > 0 then
        if nightTime then
            TriggerEvent("player:receiveItem", "band", 1 * totalBMarketFish)
        else
            TriggerEvent("DoLongHudText", "Come back later if you want to sell those extra 'fish'", 1)
        end
    end
end

local listening = false
local function listenForKeypress()
    listening = true
    Citizen.CreateThread(function()
        while listening do
            if IsControlJustReleased(0, 38) then
                listening = false
                exports["np-ui"]:hideInteraction()
                sellFish()
            end
            Wait(0)
        end
    end)
end

AddEventHandler("np-polyzone:enter", function(name)
    if name ~= "fishsales" then return end
    exports["np-ui"]:showInteraction("[E] Sell Fish")
    listenForKeypress()
end)
AddEventHandler("np-polyzone:exit", function(name)
    if name ~= "fishsales" then return end
    exports["np-ui"]:hideInteraction()
    listening = false
end)
RegisterNetEvent("timeheader")
AddEventHandler("timeheader", function(pHour, pMinutes)
    if pHour > 19 or pHour < 5 then
        nightTime = true
    else
        nightTime = false
    end
end)
