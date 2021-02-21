local hackAnimDict = "anim@heists@ornate_bank@hack"
local trolleyConfig = nil

function GetTrolleyConfig(name)
    if not trolleyConfig then
        trolleyConfig = RPC.execute("heists:getTrolleySpawnConfig")
    end
    return trolleyConfig[name]
end

local function loadDicts()
    RequestAnimDict(hackAnimDict)
    RequestModel("hei_prop_hst_laptop")
    RequestModel("hei_p_m_bag_var22_arm_s")
    RequestModel("hei_prop_heist_card_hack_02")
    while not HasAnimDictLoaded(hackAnimDict)
        or not HasModelLoaded("hei_prop_hst_laptop")
        or not HasModelLoaded("hei_p_m_bag_var22_arm_s")
        or not HasModelLoaded("hei_prop_heist_card_hack_02") do
        Wait(0)
    end
end

function ChangeDoorHeading(door, toHeading, frameCount)
    Citizen.CreateThread(function()
        frameCount = frameCount or 60
        FreezeEntityPosition(door, true)
        local current = GetEntityHeading(door)
        if math.abs(current - toHeading) < 1 then return end
        local diff = math.abs(current - toHeading)
        local degPer = diff / frameCount
        local count = 0
        SetEntityCollision(door, false, false)
        while count <= frameCount do
            count = count + 1
            if current > toHeading then
                SetEntityHeading(door, current - (degPer * count))
            else
                SetEntityHeading(door, current + (degPer * count))
            end
            Wait(0)
        end
        SetEntityHeading(door, toHeading)
        FreezeEntityPosition(door, true)
        Wait(0)
        SetEntityCollision(door, true, true)
    end)
end

local minigameResult = nil
local minigameUICallbackUrl = "np-ui:heistsPanelMinigameResult"
RegisterUICallback(minigameUICallbackUrl, function(data, cb)
    minigameResult = data.success
    cb({ data = {}, meta = { ok = true, message = "done" } })
end)
function UseBankPanel(panelCoords, panelHeading, location)
    local ply = PlayerPedId()
    local plyCoords = GetEntityCoords(ply)
    local p = promise:new()

    ClearPedTasksImmediately(ply)
    Wait(0)
    TaskGoStraightToCoord(ply, panelCoords, 2.0, -1, panelHeading)
    loadDicts()
    Wait(0)
    while GetIsTaskActive(ply, 35) do
        Wait(0)
    end
    ClearPedTasksImmediately(ply)
    Wait(0)
    SetEntityHeading(ply, panelHeading)
    Wait(0)
    TaskPlayAnimAdvanced(ply, hackAnimDict, "hack_enter", panelCoords, 0, 0, 0, 1.0, 0.0, 8300, 0, 0.3, false, false, false)
    Wait(0)
    SetEntityHeading(ply, panelHeading)
    while IsEntityPlayingAnim(ply, hackAnimDict, "hack_enter", 3) do
        Wait(0)
    end
    local laptop = CreateObject(`hei_prop_hst_laptop`, GetOffsetFromEntityInWorldCoords(ply, 0.2, 0.6, 0.0), 1, 1, 0)
    Wait(0)
    SetEntityRotation(laptop, GetEntityRotation(ply, 2), 2, true)
    PlaceObjectOnGroundProperly(laptop)
    Wait(0)
    TaskPlayAnim(ply, hackAnimDict, "hack_loop", 1.0, 0.0, -1, 1, 0, false, false, false)

    Wait(1000)

    local gameDuration = 8000
    local gameRoundsTotal = 4
    local numberOfShapes = 4
    if location == "paleto" or location == "vault_upper" then
        gameRoundsTotal = 5
        numberOfShapes = 5
        gameDuration = 9000
    end
    if location == "vault_lower" then
        gameRoundsTotal = 6
        numberOfShapes = 6
        gameDuration = 10000
    end
    exports["np-ui"]:openApplication("minigame-captcha", {
        gameFinishedEndpoint = minigameUICallbackUrl,
        gameDuration = gameDuration,
        gameRoundsTotal = gameRoundsTotal,
        numberOfShapes = numberOfShapes,
    })

    Citizen.CreateThread(function()
        while minigameResult == nil do
            Citizen.Wait(1000)
        end
        if minigameResult then
            TriggerEvent(
              'phone:emailReceived',
              'Dark Market',
              '#A-1001',
              'Nice! You bypassed the captcha. Give me a few moments to open the door!'
          )
        end
        p:resolve(minigameResult)
        minigameResult = nil
        Sync.DeleteObject(laptop)
        ClearPedTasksImmediately(ply)
    end)

    return p
