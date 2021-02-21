local fishes = nil
local fishingRod = nil
local jobCallback = nil
local validFishes = {}

local function createFishes()
    fishes = RPC.execute("fishing:getAvailableFishes")
    for _, fish in pairs(fishes) do
        validFishes[fish.itemName] = true
    end
end

Citizen.CreateThread(function()
    createFishes()
end)

local blip = nil
AddEventHandler("fishing:addFishingBlip", function()
    local location = RPC.execute("fishing:getActiveLocation")
    if blip ~= nil then
        RemoveBlip(blip)
    end
    blip = AddBlipForCoord(location.coords)
    SetBlipSprite(blip, 304)
    SetBlipScale(blip, 0.8)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Fishing")
    EndTextCommandSetBlipName(blip)
end)

local function isValidFish(fish)
    return validFishes[fish] ~= nil
end

local function loopSkill(count)
    local loopCount = 0
    while loopCount < count do
        loopCount = loopCount + 1
        local finished = exports["np-ui"]:taskBarSkill(math.random(1000, 8000), math.random(5, 15))
        if finished ~= 100 then
            return false
        end
        Wait(100)
    end
    return true
end

local function reelInFish()
    TriggerEvent("DoLongHudText", "A little nibble...", 1)
    local fishChance = math.random()
    local found = false
    for _, fish in pairs(fishes) do
        if not found and fish.chance > fishChance then
            found = true

            local success = loopSkill(fish.skill)
            if success then
                TriggerEvent("DoLongHudText", "You caught a " .. fish.name, 1)
                TriggerEvent("player:receiveItem", fish.itemName, 1)

                if jobCallback ~= nil then
                    local oData = jobCallback('getObjectiveData', 'collect_twenty_fishes')
                    local jobCount = oData.data.count
                    if jobCount < 20 then
                        jobCount = jobCount + 1
                        jobCallback('updateObjectiveData', 'collect_twenty_fishes', 'count', jobCount)
                        if jobCount == 20 then
                            jobCallback('updateObjectiveData', 'collect_twenty_fishes', 'status', 'completed')
                        end
                    else
                        jobCallback = nil
                    end
                end
            else
                TriggerEvent("DoLongHudText", "It got away!!!!!!!", 2)
            end
        end
    end
    if not found then
        TriggerEvent("DoLongHudText", "No fish was hooked...", 1)
    end

    -- local rod = GetClosestObjectOfType(GetEntityCoords(PlayerPedId()), 1.0, `prop_fishing_rod_01`, false, false, false)
    -- SetEntityAsMissionEntity(rod, 1, 1)
    if fishingRod ~= nil then
        Sync.DeleteObject(fishingRod)
        fishingRod = nil
    end
    ClearPedTasks(GetPlayerPed(-1))
end

local fishing = false
local function startFishing()
    if fishing then return end
    fishing = true
    -- TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_STAND_FISHING", 0, true)

    local rodModel = "prop_fishing_rod_01"
    local rodHash = `prop_fishing_rod_01`

    RequestAnimDict("amb@world_human_stand_fishing@idle_a")
    RequestModel(rodModel)
    while not HasAnimDictLoaded("amb@world_human_stand_fishing@idle_a") or not HasModelLoaded(rodModel) do
        Citizen.Wait(0)
    end

    SetCurrentPedWeapon(PlayerPedId(), 0xA2719263) 
    local bone = GetPedBoneIndex(PlayerPedId(), 60309)
    
    if fishingRod ~= nil then
        Sync.DeleteObject(fishingRod)
        fishingRod = nil
    end
    fishingRod = CreateObject(rodHash, 1.0, 1.0, 1.0, 1, 1, 0)

    ClearPedTasksImmediately(PlayerPedId())

    AttachEntityToEntity(fishingRod, PlayerPedId(), bone, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 2, 1)
    Wait(0)
    TaskPlayAnim(PlayerPedId(), "amb@world_human_stand_fishing@idle_a", "idle_c", 20.0, -8, -1, 17, 0, 0, 0, 0)

    local seconds = 0
    Citizen.CreateThread(function()
        while fishing do
            Citizen.Wait(5000)
            seconds = seconds + 5
            local chance = math.random() * 100
            if chance + seconds > 100 then
                fishing = false
                reelInFish()
            end
        end
    end)
end

AddEventHandler("np-inventory:itemUsed", function(item)
    if item == "fishingrod" then
        local coords = GetEntityCoords(PlayerPedId())
        local location = RPC.execute("fishing:getActiveLocation")
        if #(location.coords - coords) < 120 and not IsEntityInWater(PlayerPedId()) then
            startFishing()
        else
            TriggerEvent('DoLongHudText', "You can't fish here...", 2)
        end
        return
    end
    if not isValidFish(item) then return end
    TriggerEvent("inventory:removeItem", item, 1)
    local anim = "anim@heists@ornate_bank@hack"
    local type = "hack_enter"
    local fishName = "a_c_fish"
    local ped = PlayerPedId()
    Citizen.CreateThread(function()
        RequestAnimDict(anim)
        RequestModel(fishName)

        while not HasAnimDictLoaded(anim) or not HasModelLoaded(fishName) do
          Citizen.Wait(0)
        end
        TaskPlayAnim(ped, anim, type, 1.0, 1.0, 2575, 0, 0, 0, 0, 0)

        Citizen.Wait(800)

        local boneIndex = GetPedBoneIndex(ped, 0xfa70)
        local bonePos = GetWorldPositionOfEntityBone(ped, boneIndex)
        local obj = CreatePed(28, `a_c_fish`, bonePos.x, bonePos.y, bonePos.z, true, true, true)
        AttachEntityToEntity(obj, ped, GetPedBoneIndex(ped, 57005), 0.1, 0, -0.1, -45.0, 45.0, 0.0, true, true, false, true, 1, true)

        Citizen.Wait(1750)

        Sync.DetachEntity(obj)
        ClearPedTasksImmediately(ped)

        Citizen.Wait(2000)

        Sync.DeletePed(obj)
        SetModelAsNoLongerNeeded(fishName)
    end)
end)

AddEventHandler("np-fishing:jobEvent", function(pActivityId, pReferences, pObjectives, pCallback)
    jobCallback = pCallback
end)
