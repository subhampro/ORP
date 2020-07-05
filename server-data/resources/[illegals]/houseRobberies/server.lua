local ESX = nil
local robbableItems = {
 [1] = {chance = 9, id = 0, name = 'Cash', quantity = math.random(1, 900)}, -- really common
 [2] = {chance = 9, id = 'WEAPON_PISTOL', name = 'Pistol', isWeapon = true}, -- rare
 [3] = {chance = 9, id = 'scratchoff', name = 'Lottery Ticket', quantity = math.random(1, 3)}, -- really common
 [4] = {chance = 9, id = 'weed_pooch', name = 'Bag of Weed', quantity = 1}, -- rare
 [5] = {chance = 9, id = '2ct_gold_chain', name = '2CT Gold Chain (P)', quantity = 1}, -- rare
 [6] = {chance = 9, id = '5ct_gold_chain', name = '5CT Gold Chain (P)', quantity = 1}, -- rare
 [7] = {chance = 9, id = '8ct_gold_chain', name = '8CT Gold Chain (P)', quantity = 1}, -- rare
 [8] = {chance = 9, id = '10ct_gold_chain', name = '10CT Gold Chain (P)', quantity = 1}, -- rare
 [9] = {chance = 9, id = 'drill_bit', name = 'Drill Bit', quantity = 1}, -- rare
 [10] = {chance = 1, id = 'sunglasses', name = 'Oakley Sunglasses (P)', quantity = 1}, -- rare
 [11] = {chance = 1, id = 'gameboy', name = 'Gameboy (P)', quantity = 1}, -- rare
 [12] = {chance = 1, id = 'casio_watch', name = 'Casio Watch (P)', quantity = 1}, -- rare
 [13] = {chance = 1, id = 'nokia_phone', name = 'Nokia Phone (P)', quantity = 1}, -- rare
 [14] = {chance = 1, id = 'samsung_s8', name = 'Samsung S8 (P)', quantity = 1}, -- rare
 [15] = {chance = 1, id = 'apple_iphone', name = 'Apple iPhone (P)', quantity = 1}, -- rare
 [16] = {chance = 1, id = 'steel', name = 'Steel', quantity = 1}, -- rare
 [17] = {chance = 1, id = 'screen', name = 'Screen', quantity = 1}, -- rare
 [18] = {chance = 1, id = 'scrap_metal', name = 'Scrap Metal', quantity = 1}, -- rare
 [19] = {chance = 1, id = 'rubber', name = 'Rubber', quantity = 1}, -- rare
 [20] = {chance = 1, id = 'rolling_paper', name = 'Rolling Paper', quantity = 1}, -- rare
 [21] = {chance = 1, id = 'glass', name = 'Glass', quantity = 1}, -- rare
 [22] = {chance = 1, id = 'fuse', name = 'Fuse', quantity = 1}, -- rare
 [23] = {chance = 1, id = 'clutch', name = 'Clutch', quantity = 1}, -- rare
 [24] = {chance = 1, id = 'battery', name = 'Battery', quantity = 1}, -- rare
 [25] = {chance = 1, id = 'breadboard', name = 'Breadboard (P)', quantity = 1}, -- rare
 [26] = {chance = 1, id = 'white_pearl', name = 'White Pearl (P)', quantity = 1}, -- rare
 [27] = {chance = 1, id = 'coke_pooch', name = 'Bag of Coke', quantity = 1}, -- rare
 [28] = {chance = 1, id = 'xtc', name = 'X', quantity = 1}, -- rare
 [29] = {chance = 1, id = 'electronics', name = 'Electronics (P)', quantity = 1}, -- rare
 [30] = {chance = 1, id = 'electronic_kit', name = 'Electronic Kit', quantity = 1}, -- rare
}

--[[chance = 1 is very common, the higher the value the less the chance]]--

TriggerEvent('esx:getSharedObject', function(obj)
 ESX = obj
end)

ESX.RegisterUsableItem('advancedlockpick', function(source) --Hammer high time to unlock but 100% call cops
 local source = tonumber(source)
 local xPlayer = ESX.GetPlayerFromId(source)
 TriggerClientEvent('houseRobberies:attempt', source, xPlayer.getInventoryItem('advancedlockpick').count)
end)

RegisterServerEvent('houseRobberies:removeLockpick')
AddEventHandler('houseRobberies:removeLockpick', function()
 local source = tonumber(source)
 local xPlayer = ESX.GetPlayerFromId(source)
 xPlayer.removeInventoryItem('advancedlockpick', 1)
 --TriggerClientEvent('chatMessage', source, '^1Your lockpick has bent out of shape')
 TriggerClientEvent('notification', source, 'The lockpick bent out of shape.', 2)
end)

RegisterServerEvent('houseRobberies:giveMoney')
AddEventHandler('houseRobberies:giveMoney', function()
 local source = tonumber(source)
 local xPlayer = ESX.GetPlayerFromId(source)
 local cash = math.random(500, 3000)
 xPlayer.addMoney(cash)
 --TriggerClientEvent('chatMessage', source, '^4You have found $'..cash)
 TriggerClientEvent('notification', source, 'You found $'..cash)
end)


RegisterServerEvent('houseRobberies:searchItem')
AddEventHandler('houseRobberies:searchItem', function()
 local source = tonumber(source)
 local item = {}
 local xPlayer = ESX.GetPlayerFromId(source)
 local gotID = {}


 for i=1, math.random(1, 2) do
  item = robbableItems[math.random(1, #robbableItems)]
  if math.random(1, 10) >= item.chance then
   if tonumber(item.id) == 0 and not gotID[item.id] then
    gotID[item.id] = true
    xPlayer.addMoney(item.quantity)
    --TriggerClientEvent('chatMessage', source, 'You found $'..item.quantity)
    TriggerClientEvent('notification', source, 'You found $'..item.quantity)
   elseif item.isWeapon and not gotID[item.id] then
    gotID[item.id] = true
    xPlayer.addWeapon(item.id, 50)
    --TriggerClientEvent('chatMessage', source, 'You found a '..item.name)
    TriggerClientEvent('notification', source, 'Item Added!', 2)
   elseif not gotID[item.id] then
    gotID[item.id] = true
    xPlayer.addInventoryItem(item.id, item.quantity)
    --TriggerClientEvent('chatMessage', source, 'You have found '..item.quantity..'x '..item.name)
    TriggerClientEvent('notification', source, 'Item Added!', 2)
   end
  end
 end
end)
