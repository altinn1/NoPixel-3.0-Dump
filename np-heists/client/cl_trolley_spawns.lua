local listening = false
local listenerActive = true
local listenerCoords = nil
local function listenForKeypress(loc, evt, type)
    listening = true
    Citizen.CreateThread(function()
        while listening do
            if IsControlJustReleased(0, 38) then
                listening = false
                listenerActive = false
                listenerCoords = nil
                exports["np-ui"]:hideInteraction()
                TriggerEvent(evt, loc, type)
            end
            Citizen.Wait(0)
        end
    end)
end

function ActivateGrabListener(a)
    listenerActive = a
end

function SpawnTrolley(coords, type, heading)
    Citizen.CreateThread(function()
        local trolleys = { `ch_prop_ch_cash_trolly_01c`, `ch_prop_gold_trolly_01c`, `ch_prop_gold_trolly_empty` } -- { 269934519, 769923921, 2007413986, 2714348429 }
        for _, hash in pairs(trolleys) do
            local clean = true
            RequestModel(hash)
            while not HasModelLoaded(hash) do
                Citizen.Wait(0)
            end
            while clean do
                local trolleyAlreadyExists = GetClosestObjectOfType(coords, 1.0, hash, 0, 0, 0)
                if trolleyAlreadyExists == 0 then
                    clean = false
                else
                    SetEntityAsMissionEntity(trolleyAlreadyExists, 1, 1)
                    Citizen.Wait(0)
                    Sync.DeleteEntity(trolleyAlreadyExists)
                end
            end
        end
        Citizen.Wait(0)
        local spawnHash = `ch_prop_ch_cash_trolly_01c`
        if type == "gold" then
            spawnHash = `ch_prop_gold_trolly_01c`
        end
        RequestModel(spawnHash)
        while not HasModelLoaded(spawnHash) do
            Citizen.Wait(0)
        end
        local trolley = CreateObject(spawnHash, coords, true, false, false)
        Citizen.Wait(0)
        SetEntityHeading(trolley, heading)
        PlaceObjectOnGroundProperly(trolley)
    end)
end

-- Citizen.CreateThread(function()
--     Citizen.Wait(10000)
--     local trolleys = { `ch_prop_ch_cash_trolly_01c`, `ch_prop_gold_trolly_01c`, `ch_prop_gold_trolly_empty`, `ch_prop_gold_bar_01a` }
--     for _, t in pairs(trolleys) do
--         RequestModel(t)
--     end
--     SpawnTrolley(GetEntityCoords(PlayerPedId()), "cash", 0.0)
-- end)

local trolleyHashes = {
    [`ch_prop_ch_cash_trolly_01c`] = true,
    [`ch_prop_gold_trolly_01c`] = true,
}
local trolleyConfig = nil
AddEventHandler("np:target:changed", function(pEntity, pEntityType, pEntityCoords)
    if pEntityType == nil or pEntityType ~= 3 then
        if listening then
            exports["np-ui"]:hideInteraction()
        end
        listening = false
        listenerCoords = nil
        return
    end
    local model = GetEntityModel(pEntity)
    if trolleyHashes[model] == nil then
        if listening then
            exports["np-ui"]:hideInteraction()
        end
        listening = false
        listenerCoords = nil
        return
    end
    
    if trolleyConfig == nil then
        trolleyConfig = RPC.execute("heists:getTrolleySpawnConfig")
    end

    if not listenerActive or listening then
        return
    end

    local playerCoords = GetEntityCoords(PlayerPedId())
    for loc, conf in pairs(trolleyConfig) do
        if listenerCoords == nil then
            local cashDist = #(playerCoords - conf.cashCoords)
            local goldDist = #(playerCoords - conf.goldCoords)
            local cashActive = cashDist < 1.5
            local goldActive = goldDist < 1.5
            if cashActive then
                listenerCoords = conf.cashCoords
            end
            if goldActive then
                listenerCoords = conf.goldCoords
            end
            if listenerCoords ~= nil then
                exports["np-ui"]:showInteraction("[E] Grab it!")
                listenForKeypress(loc, conf.cashEvent, cashActive and "cash" or "gold")
            end
        end
    end
end)
