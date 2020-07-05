ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('bread', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bread', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_bread'))
end)

ESX.RegisterUsableItem('water', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('water', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 100000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_water'))
end)


ESX.RegisterUsableItem('joint', function(source) -- İTEM_İSMİ kısmına item ismini yazın (sigara) // replace your item with İTEM_İSMİ
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('joint', 1) -- kullanınca bir tane envanterden siler // removes 1 when used
	Citizen.Wait(8000) -- Birazcık bekliyoruzki kullandığı gibi stress değişmesin, animasyon oynasın // wait a bit so stress won't change instantly and animation can be played
	TriggerClientEvent('esx_status:remove', source, 'stress', 50000) -- MİKTAR kısmına miktar, OLAY kısmına ekleme ise "add", azaltama ise "remove" yazın // replace MİKTAR with the amount you want, and replace OLAY with "add" or "remove"
	TriggerClientEvent('esx_basicneeds:ANIM', source) -- eğer item kullanımında animasyon ya da farklı bir client event istiyorsanız burada triggerlayın // if you want animation or something else on item usage trigger it here
	TriggerClientEvent('esx:showNotification', source, "You have used One Joint") -- BİLDİRİM yerine eğer bildirim gitmesini istiyorsanız bir şey yazın // replace BİLDİRİM with the notification you want
end)

-- ŞABLON // TEMPLATE

ESX.RegisterUsableItem('cigarette', function(source) -- cigarette kısmına item ismini yazın (sigara) // replace your item with cigarette
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cigarette', 1) -- kullanınca bir tane envanterden siler // removes 1 when used

	TriggerClientEvent('esx_status:add', source, 'stress', 1) -- MİKTAR kısmına miktar, OLAY kısmına ekleme ise "add", azaltama ise "remove" yazın // replace MİKTAR with the amount you want, and replace OLAY with "add" or "remove"
	TriggerClientEvent('esx_basicneeds:ANIM', source) -- eğer item kullanımında animasyon ya da farklı bir client event istiyorsanız burada triggerlayın // if you want animation or something else on item usage trigger it here
	TriggerClientEvent('esx:showNotification', source, "ummm bohot stress hai jindegi mai sutta pii lo") -- BİLDİRİM yerine eğer bildirim gitmesini istiyorsanız bir şey yazın // replace BİLDİRİM with the notification you want
end)

-- // EXAMPLE: CIGARETTES

ESX.RegisterUsableItem('cigarette', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

    	xPlayer.removeInventoryItem('cigarette', 1)
	TriggerClientEvent('esx_basicneeds:cigarette', source) -- ilk önce animasyon oynatıyoruz // first we play animation
    	Citizen.Wait(8000) -- Birazcık bekliyoruzki kullandığı gibi stress değişmesin, animasyon oynasın // wait a bit so stress won't change instantly and animation can be played
	TriggerClientEvent('esx_status:remove', source, 'stress', 250000) -- stres düşüyor // lover stress
end) -- Bildirim eklemek istemedim // I didn't want to add a notification

-- To add animation to usage you need to open esx_basicneeds/client.lua
-- Animasyon eklemek için esx_basicneeds/client.lua yı açın



ESX.RegisterUsableItem('beer', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('beer', 1)
TriggerClientEvent('esx_status:add', source, 'thirst', 20000)
TriggerClientEvent('esx_basicneeds:onDrink', source)
xPlayer.showNotification('You just drunk one bottle of Bear !')
end)


-- ESX.RegisterUsableItem('cigarette', function(source)
    -- local xPlayer = ESX.GetPlayerFromId(source)
    -- xPlayer.removeInventoryItem('cigarette', 1)
    -- xPlayer.showNotification('That was cool which will reduce Stres.. right?')
-- end)

-- ESX.RegisterUsableItem('joint', function(source)
-- 	local xPlayer = ESX.GetPlayerFromId(source)
-- 	xPlayer.removeInventoryItem('joint', 1)
-- 	xPlayer.showNotification('You just used one Joint!')
-- end)



ESX.RegisterUsableItem('chips', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('chips', 1)
	TriggerClientEvent('esx_status:add', source, 'hunger', 120000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification('You have eatten one Packet of Chips !')
end)


ESX.RegisterUsableItem('cocacola', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('cocacola', 1)
	TriggerClientEvent('esx_status:add', source, 'thirst', 125000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification('You just drunk one can of CocoCola !')
end)

ESX.RegisterUsableItem('coffe', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('coffe', 1)
	TriggerClientEvent('esx_status:add', source, 'thirst', 125000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification('You just drunk one can of Coffe !')
end)

ESX.RegisterUsableItem('cupcake', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('cupcake', 1)
	TriggerClientEvent('esx_status:add', source, 'hunger', 125000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification('You just eatten one cupcake !')
end)

ESX.RegisterUsableItem('hamburger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('hamburger', 1)
	TriggerClientEvent('esx_status:add', source, 'hunger', 160000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification('You just eatten one Hamburger !')
end)

ESX.RegisterUsableItem('sandwich', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('sandwich', 1)
	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification('You just eatten one Sandwich !')
end)

ESX.RegisterUsableItem('chocolate', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('chocolate', 1)
	TriggerClientEvent('esx_status:add', source, 'hunger', 120000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification('You just eatten one Chocolate !')
end)



---------------------- ADD THIS TO "esx_basicneeds/server/main.lua" IF YOU WANT ITEM EFFECTS! ---------------------- 


ESX.RegisterUsableItem('icetea', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('icetea', 1)

    TriggerClientEvent('esx_status:add', source, 'thirst', 300000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_icetea'))
	
end)

ESX.RegisterUsableItem('limonade', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('limonade', 1)

    TriggerClientEvent('esx_status:add', source, 'thirst', 300000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_limonade'))
	
end)

ESX.RegisterUsableItem('drpepper', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('drpepper', 1)

    TriggerClientEvent('esx_status:add', source, 'thirst', 350000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_drpepper'))
	
end)

ESX.RegisterUsableItem('energy', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('energy', 1)

    TriggerClientEvent('esx_status:add', source, 'thirst', 400000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_energy'))
	
end)

ESX.RegisterUsableItem('mixapero', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
	
	xPlayer.removeInventoryItem('mixapero', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
    TriggerClientEvent('esx_status:remove', source, 'thirst', 50000)
    TriggerClientEvent('esx_basicneeds:onEat', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_mixapero'))
	
end)

ESX.RegisterUsableItem('vodka', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('vodka', 1)

    TriggerClientEvent('esx_status:add', source, 'drunk', 300000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_vodka'))
	
end)

ESX.RegisterUsableItem('jager', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('jager', 1)

    TriggerClientEvent('esx_status:add', source, 'drunk', 320000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_jager'))
	
end)

ESX.RegisterUsableItem('rhum', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('rhum', 1)

    TriggerClientEvent('esx_status:add', source, 'drunk', 240000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_rhum'))
	
end)

ESX.RegisterUsableItem('whisky', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('whisky', 1)

    TriggerClientEvent('esx_status:add', source, 'drunk', 350000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_whisky'))
	
end)

ESX.RegisterUsableItem('martini', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('martini', 1)

    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_martini'))
	
end)

ESX.RegisterUsableItem('vodkaenergy', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('vodkaenergy', 1)

    TriggerClientEvent('esx_status:add', source, 'drunk', 500000)
    TriggerClientEvent('esx_status:remove', source, 'hunger', 1000)
    TriggerClientEvent('esx_status:remove', source, 'thirst', 7000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_vodkaenergy'))
	
end)

ESX.RegisterUsableItem('whisky', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('whisky', 1)
	TriggerClientEvent('esx_status:add', source, 'thirst', 140000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification('You just drunk one bottle of Whisky !')
end)


-- This is a example animaton on client side for eating chocolate donut :D
RegisterNetEvent('esx_basicneeds:onDonut2Eat')
AddEventHandler('esx_basicneeds:onDonut2Eat', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or "prop_donut_02"
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict("mp_player_inteat@burger", function()
				TaskPlayAnim(playerPed, "mp_player_inteat@burger", "mp_player_int_eat_burger_fp", 8.0, -8, -1, 49, 0, 0, 0, 0)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)
	end
end)

-- UMARIM YARDIMCI OLMUŞTUR // HOPE THIS HELPED
-- utku
TriggerEvent('es:addGroupCommand', 'heal', 'admin', function(source, args, user)
	-- heal another player - don't heal source
	if args[1] then
		local playerId = tonumber(args[1])

		-- is the argument a number?
		if playerId then
			-- is the number a valid player?
			if GetPlayerName(playerId) then
				print(('esx_basicneeds: %s healed %s'):format(GetPlayerIdentifier(source, 0), GetPlayerIdentifier(playerId, 0)))
				TriggerClientEvent('esx_basicneeds:healPlayer', playerId)
				TriggerClientEvent('chat:addMessage', source, { args = { '^5HEAL', 'You have been healed.' } })
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Player not online.' } })
			end
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Invalid player id.' } })
		end
	else
		print(('esx_basicneeds: %s healed self'):format(GetPlayerIdentifier(source, 0)))
		TriggerClientEvent('esx_basicneeds:healPlayer', source)
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = 'Heal a player, or yourself - restores thirst, hunger and health.', params = {{name = 'playerId', help = '(optional) player id'}}})