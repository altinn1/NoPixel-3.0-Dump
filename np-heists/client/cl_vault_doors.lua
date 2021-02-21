local doorConfig = nil
local doorEntities = {}
local doorStateRefreshes = {}

Citizen.CreateThread(function()
    Citizen.Wait(1000)
    doorConfig = RPC.execute("heists:getVaultDoorConfig")
    while true do
        Citizen.Wait(1000)
        for name, conf in pairs(doorConfig) do
            doorEntities[name] = GetClosestObjectOfType(conf.coords, 4.0, conf.hash, 0, 0, 0)
            if doorEntities[name] ~= 0 then
                if not doorStateRefreshes[name] then
                    doorStateRefreshes[name] = true
                    local heading = RPC.execute("heists:getDoorHeading", name)
                    ChangeDoorHeading(doorEntities[name], heading, conf.frameCount)
                end
            else
                doorStateRefreshes[name] = false
            end
        end
    end
end)

RegisterNetEvent("np-heists:updateDoorStatus")
AddEventHandler("np-heists:updateDoorStatus", function(name, heading, frameCount)
    if doorEntities[name] == nil then return end
    ChangeDoorHeading(doorEntities[name], heading, frameCount)
end)
