--------------------------------------------
------ Napisane przez wojtek.cfg#0349 ------
----------------- ©  2019 ------------------
--------------------------------------------

-- LEPIEJ NIE DOTYKAJ -- CHYBA ŻE WIESZ CO ROBISZ --


ESX 					= nil



TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('wojtek_ubereats:hajs')
AddEventHandler('wojtek_ubereats:hajs', function()
	-- Definicje hajsu

	--
    local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local h1 = Config.Wyplata1
	local h2 = Config.Wyplata2
	local h3 = math.random(h1,h2)
	local ht = Config.wyplataNielosowa

	if Config.losuj == true then
		xPlayer.addMoney(h3)
	hp = h3
	elseif Config.losuj == false then
		xPlayer.addMoney(ht)
	hp = ht
	end

	np = 0
	
end)

RegisterServerEvent('wojtek_ubereats:napiwek')
AddEventHandler('wojtek_ubereats:napiwek', function()
	-- Definicje hajsu

	--
    local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local n1 = Config.Napiwek1
	local n2 = Config.Napiwek2
	local n3 = math.random(n1,n2)
	local nt = Config.NapiwekNielosowy

	if Config.losuj == true then
		xPlayer.addMoney(n3)
	np = n3
	elseif Config.losuj == false then
		xPlayer.addMoney(nt)
	np = nt
	end

end)

RegisterServerEvent('wojtek_ubereats:podsumowanietwojejosoby')
AddEventHandler('wojtek_ubereats:podsumowanietwojejosoby', function()

	if np > 0 then
	TriggerClientEvent('esx:showNotification', source, 'you receive ~g~'..hp..'$~w~ Payment and~g~ '..np..'$~w~ tip')
	else
	TriggerClientEvent('esx:showNotification', source, 'you receive ~g~'..hp..'$~w~ Payment and~r~ 0$~w~ tip')
	end
end)

RegisterServerEvent('wojtek_ubereats:zarejestrujhajs')
AddEventHandler('wojtek_ubereats:zarejestrujhajs', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local price = Config.kosztrejestracji


	if xPlayer.getMoney() >= price then
		xPlayer.removeMoney(price)
		TriggerClientEvent('wojtek_ubereats:rejestracjasukces', source)
		TriggerClientEvent('wojtek_ubereats:pow', source)
	else
		TriggerClientEvent("pNotify:SendNotification", source,{
			text = ('You dont have enough money'),
			type = "error",
			timeout = (10000),
			layout = "bottomCenter",
			queue = "ubereats",
			animation = {
			open = "gta_effects_fade_in",
			close = "gta_effects_fade_out"
		}})
	end



end)


--------------------------------------------
------ Napisane przez wojtek.cfg#0349 ------
----------------- ©  2019 ------------------
--------------------------------------------