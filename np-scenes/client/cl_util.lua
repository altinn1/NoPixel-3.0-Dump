local pi, sin, cos, abs = math.pi, math.sin, math.cos, math.abs
local function RotationToDirection(rotation)
  local piDivBy180 = pi / 180
  local adjustedRotation = vector3(
    piDivBy180 * rotation.x,
    piDivBy180 * rotation.y,
    piDivBy180 * rotation.z
  )
  local direction = vector3(
    -sin(adjustedRotation.z) * abs(cos(adjustedRotation.x)),
    cos(adjustedRotation.z) * abs(cos(adjustedRotation.x)),
    sin(adjustedRotation.x)
  )
  return direction
end

local function rgb(r, g, b)
  return { r = r, g = g, b = b, alpha = 255 }
end
local colors = {
  ["red"] = rgb(255, 0, 0),
  ["yellow"] = rgb(255, 255, 0),
  ["green"] = rgb(0, 255, 0),
  ["blue"] = rgb(0, 0, 255),
  ["white"] = rgb(255, 255, 255),
}
function DrawText3D(x, y, z, text, c)
  -- local color = color or { r = 220, g = 220, b = 220, alpha = 255 } -- Color of the text 
  -- local color = color or { r = 220, g = 220, b = 220, alpha = 255 } -- Color of the text 
  local onScreen,_x,_y = World3dToScreen2d(x,y,z)
  local px,py,pz = table.unpack(GetGameplayCamCoord())
  local dist = #(vector3(px,py,pz) - vector3(x,y,z))

  local scale = ((1/dist)*2)*(1/GetGameplayCamFov())*55

  if onScreen then
      -- Formalize the text
      local color = colors[c] or colors.white
      SetTextColour(color.r, color.g, color.b, color.alpha)
      SetTextScale(0.0*scale, 0.50*scale)
      SetTextFont(0)
      -- SetTextProportional(1)
      SetTextCentre(true)
      SetTextDropshadow(1, 0, 0, 0, 255)
      -- Diplay the text
      SetTextEntry("STRING")
      AddTextComponentString(text)
      EndTextCommandDisplayText(_x, _y)
      
      -- Calculate width and height
      BeginTextCommandWidth("STRING")
      local height = GetTextScaleHeight(1*scale, 0) - 0.005
      local width = EndTextCommandGetWidth(text)
      local length = string.len(text)
      local factor = (length * .005) + .05
      DrawRect(_x, (_y+scale/45) - 0.002, (factor *scale) + .001, height, 0, 0, 0, 100)
  end
end

function RayCastGamePlayCamera(distance)
  local cameraRotation = GetGameplayCamRot()
  local cameraCoord = GetGameplayCamCoord()
  --local right, direction, up, pos = GetCamMatrix(GetRenderingCam())
  --local cameraCoord = pos
  local direction = RotationToDirection(cameraRotation)
  local destination = vector3(
    cameraCoord.x + direction.x * distance,
    cameraCoord.y + direction.y * distance,
    cameraCoord.z + direction.z * distance
  )
  local ray = StartShapeTestRay(cameraCoord.x, cameraCoord.y, cameraCoord.z,
  destination.x, destination.y, destination.z, 17, -1, 0)
  local rayHandle, hit, endCoords, surfaceNormal, entityHit = GetShapeTestResult(ray)
  return hit, endCoords, entityHit, surfaceNormal
end

-- GetUserInput function inspired by vMenu (https://github.com/TomGrobbe/vMenu/blob/master/vMenu/CommonFunctions.cs)
function GetUserInput(windowTitle, defaultText, maxInputLength)
  blockinput = true
  -- Create the window title string.
  local resourceName = string.upper(GetCurrentResourceName())
  local textEntry = resourceName .. "_WINDOW_TITLE"
  if windowTitle == nil then
    windowTitle = "Enter:"
  end
  AddTextEntry(textEntry, windowTitle)

  -- Display the input box.
  DisplayOnscreenKeyboard(1, textEntry, "", defaultText or "", "", "", "", maxInputLength or 30)
  Wait(0)
  -- Wait for a result.
  while true do
    local keyboardStatus = UpdateOnscreenKeyboard();
    if keyboardStatus == 3 then -- not displaying input field anymore somehow
      blockinput = false
      return nil
    elseif keyboardStatus == 2 then -- cancelled
      blockinput = false
      return nil
    elseif keyboardStatus == 1 then -- finished editing
      blockinput = false
      return GetOnscreenKeyboardResult()
    else
      Wait(0)
    end
  end
end

function randomTargetSelectionInput()
  local randomTargetSelection = GetUserInput("Should the laser randomly select it's next target point? (Y/n)", "", 1)
  if randomTargetSelection == nil then return nil end
  if randomTargetSelection == "" or string.lower(randomTargetSelection) == "y" then return true end
  if string.lower(randomTargetSelection) == "n" then return false end
  return randomTargetSelection
end

function DrawSphere(pos, radius, r, g, b, a)
  DrawMarker(28, pos.x, pos.y, pos.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, radius, radius, radius, r, g, b, a, false, false, 2, nil, nil, false)
end
