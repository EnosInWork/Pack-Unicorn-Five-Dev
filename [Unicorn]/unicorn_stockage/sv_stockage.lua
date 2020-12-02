ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

---------------- Alcool

RegisterNetEvent('prendre:whisky')
AddEventHandler('prendre:whisky', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('whisky', 3)
    else
    end
end)

RegisterNetEvent('prendre:vodka')
AddEventHandler('prendre:vodka', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('vodka', 3)
    else
    end
end)

RegisterNetEvent('prendre:rhum')
AddEventHandler('prendre:rhum', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('rhum', 3)
    else
    end
end)

RegisterNetEvent('prendre:mojito')
AddEventHandler('prendre:mojito', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('mojito', 3)
    else
    end
end)

RegisterNetEvent('prendre:tequila')
AddEventHandler('prendre:tequila', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('tequila', 3)
    else
    end
end)

RegisterNetEvent('prendre:martini')
AddEventHandler('prendre:martini', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('martini', 3)
    else
    end
end)

RegisterNetEvent('prendre:cocaw')
AddEventHandler('prendre:cocaw', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('whiskycoca', 3)
    else
    end
end)

RegisterNetEvent('prendre:limonade')
AddEventHandler('prendre:limonade', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('limonade', 3)
    else
    end
end)

RegisterNetEvent('prendre:mojito')
AddEventHandler('prendre:mojito', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('mojito', 3)
    else
    end
end)

RegisterNetEvent('prendre:drpepper')
AddEventHandler('prendre:drpepper', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('drpepper', 3)
    else
    end
end)

RegisterNetEvent('prendre:edrink')
AddEventHandler('prendre:edrink', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('energy', 3)
    else
    end
end)

RegisterNetEvent('prendre:jusfruit')
AddEventHandler('prendre:jusfruit', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('jusfruit', 3)
    else
    end
end)