end

UTK = {}
function Loot(currentgrab)
    Grab2clear = false
    Grab3clear = false
    UTK.grabber = true
    Trolley = nil
    local ped = PlayerPedId()
    local model = "hei_prop_heist_cash_pile"

    if currentgrab == "cash" then
        Trolley = GetClosestObjectOfType(GetEntityCoords(PlayerPedId()), 1.0, `ch_prop_ch_cash_trolly_01c`, false, false, false) --GetClosestObjectOfType(GetEntityCoords(PlayerPedId()), 1.0, 269934519, false, false, false)
    else
        Trolley = GetClosestObjectOfType(GetEntityCoords(PlayerPedId()), 1.0, `ch_prop_gold_trolly_01c`, false, false, false)
        model = "ch_prop_gold_bar_01a"
    -- elseif currentgrab == 5 then
    --     Trolley = GetClosestObjectOfType(GetEntityCoords(PlayerPedId()), 1.0, 881130828, false, false, false)
    --     model = "ch_prop_vault_dimaondbox_01a"
    end
    local CashAppear = function()
        local pedCoords = GetEntityCoords(ped)
        local grabmodel = GetHashKey(model)

        RequestModel(grabmodel)
        while not HasModelLoaded(grabmodel) do
            Citizen.Wait(0)
        end
        local grabobj = CreateObject(grabmodel, pedCoords, true)

        FreezeEntityPosition(grabobj, true)
        SetEntityInvincible(grabobj, true)
        SetEntityNoCollisionEntity(grabobj, ped)
        SetEntityVisible(grabobj, false, false)
        AttachEntityToEntity(grabobj, ped, GetPedBoneIndex(ped, 60309), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 0, true)
        local startedGrabbing = GetGameTimer()

        Citizen.CreateThread(function()
            while GetGameTimer() - startedGrabbing < 37000 do
                Citizen.Wait(0)
                DisableControlAction(0, 73, true)
                if HasAnimEventFired(ped, GetHashKey("CASH_APPEAR")) then
                    if not IsEntityVisible(grabobj) then
                        SetEntityVisible(grabobj, true, false)
                    end
                end
                if HasAnimEventFired(ped, GetHashKey("RELEASE_CASH_DESTROY")) then
                    if IsEntityVisible(grabobj) then
                        SetEntityVisible(grabobj, false, false)
                        -- if currentgrab < 4 then
                        --     TriggerServerEvent("utk_oh:rewardCash")
                        -- elseif currentgrab == 4 then
                        --     TriggerServerEvent("utk_oh:rewardGold")
                        -- elseif currentgrab == 5 then
                        --     TriggerServerEvent("utk_oh:rewardDia")
                        -- end
                    end
                end
            end
            DeleteObject(grabobj)
        end)
    end
    local emptyobj = `ch_prop_gold_trolly_empty`

    if IsEntityPlayingAnim(Trolley, "anim@heists@ornate_bank@grab_cash", "cart_cash_dissapear", 3) then
        return
    end
    local baghash = GetHashKey("hei_p_m_bag_var22_arm_s")

    RequestAnimDict("anim@heists@ornate_bank@grab_cash")
    RequestModel(baghash)
    RequestModel(emptyobj)
    while not HasAnimDictLoaded("anim@heists@ornate_bank@grab_cash") and not HasModelLoaded(emptyobj) and not HasModelLoaded(baghash) do
        Citizen.Wait(0)
    end
    while not NetworkHasControlOfEntity(Trolley) do
        Citizen.Wait(0)
        NetworkRequestControlOfEntity(Trolley)
    end
    GrabBag = CreateObject(GetHashKey("hei_p_m_bag_var22_arm_s"), GetEntityCoords(PlayerPedId()), true, false, false)
    Grab1 = NetworkCreateSynchronisedScene(GetEntityCoords(Trolley), GetEntityRotation(Trolley), 2, false, false, 1065353216, 0, 1.3)
    NetworkAddPedToSynchronisedScene(ped, Grab1, "anim@heists@ornate_bank@grab_cash", "intro", 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(GrabBag, Grab1, "anim@heists@ornate_bank@grab_cash", "bag_intro", 4.0, -8.0, 1)
    -- SetPedComponentVariation(ped, 5, 0, 0, 0)
    NetworkStartSynchronisedScene(Grab1)
    Citizen.Wait(1500)
    CashAppear()
    if not Grab2clear then
        Grab2 = NetworkCreateSynchronisedScene(GetEntityCoords(Trolley), GetEntityRotation(Trolley), 2, false, false, 1065353216, 0, 1.3)
        NetworkAddPedToSynchronisedScene(ped, Grab2, "anim@heists@ornate_bank@grab_cash", "grab", 1.5, -4.0, 1, 16, 1148846080, 0)
        NetworkAddEntityToSynchronisedScene(GrabBag, Grab2, "anim@heists@ornate_bank@grab_cash", "bag_grab", 4.0, -8.0, 1)
        NetworkAddEntityToSynchronisedScene(Trolley, Grab2, "anim@heists@ornate_bank@grab_cash", "cart_cash_dissapear", 4.0, -8.0, 1)
        NetworkStartSynchronisedScene(Grab2)
        Citizen.Wait(37000)
    end
    if not Grab3clear then
        Grab3 = NetworkCreateSynchronisedScene(GetEntityCoords(Trolley), GetEntityRotation(Trolley), 2, false, false, 1065353216, 0, 1.3)
        NetworkAddPedToSynchronisedScene(ped, Grab3, "anim@heists@ornate_bank@grab_cash", "exit", 1.5, -4.0, 1, 16, 1148846080, 0)
        NetworkAddEntityToSynchronisedScene(GrabBag, Grab3, "anim@heists@ornate_bank@grab_cash", "bag_exit", 4.0, -8.0, 1)
        NetworkStartSynchronisedScene(Grab3)
        NewTrolley = CreateObject(emptyobj, GetEntityCoords(Trolley) + vector3(0.0, 0.0, - 0.985), true, false, false)
        SetEntityRotation(NewTrolley, GetEntityRotation(Trolley))
        while not NetworkHasControlOfEntity(Trolley) do
            Citizen.Wait(0)
            NetworkRequestControlOfEntity(Trolley)
        end
        DeleteObject(Trolley)
        while DoesEntityExist(Trolley) do
            Citizen.Wait(0)
            DeleteObject(Trolley)
        end
        PlaceObjectOnGroundProperly(NewTrolley)
    end
    Citizen.Wait(1800)
    if DoesEntityExist(GrabBag) then
        DeleteEntity(GrabBag)
    end
    -- SetPedComponentVariation(ped, 5, 45, 0, 0)
    RemoveAnimDict("anim@heists@ornate_bank@grab_cash")
    SetModelAsNoLongerNeeded(emptyobj)
    SetModelAsNoLongerNeeded(GetHashKey("hei_p_m_bag_var22_arm_s"))
end

function LoopSkill(count)
    local loopCount = 0
    while loopCount < count do
        loopCount = loopCount + 1
        local finished = exports["np-ui"]:taskBarSkill(math.random(1000, 4000), math.random(5, 10))
        if finished ~= 100 then
            return false
        end
        Wait(100)
    end
    return true
end
