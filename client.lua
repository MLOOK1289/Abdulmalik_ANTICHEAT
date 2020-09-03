RegisterNetEvent("2swshit:cleanareavehy")
RegisterNetEvent("2swshit:cleanareapedsy")
RegisterNetEvent("2swshit:cleanareaentityy")
RegisterNetEvent("2swshit:openmenuy")
RegisterNetEvent("2swshit:adminmenuenabley")
RegisterNetEvent("Mshit:invalid")

local titolo = (name)
local pisellone = PlayerId(-1)
local pisello = GetPlayerName(pisellone)
local esp = true
local Enabled = true
local verif = false
local verifcheck = 0

TriggerServerEvent("2swshit:adminmenuenable")



local swshit = {}

swshit.debug = false

local function RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 2000
    result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
    result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
    result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

    return result
end

local menus = {}
local keys = {up = 172, down = 173, left = 174, right = 175, select = 176, back = 177}
local optionCount = 0

local currentKey = nil
local currentMenu = nil

local menuWidth = 0.21
local titleHeight = 0.10
local titleYOffset = 0.03
local titleScale = 0.9
local buttonHeight = 0.050
local buttonFont = 0
local buttonScale = 0.370
local buttonTextXOffset = 0.005
local buttonTextYOffset = 0.005
local bytexd = "Made BY Abdulmalik"
local function debugPrint(text)
    if swshit.debug then
        Citizen.Trace("[swshit] " .. tostring(text))
    end
end



function Draw3DText(text, radius, pos)
    if Vdist2(GetEntityCoords(PlayerPedId(), false), pos.x,pos.y,pos.z) < (radius) then
        local onScreen, _x, _y = World3dToScreen2d(pos.x,pos.y,pos.z)
        local p = GetEntityCoords(PlayerPedId(), false)
        local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, pos.x,pos.y,pos.z, 1)
        local scale = (1 / distance)
        local fov = (1 / GetGameplayCamFov()) * 75
        local scale = scale * fov
        if onScreen then
            SetTextScale(tonumber(1.0), tonumber(0.35 * (1)))
            SetTextFont(0)
            SetTextProportional(true)
            SetTextColour(255, 255, 255, 255)
            SetTextOutline()
            SetTextEntry("STRING")
            SetTextCentre(true)
            AddTextComponentString(text)
            DrawText(_x,_y)
        end
    end
end




local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
  return coroutine.wrap(function()
    local iter, id = initFunc()
    if not id or id == 0 then
      disposeFunc(iter)
      return
    end
    
    local enum = {handle = iter, destructor = disposeFunc}
    setmetatable(enum, entityEnumerator)
    
    local next = true
    repeat
      coroutine.yield(id)
      next, id = moveFunc(iter)
    until not next
    
    enum.destructor, enum.handle = nil, nil
    disposeFunc(iter)
  end)
end

function EnumerateObjects()
  return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end

function EnumeratePeds()
  return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end

function EnumerateVehicles()
  return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end

function EnumeratePickups()
  return EnumerateEntities(FindFirstPickup, FindNextPickup, EndFindPickup)
end

function GetAllEnumerators()
  return {vehicles = EnumerateVehicles, objects = EnumerateObjects, peds = EnumeratePeds, pickups = EnumeratePickups}
end

function DisplayEntityInformation(entity)
    local owner = NetworkGetEntityOwner(entity)
    local id = "~r~Owner: " .. GetPlayerName(owner) .. "~w~"
    id = owner ~= -1 and id or "~g~World Object~w~"
    id = id .. " "
    Draw3DText(id, 100.0, GetEntityCoords(entity))
end

RegisterCommand((ip), function() 
    displayInfo = not displayInfo
    if (displayInfo) then 
        Citizen.CreateThread(function()
            while displayInfo do 
                Citizen.Wait(0)
                for k,v in pairs(GetAllEnumerators()) do 
                    local enum = v
                    for entity in enum() do 
                        DisplayEntityInformation(entity)
                    end
                end
            end
        end)
    end
end, false)

local function setMenuProperty(id, property, value)
    if id and menus[id] then
        menus[id][property] = value
        debugPrint(id .. " menu property changed: { " .. tostring(property) .. ", " .. tostring(value) .. " }")
    end
end

local function isMenuVisible(id)
    if id and menus[id] then
        return menus[id].visible
    else
        return false
    end
end

local function setMenuVisible(id, visible, holdCurrent)
    if id and menus[id] then
        setMenuProperty(id, "visible", visible)

        if not holdCurrent and menus[id] then
            setMenuProperty(id, "currentOption", 1)
        end

        if visible then
            if id ~= currentMenu and isMenuVisible(currentMenu) then
                setMenuVisible(currentMenu, false)
            end

            currentMenu = id
        end
    end
end

