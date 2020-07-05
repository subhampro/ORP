ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj)
            ESX = obj
        end)
        Citizen.Wait(0)
    end

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end

    ESX.PlayerData = ESX.GetPlayerData()
end)

local isTokovoip = false

function ToggleUI()
    showUi = not showUi

    if showUi then
        SendNUIMessage({
            action = 'showui'
        })
    else
        SendNUIMessage({
            action = 'hideui'
        })
    end
end


--General UI Updates
Citizen.CreateThread(function()
    Citizen.Wait(0)
    SendNUIMessage({
        action = 'showui'
    })

    while true do
        local player = PlayerPedId()

        SendNUIMessage({
            action = 'tick',
            show = IsPauseMenuActive(),
            health = (GetEntityHealth(player) - 100),
            armor = GetPedArmour(player),
            stamina = 100 - GetPlayerSprintStaminaRemaining(PlayerId()),
        })
        Citizen.Wait(200)
    end
end)

--Network Talking Updates
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        if isTokovoip then
            SendNUIMessage({
                action = 'voice-color',
                isTalking = exports.tokovoip:getPlayerData(GetPlayerServerId(PlayerId()), 'voip:talking')
            })
        else
            SendNUIMessage({
                action = 'voice-color',
                value = 100,
                isTalking = NetworkIsPlayerTalking(PlayerId())
            })
        end
    end
end)

Citizen.CreateThread(function()
    local currLevel = 1
    while true do
        Citizen.Wait(0)
        if IsControlJustReleased(1, 48) then -- "Z"
            PlaySoundFrontend(-1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", 1)
            if isTokovoip == true then
                currLevel =  exports.tokovoip:getPlayerData(GetPlayerServerId(PlayerId()), 'voip:mode')
                if currLevel == 1 then
                    SendNUIMessage({
                        action = 'set-voice',
                        value = 58
                    })
                elseif currLevel == 2 then
                    SendNUIMessage({
                        action = 'set-voice',
                        value = 25
                    })
                elseif currLevel == 3 then
                    SendNUIMessage({
                        action = 'set-voice',
                        value = 100
                    })
                end
            else
                currLevel = (currLevel + 1) % 3
                if currLevel == 0 then
                    SendNUIMessage({
                        action = 'set-voice',
                        value = 66
                    })
                elseif currLevel == 1 then
                    SendNUIMessage({
                        action = 'set-voice',
                        value = 100
                    })
                elseif currLevel == 2 then
                    SendNUIMessage({
                        action = 'set-voice',
                        value = 33
                    })
                end
            end
        end
    end
end)

--Food Thirst
Citizen.CreateThread(function()
    while true do
        TriggerEvent('esx_status:getStatus', 'hunger', function(hunger)
            TriggerEvent('esx_status:getStatus', 'thirst', function(thirst)
                SendNUIMessage({
                    action = "updateStatus",
                    hunger = hunger.getPercent(),
                    thirst = thirst.getPercent()
                })
            end)
        end)
        Citizen.Wait(5000)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if IsControlJustReleased(0, 166) then  -- "F5"
            ToggleUI()
        end
        
    end
end)