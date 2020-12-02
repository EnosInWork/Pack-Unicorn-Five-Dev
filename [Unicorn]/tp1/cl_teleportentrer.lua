local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

ESX = nil
local PlayerData = {}

local Menu = {
    check = false,
    list = 1,
    num = 1,
    pro = 1,
}

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
     PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)  
	PlayerData.job = job  
	Citizen.Wait(5000) 
end)

RMenu.Add('larry', 'mainunicorn', RageUI.CreateMenu("Porte Unicorn", "MDR"))

----------- FONCTIONS
 
Citizen.CreateThread(function()
    while true do

        RageUI.IsVisible(RMenu:Get('larry', 'mainunicorn'), true, true, true, function()

            RageUI.Button("~u~Entrer", "", {RightLabel = "~u~>"},true, function(Hovered, Active, Selected)
                if (Selected) then
                    RageUI.CloseAll()
                local coords = GetEntityCoords(GetPlayerPed(-1))
                if GetDistanceBetweenCoords(coords, 125.77, -1279.02, 29.26, true) > 0.5 then
                    SetEntityCoords(GetPlayerPed(-1), 125.77, -1279.02, 29.26, 0.0, 0.0, 0.0, true)
                    SetEntityHeading(GetPlayerPed(-1), 125.0)
                end
            end
        end)

        end, function()
        end)

                    Citizen.Wait(0)
                end
            end)

            
local position = {
        {x = 126.07, y = -1282.24, z = 29.27}
}
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
            
                if dist <= 1.0 then
                    ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour entrer dans le bar")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('larry', 'mainunicorn'), not RageUI.Visible(RMenu:Get('larry', 'mainunicorn')))
                    end
                end
            end
        end
    end)

    Citizen.CreateThread(function()
        while ESX == nil do
            TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
            Citizen.Wait(100)
        end
    end)