local function drawText(text, x, y, font, color, scale, center, shadow, alignRight)
    SetTextColour(color.r, color.g, color.b, color.a)
    SetTextFont(font)
    SetTextScale(scale, scale)

    if shadow then
        SetTextDropShadow(2, 2, 0, 0, 0)
    end

    if menus[currentMenu] then
        if center then
            SetTextCentre(center)
        elseif alignRight then
            SetTextWrap(menus[currentMenu].x, menus[currentMenu].x + menuWidth - buttonTextXOffset)
            SetTextRightJustify(true)
        end
    end
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end

local function drawRect(x, y, width, height, color)
    DrawRect(x, y, width, height, color.r, color.g, color.b, color.a)
end

local function drawTitle()
    if menus[currentMenu] then
        local x = menus[currentMenu].x + menuWidth / 2
        local y = menus[currentMenu].y + titleHeight / 2

        if menus[currentMenu].titleBackgroundSprite then
            DrawSprite(
                menus[currentMenu].titleBackgroundSprite.dict,
                menus[currentMenu].titleBackgroundSprite.name,
                x,
                y,
                menuWidth,
                titleHeight,
                0.,
                255,
                255,
                255,
                255
            )
        else
            drawRect(x, y, menuWidth, titleHeight, menus[currentMenu].titleBackgroundColor)
        end

        drawText(
            menus[currentMenu].title,
            x,
            y - titleHeight / 2 + titleYOffset,
            menus[currentMenu].titleFont,
            menus[currentMenu].titleColor,
            titleScale,
            true
        )
    end
end

local function drawSubTitle()
    if menus[currentMenu] then
        local x = menus[currentMenu].x + menuWidth / 2
        local y = menus[currentMenu].y + titleHeight + buttonHeight / 2

        local subTitleColor = {
            r = menus[currentMenu].titleBackgroundColor.r,
            g = menus[currentMenu].titleBackgroundColor.g,
            b = menus[currentMenu].titleBackgroundColor.b,
            a = 255
        }

        drawRect(x, y, menuWidth, buttonHeight, menus[currentMenu].subTitleBackgroundColor)
        drawText(
            menus[currentMenu].subTitle,
            menus[currentMenu].x + buttonTextXOffset,
            y - buttonHeight / 2 + buttonTextYOffset,
            buttonFont,
            subTitleColor,
            buttonScale,
            false
        )

        if optionCount > menus[currentMenu].maxOptionCount then
            drawText(
                tostring(menus[currentMenu].currentOption) .. " / " .. tostring(optionCount),
                menus[currentMenu].x + menuWidth,
                y - buttonHeight / 2 + buttonTextYOffset,
                buttonFont,
                subTitleColor,
                buttonScale,
                false,
                false,
                true
            )
        end
    end
end

local function drawButton(text, subText)
    local x = menus[currentMenu].x + menuWidth / 2
    local multiplier = nil

    if
        menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and
            optionCount <= menus[currentMenu].maxOptionCount
     then
        multiplier = optionCount
    elseif
        optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and
            optionCount <= menus[currentMenu].currentOption
     then
        multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount)
    end

    if multiplier then
        local y = menus[currentMenu].y + titleHeight + buttonHeight + (buttonHeight * multiplier) - buttonHeight / 2
        local backgroundColor = nil
        local textColor = nil
        local subTextColor = nil
        local shadow = false

        if menus[currentMenu].currentOption == optionCount then
            backgroundColor = menus[currentMenu].menuFocusBackgroundColor
            textColor = menus[currentMenu].menuFocusTextColor
            subTextColor = menus[currentMenu].menuFocusTextColor
        else
            backgroundColor = menus[currentMenu].menuBackgroundColor
            textColor = menus[currentMenu].menuTextColor
            subTextColor = menus[currentMenu].menuSubTextColor
            shadow = true
        end

        drawRect(x, y, menuWidth, buttonHeight, backgroundColor)
        drawText(
            text,
            menus[currentMenu].x + buttonTextXOffset,
            y - (buttonHeight / 2) + buttonTextYOffset,
            buttonFont,
            textColor,
            buttonScale,
            false,
            shadow
        )

        if subText then
            drawText(
                subText,
                menus[currentMenu].x + buttonTextXOffset,
                y - buttonHeight / 2 + buttonTextYOffset,
                buttonFont,
                subTextColor,
                buttonScale,
                false,
                shadow,
                true
            )
        end
    end
end

