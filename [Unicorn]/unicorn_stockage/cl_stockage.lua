ESX = nil
local PlayerData = {}

local progressValue = 1
local progressMax = 5

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
     PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)  
	PlayerData.job = job  
	Citizen.Wait(5000) 
end)

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(100)
    end
end)

local Menu = {
    check = false,
    action = {
        'MDR',
        'LOL'
    },
    pro = 1,
    pro2 = 2,
    list = 1
}
---------------- FONCTIONS ------------------

RMenu.Add('oui', 'frigo', RageUI.CreateMenu("Stockage Unicorn", " "))
RMenu.Add('oui', 'alcool', RageUI.CreateSubMenu(RMenu:Get('oui', 'main'), "Alcool de l'Unicorn", " "))
Citizen.CreateThread(function()
    while true do

        RageUI.IsVisible(RMenu:Get('oui', 'frigo'), true, true, true, function()
            
            RageUI.Button("~p~Prendre du whisky","Boissons du ~b~Frigo~s~ de l'unicorn", {RightLabel = "~u~>>"}, true, function(Hovered, Active, Selected)
                if Selected then
                    TriggerServerEvent('prendre:whisky')
                end
            end)
        
            RageUI.Button("~p~Prendre de la Vodka","Boissons du ~b~Frigo~s~ de l'unicorn", {RightLabel = "~u~>>"}, true, function(Hovered, Active, Selected)
                if Selected then
                    TriggerServerEvent('prendre:vodka')
                end
            end)

            RageUI.Button("~p~Prendre du Rhum","Boissons du ~b~Frigo~s~ de l'unicorn", {RightLabel = "~u~>>"}, true, function(Hovered, Active, Selected)
                if Selected then
                    TriggerServerEvent('prendre:rhum')
                end
            end)

            RageUI.Button("~p~Prendre du Tequila","Boissons du ~b~Frigo~s~ de l'unicorn", {RightLabel = "~u~>>"}, true, function(Hovered, Active, Selected)
                if Selected then
                    TriggerServerEvent('prendre:tequila')
                end
            end)

            RageUI.Button("~p~Prendre du Martini Blanc","Boissons du ~b~Frigo~s~ de l'unicorn", {RightLabel = "~u~>>"}, true, function(Hovered, Active, Selected)
                if Selected then
                    TriggerServerEvent('prendre:martini')
                end
            end)

            RageUI.Button("~p~Prendre du Whisky Coca","Boissons du ~b~Frigo~s~ de l'unicorn", {RightLabel = "~u~>>"}, true, function(Hovered, Active, Selected)
                if Selected then
                    TriggerServerEvent('prendre:cocaw')
                end
            end)

            RageUI.Button("~p~Prendre de la Limonade","Boissons du ~b~Frigo~s~ de l'unicorn", {RightLabel = "~u~>>"}, true, function(Hovered, Active, Selected)
                if Selected then
                    TriggerServerEvent('prendre:limonade')
                end
            end)

            RageUI.Button("~p~Prendre du Mojito","Boissons du ~b~Frigo~s~ de l'unicorn", {RightLabel = "~u~>>"}, true, function(Hovered, Active, Selected)
                if Selected then
                    TriggerServerEvent('prendre:mojito')
                end
            end)

            RageUI.Button("~p~Prendre du Dr. Pepper","Boissons du ~b~Frigo~s~ de l'unicorn", {RightLabel = "~u~>>"}, true, function(Hovered, Active, Selected)
                if Selected then
                    TriggerServerEvent('prendre:drpepper')
                end
            end)

            RageUI.Button("~p~Prendre du Energy Drink","Boissons du ~b~Frigo~s~ de l'unicorn", {RightLabel = "~u~>>"}, true, function(Hovered, Active, Selected)
                if Selected then
                    TriggerServerEvent('prendre:edrink')
                end
            end)

            RageUI.Button("~p~Prendre du Jus de Fruits","Boissons du ~b~Frigo~s~ de l'unicorn", {RightLabel = "~u~>>"}, true, function(Hovered, Active, Selected)
                if Selected then
                    TriggerServerEvent('prendre:jusfruit')
                end
            end)

        end, function()
        end, 1)
                        Citizen.Wait(0)
                                end
                            end)

---------------------------------------------

local position = {
    {x = 131.93, y = -1285.37, z = 29.27}
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(position) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
        
            if dist <= 1.0 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour accéder au ~b~Frigo")
                if IsControlJustPressed(1,51) then
                    RageUI.Visible(RMenu:Get('oui', 'frigo'), not RageUI.Visible(RMenu:Get('oui', 'frigo')))
                end
            end
        end
    end
end)
