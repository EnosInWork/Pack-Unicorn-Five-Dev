ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
TriggerEvent('esx_society:registerSociety', 'unicorn', 'unicorn', 'society_unicorn', 'society_unicorn', 'society_unicorn', {type = 'public'})

RegisterServerEvent('nehco:getStockItem')
AddEventHandler('nehco:getStockItem', function(itemName, count)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local sourceItem = xPlayer.getInventoryItem(itemName)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_unicorn', function(inventory)
		local inventoryItem = inventory.getItem(itemName)

		-- is there enough in the society?
		if count > 0 and inventoryItem.count >= count then
		
			-- can the player carry the said amount of x item?
			if sourceItem.limit ~= -1 and (sourceItem.count + count) > sourceItem.limit then
				TriggerClientEvent('esx:showNotification', _source, _U('quantity_invalid'))
			else
				inventory.removeItem(itemName, count)
				xPlayer.addInventoryItem(itemName, count)
				TriggerClientEvent('esx:showNotification', _source, _U('have_withdrawn', count, inventoryItem.label))
			--	if Config.EnableJobLogs == true then
			--		TriggerEvent('esx_joblogs:AddInLog', 'unicorn', 'getSharedInventory', xPlayer.name, count, inventoryItem.label)
			--	end
			end
		else
			TriggerClientEvent('esx:showNotification', _source, _U('quantity_invalid'))
		end
	end)
end)


ESX.RegisterServerCallback('nehco:getStockItems', function(source, cb)
	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_unicorn', function(inventory)
		cb(inventory.items)
	end)
end)

ESX.RegisterServerCallback('nehco:getPlayerInventory', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local items   = xPlayer.inventory

	cb( { items = items } )
end)
RegisterServerEvent('nehco:putStockItems')
AddEventHandler('nehco:putStockItems', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)
	local sourceItem = xPlayer.getInventoryItem(itemName)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_unicorn', function(inventory)
		local inventoryItem = inventory.getItem(itemName)

		-- does the player have enough of the item?
		if sourceItem.count >= count and count > 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_deposited', count, inventoryItem.label))
		--	if Config.EnableJobLogs == true then
		--		TriggerEvent('esx_joblogs:AddInLog', 'unicorn', 'putStockItems', xPlayer.name, count, inventoryItem.label)
		--	end
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
		end
	end)
end)

RegisterServerEvent('AnnonceOuvert')
AddEventHandler('AnnonceOuvert', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers	= ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Unicorn', '~p~Annonce', 'L\'Unicorn est désormais ouvert vient te faire plaisir chez nous !', 'CHAR_STRIPPER_NIKKI', 8)
	end
end)

RegisterServerEvent('AnnonceFermer')
AddEventHandler('AnnonceFermer', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers	= ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Unicorn', '~p~Annonce', 'L\'Unicorn est désormais fermé à plus tard !', 'CHAR_STRIPPER_NIKKI', 8)
	end
end)