function swshit.CreateMenu(id, title)
    menus[id] = {}
    menus[id].title = title
    menus[id].subTitle = bytexd

    menus[id].visible = false

    menus[id].previousMenu = nil

    menus[id].aboutToBeClosed = false

    menus[id].x = 0.78
    menus[id].y = 0.40

    menus[id].currentOption = 1
    menus[id].maxOptionCount = 10
    menus[id].titleFont = 6
    menus[id].titleColor = {r = 255, g = 255, b = 255, a = 255}
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(0)
                local ra = RGBRainbow(1.0)
                menus[id].titleBackgroundColor = {r = 255, g = 0, b = 0, a = 105}
                menus[id].menuFocusBackgroundColor = {r = 255, g = 0, b = 0, a = 105}
            end
        end
    )
    menus[id].titleBackgroundSprite = nil

    menus[id].menuTextColor = {r = 255, g = 255, b = 255, a = 255}
    menus[id].menuSubTextColor = {r = 189, g = 189, b = 189, a = 255}
    menus[id].menuFocusTextColor = {r = 255, g = 255, b = 255, a = 255}
    menus[id].menuBackgroundColor = {r = 0, g = 0, b = 0, a = 100}

    menus[id].subTitleBackgroundColor = {
        r = menus[id].menuBackgroundColor.r,
        g = menus[id].menuBackgroundColor.g,
        b = menus[id].menuBackgroundColor.b,
        a = 255
    }

    menus[id].buttonPressedSound = {name = "~h~~r~> ~s~SELECT", set = "HUD_FRONTEND_DEFAULT_SOUNDSET"}

    debugPrint(tostring(id) .. " menu created")
end

function swshit.CreateSubMenu(id, parent, subTitle)
    if menus[parent] then
        swshit.CreateMenu(id, menus[parent].title)

        if subTitle then
            setMenuProperty(id, "subTitle", (subTitle))
        else
            setMenuProperty(id, "subTitle", (menus[parent].subTitle))
        end

        setMenuProperty(id, "previousMenu", parent)

        setMenuProperty(id, "x", menus[parent].x)
        setMenuProperty(id, "y", menus[parent].y)
        setMenuProperty(id, "maxOptionCount", menus[parent].maxOptionCount)
        setMenuProperty(id, "titleFont", menus[parent].titleFont)
        setMenuProperty(id, "titleColor", menus[parent].titleColor)
        setMenuProperty(id, "titleBackgroundColor", menus[parent].titleBackgroundColor)
        setMenuProperty(id, "titleBackgroundSprite", menus[parent].titleBackgroundSprite)
        setMenuProperty(id, "menuTextColor", menus[parent].menuTextColor)
        setMenuProperty(id, "menuSubTextColor", menus[parent].menuSubTextColor)
        setMenuProperty(id, "menuFocusTextColor", menus[parent].menuFocusTextColor)
        setMenuProperty(id, "menuFocusBackgroundColor", menus[parent].menuFocusBackgroundColor)
        setMenuProperty(id, "menuBackgroundColor", menus[parent].menuBackgroundColor)
        setMenuProperty(id, "subTitleBackgroundColor", menus[parent].subTitleBackgroundColor)
    else
        debugPrint(
            "Failed to create " .. tostring(id) .. " submenu: " .. tostring(parent) .. " parent menu doesn't exist"
        )
    end
end

function swshit.CurrentMenu()
    return currentMenu
end

function swshit.OpenMenu(id)
    if id and menus[id] then
        PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
        setMenuVisible(id, true)

        if menus[id].titleBackgroundSprite then
            RequestStreamedTextureDict(menus[id].titleBackgroundSprite.dict, false)
            while not HasStreamedTextureDictLoaded(menus[id].titleBackgroundSprite.dict) do
                Citizen.Wait(0)
            end
        end

        debugPrint(tostring(id) .. " menu opened")
    else
        debugPrint("Failed to open " .. tostring(id) .. " menu: it doesn't exist")
    end
end

function swshit.IsMenuOpened(id)
    return isMenuVisible(id)
end



