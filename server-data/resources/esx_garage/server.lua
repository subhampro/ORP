ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_garage:viewVehicles')
AddEventHandler('esx_garage:viewVehicles', function(garage)
    local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	local vehicles = {}

	MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner=@identifier',{['@identifier'] = xPlayer.identifier}, function(result) 
        for k, v in pairs(result) do
            table.insert(vehicles, v)
        end
        if #vehicles >= 1 then
            if json.decode(vehicles[1].vehicle).model then
                TriggerClientEvent('esx_garage:view', src, vehicles, garage)
            else
                pNotify(src, Strings['no_vehicle'], 'error', 1500)
            end
        else
            pNotify(src, Strings['no_vehicle'], 'error', 1500)
        end
	end)
end)

RegisterServerEvent('esx_garage:impound')
AddEventHandler('esx_garage:impound', function(vehicleSpawn)
    local xPlayer = ESX.GetPlayerFromId(source)
    MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner=@identifier AND state=false',{['@identifier'] = xPlayer.identifier}, function(result) 
        local impounded = {}
        for k, v in pairs(result) do
            table.insert(impounded, v)
        end
        TriggerClientEvent('esx_garage:openImpound', xPlayer.source, vehicleSpawn, impounded)
    end)
end)

RegisterServerEvent('esx_garage:storeVehicle')
AddEventHandler('esx_garage:storeVehicle', function(vehicleInfo, vehicleDamages)
    local xPlayer = ESX.GetPlayerFromId(source)
    local owner = MySQL.Sync.fetchScalar("SELECT owner FROM owned_vehicles WHERE plate=@plate", {['@plate'] = vehicleInfo.plate})
    if owner then
        if owner == xPlayer.identifier then
            MySQL.Sync.execute("UPDATE owned_vehicles SET vehicle=@vehicle, damages=@damages, state=true WHERE plate=@plate",{['@vehicle'] = json.encode(vehicleInfo), ['@damages'] = vehicleDamages, ['@plate'] = vehicleInfo.plate})
            TriggerClientEvent('esx_garage:stored', xPlayer.source)
        else
            pNotify(xPlayer.source, Strings['not_your'], 'error', 1500)
        end
    else
        pNotify(xPlayer.source, Strings['not_your'], 'error', 1500)
    end
end)

RegisterServerEvent('esx_garage:takeOut')
AddEventHandler('esx_garage:takeOut', function(vehicleInfo, garage)
    local xPlayer = ESX.GetPlayerFromId(source)
    MySQL.Sync.execute("UPDATE owned_vehicles SET state=false WHERE plate=@plate",{['@plate'] = vehicleInfo.plate})
    TriggerClientEvent('esx_garage:spawnVehicle', xPlayer.source, vehicleInfo, Config.Entrances[garage].coords, Config.Entrances[garage].heading)
end)

RegisterServerEvent('esx_garage:getImpounded')
AddEventHandler('esx_garage:getImpounded', function(coords, heading, car)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getMoney() >= Config.ImpoundPrice then
        xPlayer.removeMoney(Config.ImpoundPrice)
        TriggerClientEvent('esx_garage:spawnVehicle', xPlayer.source, car, coords, heading)
    else
        pNotify(xPlayer.source, Strings['no_money'], 'error', 2500)
    end
end)

pNotify = function(src, message, messagetype, messagetimeout)
    TriggerClientEvent("pNotify:SendNotification", src, {
        text = (message),
        type = messagetype,
        timeout = (messagetimeout),
        layout = "bottomCenter",
        queue = "global"
    })
end