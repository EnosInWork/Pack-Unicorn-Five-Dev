ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent('UnicornOuvert')
AddEventHandler('UnicornOuvert', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers	= ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Vanilla Unicorn', '~b~Informations Unicorn', 'Le Bar Vanilla Unicorn est ~g~ouvert~s~!', 'CHAR_STRETCH', 2)
	end
end)

RegisterServerEvent('UnicornFerme')
AddEventHandler('UnicornFerme', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers	= ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Vanilla Unicorn', '~b~Informations Unicorn', 'Le Bar Vanilla Unicorn est ~r~fermée~s~!', 'CHAR_STRETCH', 2)
	end
end)


RegisterNetEvent('Payer:Kit')
AddEventHandler('Payer:Kit', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 10000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('medikit', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('Payer:Kit2')
AddEventHandler('Payer:Kit2', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 20000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('medikit', 2)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('Payer:Kit3')
AddEventHandler('Payer:Kit3', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 30000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('medikit', 3)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)


RegisterNetEvent('Payer:Kit4')
AddEventHandler('Payer:Kit4', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 40000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('medikit', 4)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('Payer:Kit5')
AddEventHandler('Payer:Kit5', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 50000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('medikit', 5)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)


------------

--1

RegisterNetEvent('Payer:Bandage1')
AddEventHandler('Payer:Bandage1', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 1000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bandage', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

--2

RegisterNetEvent('Payer:Bandage2')
AddEventHandler('Payer:Bandage2', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 2000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bandage', 2)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

-- 3

RegisterNetEvent('Payer:Bandage3')
AddEventHandler('Payer:Bandage3', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 3000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bandage', 3)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

-- 4

RegisterNetEvent('Payer:Bandage4')
AddEventHandler('Payer:Bandage4', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 4000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bandage', 4)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

-- 5

RegisterNetEvent('Payer:Bandage5')
AddEventHandler('Payer:Bandage5', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bandage', 5)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

-- 6

RegisterNetEvent('Payer:Bandage6')
AddEventHandler('Payer:Bandage6', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 6000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bandage', 6)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

-- 7

RegisterNetEvent('Payer:Bandage7')
AddEventHandler('Payer:Bandage7', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 7000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bandage', 7)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

-- 8

RegisterNetEvent('Payer:Bandage8')
AddEventHandler('Payer:Bandage8', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 8000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bandage', 8)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

-- 9

RegisterNetEvent('Payer:Bandage9')
AddEventHandler('Payer:Bandage9', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 9000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bandage', 9)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

-- 10

RegisterNetEvent('Payer:Bandage10')
AddEventHandler('Payer:Bandage10', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 10000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bandage', 10)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

-- 11

RegisterNetEvent('Payer:Bandage11')
AddEventHandler('Payer:Bandage11', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 11000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bandage', 11)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

-- 12

RegisterNetEvent('Payer:Bandage12')
AddEventHandler('Payer:Bandage12', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 12000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bandage', 12)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

-- 13

RegisterNetEvent('Payer:Bandage13')
AddEventHandler('Payer:Bandage13', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 13000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bandage', 13)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

-- 14

RegisterNetEvent('Payer:Bandage14')
AddEventHandler('Payer:Bandage14', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 14000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bandage', 14)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

-- 15

RegisterNetEvent('Payer:Bandage15')
AddEventHandler('Payer:Bandage15', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 15000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bandage', 15)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)