function swshit.CloseMenu()
    if menus[currentMenu] then
        if menus[currentMenu].aboutToBeClosed then
            menus[currentMenu].aboutToBeClosed = false
            setMenuVisible(currentMenu, false)
            debugPrint(tostring(currentMenu) .. " menu closed")
            PlaySoundFrontend(-1, "QUIT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
            optionCount = 0
            currentMenu = nil
            currentKey = nil
        else
            menus[currentMenu].aboutToBeClosed = true
            debugPrint(tostring(currentMenu) .. " menu about to be closed")
        end
    end
end

function swshit.Button(text, subText)
    local buttonText = text
    if subText then
        buttonText = "{ " .. tostring(buttonText) .. ", " .. tostring(subText) .. " }"
    end

    if menus[currentMenu] then
        optionCount = optionCount + 1

        local isCurrent = menus[currentMenu].currentOption == optionCount

        drawButton(text, subText)

        if isCurrent then
            if currentKey == keys.select then
                PlaySoundFrontend(
                    -1,
                    menus[currentMenu].buttonPressedSound.name,
                    menus[currentMenu].buttonPressedSound.set,
                    true
                )
                debugPrint(buttonText .. " button pressed")
                return true
            elseif currentKey == keys.left or currentKey == keys.right then
                PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
            end
        end

        return false
    else
        debugPrint("Failed to create " .. buttonText .. " button: " .. tostring(currentMenu) .. " menu doesn't exist")

        return false
    end
end

function swshit.MenuButton(text, id)
    if menus[id] then
        if swshit.Button(text) then
            setMenuVisible(currentMenu, false)
            setMenuVisible(id, true, true)

            return true
        end
    else
        debugPrint(
            "Failed to create " .. tostring(text) .. " menu button: " .. tostring(id) .. " submenu doesn't exist"
        )
    end

    return false
end



function TSE(a, b, c, d, e, f, g, h, i, m)
    TriggerServerEvent(a, b, c, d, e, f, g, h, i, m)
end

function swshit.Display()
    if isMenuVisible(currentMenu) then
        if menus[currentMenu].aboutToBeClosed then
            swshit.CloseMenu()
        else
            ClearAllHelpMessages()

            drawTitle()
            drawSubTitle()

            currentKey = nil

            if IsDisabledControlJustPressed(0, keys.down) then
                PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

                if menus[currentMenu].currentOption < optionCount then
                    menus[currentMenu].currentOption = menus[currentMenu].currentOption + 1
                else
                    menus[currentMenu].currentOption = 1
                end
            elseif IsDisabledControlJustPressed(0, keys.up) then
                PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

                if menus[currentMenu].currentOption > 1 then
                    menus[currentMenu].currentOption = menus[currentMenu].currentOption - 1
                else
                    menus[currentMenu].currentOption = optionCount
                end
            elseif IsDisabledControlJustPressed(0, keys.left) then
                currentKey = keys.left
            elseif IsDisabledControlJustPressed(0, keys.right) then
                currentKey = keys.right
            elseif IsDisabledControlJustPressed(0, keys.select) then
                currentKey = keys.select
            elseif IsDisabledControlJustPressed(0, keys.back) then
                if menus[menus[currentMenu].previousMenu] then
                    PlaySoundFrontend(-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                    setMenuVisible(menus[currentMenu].previousMenu, true)
                else
                    swshit.CloseMenu()
                end
            end

            optionCount = 0
        end
    end
end


local LynxIcS = "LynxX"
local LynxIcZ = titolo
local advm = "AdvM"

local function DrawTxt(text, x, y)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextScale(0.0, 0.4)
    SetTextDropshadow(1, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end



Citizen.CreateThread(
    function()
        FreezeEntityPosition(entity, false)
        local ModSelected = nil
        local currentItemIndex = 1
        local selectedItemIndex = 1
        local spawninside = false
        swshit.CreateMenu(LynxIcS, LynxIcZ)
        swshit.CreateSubMenu(advm, LynxIcS, bytexd)

        local SelectedPlayer

        while Enabled do
            if swshit.IsMenuOpened(LynxIcS) then
                TSE("")
                DrawTxt("" , 0.78, 0.4)
                if swshit.MenuButton("~p~Server Options", advm) then
                end




                swshit.Display()
            elseif swshit.IsMenuOpened(advm) then
                if swshit.Button("Clean Area", "~h~Vehicles") then
                    TSE("2swshit:cleanareaveh")
                elseif swshit.Button("Clean Area", "~h~Peds") then
                    TSE("2swshit:cleanareapeds")
                elseif swshit.Button("Clean Area", "~h~Objects") then
                    TSE("2swshit:cleanareaentity")
                end


                swshit.Display()
            end
            Citizen.Wait(0)
        end
    end
)

AddEventHandler(
    "2swshit:cleanareavehy",
    function()
        for vehicle in EnumerateVehicles() do
            SetEntityAsMissionEntity(GetVehiclePedIsIn(vehicle, true), 1, 1)
            DeleteEntity(GetVehiclePedIsIn(vehicle, true))
            SetEntityAsMissionEntity(vehicle, 1, 1)
            DeleteEntity(vehicle)
        end
    end
)

AddEventHandler(
    "2swshit:cleanareapedsy",
    function()
        PedStatus = 0
        for ped in EnumeratePeds() do
            PedStatus = PedStatus + 1
            if not (IsPedAPlayer(ped)) then
                RemoveAllPedWeapons(ped, true)
                DeleteEntity(ped)
            end
        end
    end
)

AddEventHandler(
    "2swshit:cleanareaentityy",
    function()
        objst = 0
        for obj in EnumerateObjects() do
            objst = objst + 1
            DeleteEntity(obj)
        end
    end
)

AddEventHandler(
    "2swshit:openmenuy",
    function()
        swshit.OpenMenu(LynxIcS)
    end
)
