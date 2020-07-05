local beds = {
    { x = 314.45, y = -584.47, z = 43.3, h = 156.92, taken = false, model = 1631638868 },
    { x = 317.61, y = -585.69, z = 43.3, h = 158.24, taken = false, model = 1631638868 },
    { x = 322.57, y = -587.45, z = 43.3, h = 155.96, taken = false, model = 1631638868 },
    { x = 324.39, y = -582.53, z = 43, h = 339.16, taken = false, model = 1631638868 },
    { x = 319.50, y = -580.71, z = 43, h = 336.30, taken = false, model = 1631638868 },
    { x = 313.98, y = -578.77, z = 43, h = 335.93, taken = false, model = 1631638868 },
    { x = 309.48, y = -577.03, z = 43, h = 339.12, taken = false, model = 1631638868 },
    { x = 307.60, y = -582.09, z = 43, h = 162.66, taken = false, model = 1631638868 },
    { x = 310.98, y = -583.25, z = 43, h = 161.82, taken = false, model = 1631638868 },
}

local bedsTaken = {}
local injuryBasePrice = 250
ESX             = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('playerDropped', function()
    if bedsTaken[source] ~= nil then
        beds[bedsTaken[source]].taken = false
    end
end)

AddEventHandler('playerDropped', function()
    if bedsTaken[source] ~= nil then
        beds[bedsTaken[source]].taken = false
    end
end)

RegisterServerEvent('mythic_hospital:server:RequestBed')
AddEventHandler('mythic_hospital:server:RequestBed', function()
    for k, v in pairs(beds) do
        if not v.taken then
            v.taken = true
            bedsTaken[source] = k
            TriggerClientEvent('mythic_hospital:client:SendToBed', source, k, v)
            return
        end
    end

    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'No beds available.' })
end)

RegisterServerEvent('mythic_hospital:server:RPRequestBed')
AddEventHandler('mythic_hospital:server:RPRequestBed', function(plyCoords)
    local foundbed = false
    for k, v in pairs(beds) do
        local distance = #(vector3(v.x, v.y, v.z) - plyCoords)
        if distance < 3.0 then
            if not v.taken then
                v.taken = true
                foundbed = true
                TriggerClientEvent('mythic_hospital:client:RPSendToBed', source, k, v)
                return
            else
                TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'That bed is taken.' })
            end
        end
    end

    if not foundbed then
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You are not near a hospital bed.' })
    end
end)

RegisterServerEvent('mythic_hospital:server:EnteredBed')
AddEventHandler('mythic_hospital:server:EnteredBed', function()
    local src = source
    local injuries = GetCharsInjuries(src)

    local totalBill = injuryBasePrice

    if injuries ~= nil then
        for k, v in pairs(injuries.limbs) do
            if v.isDamaged then
                totalBill = totalBill + (injuryBasePrice * v.severity)
            end
        end

        if injuries.isBleeding > 0 then
            totalBill = totalBill + (injuryBasePrice * injuries.isBleeding)
        end
    end

    -- YOU NEED TO IMPLEMENT YOUR FRAMEWORKS BILLING HERE
	local xPlayer = ESX.GetPlayerFromId(src)
    xPlayer.removeBank(totalBill)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You were billed for $' .. totalBill ..'.' })
    TriggerClientEvent('mythic_hospital:client:FinishServices', src)
end)

RegisterServerEvent('mythic_hospital:server:LeaveBed')
AddEventHandler('mythic_hospital:server:LeaveBed', function(id)
    beds[id].taken = false
end)
