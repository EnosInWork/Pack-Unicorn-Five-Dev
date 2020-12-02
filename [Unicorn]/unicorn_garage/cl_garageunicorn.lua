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
local ped = PlayerPedId()
local vehicle = GetVehiclePedIsIn( ped, false )
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
     PlayerData = xPlayer
end)
RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)  
	PlayerData.job = job  
	Citizen.Wait(5000) 
end)
RMenu.Add('ahhdak', 'unicorn', RageUI.CreateMenu("Véhicules Unicorn", "Développer Par ahhdakstocrate"))
Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('ahhdak', 'unicorn'), true, true, true, function()

            RageUI.Button("~p~Schafter V12 de l'Unicorn","", {RightLabel = "~u~>>"}, true, function(Hovered, Active, Selected)
                if Selected then
                    RageUI.CloseAll()
                    FreezeEntityPosition(GetPlayerPed(-1), true)
                    Citizen.Wait(1)
            cam = CreateCam("DEFAULT_SCRIPTED_Camera", 1)
            SetCamCoord(cam, 138.91, -1275.45, 30.91, 0.0, 0.0, 146.455696105957, 15.0, false, 0)
            RenderScriptCams(1000, 1000, 1000, 1000, 1000)
            PointCamAtCoord(cam, 138.91, -1275.45, 30.91)
            DisplayRadar(false)
            Citizen.Wait(1200)
                ApparitionVehiculeVanilla('schafter5')
                local plate = GetVehicleNumberPlateText(vehicle)
                TriggerServerEvent('esx_vehiclelock:givekey', 'no', plate) 
                Citizen.Wait(800)
                FreezeEntityPosition(GetPlayerPed(-1), false)
                PlaySoundFrontend(-1, "Zoom_Out", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1)
          RenderScriptCams(false, true, 500, true, true)
          PlaySoundFrontend(-1, "CAR_BIKE_WHOOSH", "MP_LOBBY_SOUNDS", 1)
          FreezeEntityPosition(GetPlayerPed(-1), false)
       Citizen.Wait(500)
         SetCamActive(cam, false)
         DestroyCam(cam, true)
         DisplayRadar(true)      
         TaskPedSlideToCoord(PlayerPedId(), 142.07, -1263.44, 29.27, 122.6, 1.0)
        end
    end)
    
RageUI.Button("~p~Véhicule du Patron de l'Unicorn","", {RightLabel = "~u~>>"}, true, function(Hovered, Active, Selected)
    if Selected then
        
        FreezeEntityPosition(GetPlayerPed(-1), true)
        Citizen.Wait(1)
cam = CreateCam("DEFAULT_SCRIPTED_Camera", 1)
SetCamCoord(cam, 138.91, -1275.45, 30.91, 0.0, 0.0, 146.455696105957, 15.0, false, 0)
RenderScriptCams(1000, 1000, 1000, 1000, 1000)
PointCamAtCoord(cam, 138.91, -1275.45, 30.91)
DisplayRadar(false)
Citizen.Wait(1200)
    ApparitionVehiculeVanilla('schlagen')
    local plate = GetVehicleNumberPlateText(vehicle)
	TriggerServerEvent('esx_vehiclelock:givekey', 'no', plate) 
    Citizen.Wait(800)
    FreezeEntityPosition(GetPlayerPed(-1), false)
    PlaySoundFrontend(-1, "Zoom_Out", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1)
RenderScriptCams(false, true, 500, true, true)
PlaySoundFrontend(-1, "CAR_BIKE_WHOOSH", "MP_LOBBY_SOUNDS", 1)
FreezeEntityPosition(GetPlayerPed(-1), false)
Citizen.Wait(500)
SetCamActive(cam, false)
DestroyCam(cam, true)
DisplayRadar(true)      
TaskPedSlideToCoord(PlayerPedId(), 142.07, -1263.44, 29.27, 122.6, 1.0)
end
end)
    end, function()
    end)
                    Citizen.Wait(0)
                            end
                        end)
    Citizen.CreateThread(function()
        while ESX == nil do
            TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
            Citizen.Wait(100)
        end
    end)

    local potition = {
        {x = 136.94, y = -1278.41, z = 29.35}
}
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)

            for k in pairs(potition) do
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, potition[k].x, potition[k].y, potition[k].z)
                DrawMarker(20, 136.94, -1278.41, 28.35+1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 0, 0, 255, 255, 0, 1, 2, 0, nil, nil, 0)
                if dist <= 1.0 then
                    ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour accèder au garage de l'Unicorn")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('ahhdak', 'unicorn'), not RageUI.Visible(RMenu:Get('ahhdak', 'unicorn')))
                    end
                end
            end
        end
    end)
    ---- Fonction spawn
    function ApparitionVehiculeVanilla(car)
        local car = GetHashKey(car)
        RequestModel(car)
        while not HasModelLoaded(car) do
            RequestModel(car)
            Citizen.Wait(50)   
        end
        local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), false))
        local vehicle = CreateVehicle(car, 140.53, -1264.72, 28.65, 206.1, false, false)   ---- spawn postion 
        if checkboxnotif == false then 
        else
        end
        SetEntityAsNoLongerNeeded(vehicle) 
        if checkbox == false then 
        SetPedIntoVehicle(PlayerPedId(), vehicle, -1) 
        destorycam()
        SetVehicleNumberPlateText(vehicle, "Unicorn") 
        SetEntityAsNoLongerNeeded(vehicle) 
        else
        SetVehicleNumberPlateText(vehicle, "Unicorn") 
        SetEntityAsNoLongerNeeded(vehicle) 
        end
    end  
    function destorycam() 	
        RenderScriptCams(false, false, 0, 1, 0)
        DestroyCam(cam, false)
    end

    ------- Rangement du véhicule

    function RangerVeh(vehicle)
        local playerPed = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsIn(playerPed, false)
        local props = ESX.Game.GetVehicleProperties(vehicle)
        local current = GetPlayersLastVehicle(GetPlayerPed(-1), true)
        local engineHealth = GetVehicleEngineHealth(current)
    
        if IsPedInAnyVehicle(GetPlayerPed(-1), true) then 
            if engineHealth < 890 then
                ESX.ShowNotification("~r~Votre véhicule est trop abimé, vous ne pouvez pas le ranger.")
            else
                ESX.Game.DeleteVehicle(vehicle)
                TriggerServerEvent('esx_vehiclelock:deletekeyjobs', 'no', plate)
                ESX.ShowNotification("~g~Véhicule stocké.")
            end
        end
    end

    local possupprvehiculeunicorn = {
        {x = 143.63, y = -1285.15, z = 29.33}
    }
    
    Citizen.CreateThread(function()
        local attente = 150
        while true do
            Wait(attente)
    
            for k in pairs(possupprvehiculeunicorn) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, possupprvehiculeunicorn[k].x, possupprvehiculeunicorn[k].y, possupprvehiculeunicorn[k].z)
    
                if dist <= 2.0 then
                    attente = 1
                        if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
                            ESX.ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour ~r~ranger~s~ le véhicule de l'unicorn")
                            if IsControlJustPressed(1,51) then 
                                RangerVeh(vehicle)
                            end
                            break
                        else
                            attente = 150 
                    end
                end
            end
        end
    end)