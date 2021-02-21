local sceneStarted = false
local scenesEnabled = false
local activePos = nil
local activeScenes = {}
local drawnScenes = {}
local playerCoords = nil

RegisterNetEvent("np-scenes:refreshScenes")
AddEventHandler("np-scenes:refreshScenes", function(data, removeId)
  activeScenes = data
  if removeId then
    drawnScenes[removeId] = nil
  end
end)

function drawScene(scene)
  if drawnScenes[scene.id] then return end
  drawnScenes[scene.id] = true
  Citizen.CreateThread(function()
    while scenesEnabled and drawnScenes[scene.id] do
      DrawText3D(scene.coords.x, scene.coords.y, scene.coords.z, scene.text, scene.color)
      Citizen.Wait(0)
    end
  end)
end

Citizen.CreateThread(function()
  while true do
    if scenesEnabled then
      playerCoords = GetEntityCoords(PlayerPedId())
      for _, scene in pairs(activeScenes) do
        if #(scene.coords - playerCoords) < scene.distance then
          drawScene(scene)
        else
          drawnScenes[scene.id] = nil
        end
      end
    end
    Wait(1000)
  end
end)

RegisterUICallback("np-ui:scenes:input", function(data, cb)
  cb({ data = {}, meta = { ok = true, message = '' } })
  exports['np-ui']:closeApplication('textbox')
  local text = data.values.text
  local color = data.values.color
  local distance = tonumber(data.values.distance) + 0.01
  if distance < 0.1 or distance > 10 then
    distance = 10
  end
  RPC.execute("np-scenes:addScene", {
    coords = activePos,
    text = text,
    distance = distance,
    color = color,
  })
end)

RegisterCommand("+startScene", function()
  if sceneStarted then -- end
    sceneStarted = false
    exports['np-ui']:openApplication('textbox', {
      callbackUrl = 'np-ui:scenes:input',
      key = 1,
      items = {
        {
          icon = "pencil-alt",
          label = "Text",
          name = "text",
        },
        {
          icon = "palette",
          label = "Color (white, red, green, yellow, blue)",
          name = "color",
        },
        {
          icon = "people-arrows",
          label = "Distance (0.1 - 10)",
          name = "distance",
        },
      },
      show = true,
    })
    return
  end
  sceneStarted = true
  Citizen.CreateThread(function()
    while sceneStarted do
      local hit, pos, _, _ = RayCastGamePlayCamera(10.0)
      if hit then
        DrawSphere(pos, 0.2, 255, 0, 0, 255)
        activePos = pos
      end
      Wait(0)
    end
  end)
end, false)

RegisterCommand("-startScene", function() end, false)

RegisterCommand("+enableScene", function() scenesEnabled = not scenesEnabled end, false)
RegisterCommand("-enableScene", function() end, false)

RegisterCommand("+deleteScene", function()
  RPC.execute("np-scenes:deleteScene", GetEntityCoords(PlayerPedId()))
end, false)
RegisterCommand("-deleteScene", function() end, false)

Citizen.CreateThread(function()
  exports["np-keybinds-1"]:registerKeyMapping("", "Scenes", "Start / Place Scene", "+startScene", "-startScene")
  exports["np-keybinds-1"]:registerKeyMapping("", "Scenes", "Enable / Disable", "+enableScene", "-enableScene")
  exports["np-keybinds-1"]:registerKeyMapping("", "Scenes", "Delete Closest Scene", "+deleteScene", "-deleteScene")
  Wait(5000)
  activeScenes = RPC.execute("np-scenes:getScenes")
end)
