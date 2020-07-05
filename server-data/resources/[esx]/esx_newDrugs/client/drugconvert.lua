--------------------------------
------- Created by Hamza -------
-------------------------------- 

local converting = false

-- COKE BRICK >> COKE (10G)
RegisterNetEvent("BrickToCoke10g")
AddEventHandler("BrickToCoke10g", function()
    if converting then
      return
    end
    converting = true
	if not IsPedInAnyVehicle(GetPlayerPed(-1)) then
		TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true)
		exports['progressBars']:startUI(15000, "COKE BRICK  >  COKE (10G)")
		Citizen.Wait(15000)
		ClearPedTasks(PlayerPedId())
	else
		exports['progressBars']:startUI(15000, "COKE BRICK  >  COKE (10G)")
		Citizen.Wait(15000)
	end
    converting = false
end)

-- METH BRICK >> METH (10G)
RegisterNetEvent("BrickToMeth10g")
AddEventHandler("BrickToMeth10g", function()
    if converting then
      return
    end
    converting = true
	if not IsPedInAnyVehicle(GetPlayerPed(-1)) then
		TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true)
		exports['progressBars']:startUI(15000, "METH BRICK  >  METH (10G)")
		Citizen.Wait(15000)
		ClearPedTasks(PlayerPedId())
	else
		exports['progressBars']:startUI(15000, "METH BRICK  >  METH (10G)")
		Citizen.Wait(15000)
	end
    converting = false
end)

-- WEED BRICK >> WEED (20G)
RegisterNetEvent("BrickToWeed20g")
AddEventHandler("BrickToWeed20g", function()
    if converting then
      return
    end
    converting = true
	if not IsPedInAnyVehicle(GetPlayerPed(-1)) then
		TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true)
		exports['progressBars']:startUI(15000, "WEED BRICK  >  WEED (20G)")
		Citizen.Wait(15000)
		ClearPedTasks(PlayerPedId())
	else
		exports['progressBars']:startUI(15000, "WEED BRICK  >  WEED (20G)")
		Citizen.Wait(15000)
	end
    converting = false
end)

-- COKE (10G) >> COKE (1G)
RegisterNetEvent("Coke10gToCoke1g")
AddEventHandler("Coke10gToCoke1g", function()
    if converting then
      return
    end
    converting = true
	if not IsPedInAnyVehicle(GetPlayerPed(-1)) then
		TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true)
		exports['progressBars']:startUI(15000, "COKE (10G)  >  COKE (1G)")
		Citizen.Wait(15000)
		ClearPedTasks(PlayerPedId())
	else
		exports['progressBars']:startUI(15000, "COKE (10G)  >  COKE (1G)")
		Citizen.Wait(15000)
	end
    converting = false
end)

-- METH (10G) >> METH (1G)
RegisterNetEvent("Meth10gToMeth1g")
AddEventHandler("Meth10gToMeth1g", function()
    if converting then
      return
    end
    converting = true
	if not IsPedInAnyVehicle(GetPlayerPed(-1)) then
		TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true)
		exports['progressBars']:startUI(15000, "METH (10G)  >  METH (1G)")
		Citizen.Wait(15000)
		ClearPedTasks(PlayerPedId())
	else
		exports['progressBars']:startUI(15000, "METH (10G)  >  METH (1G)")
		Citizen.Wait(15000)
	end
    converting = false
end)

-- WEED (20G) >> WEED (4G)
RegisterNetEvent("Weed20gToWeed4g")
AddEventHandler("Weed20gToWeed4g", function()
    if converting then
      return
    end
    converting = true
	if not IsPedInAnyVehicle(GetPlayerPed(-1)) then
		TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true)
		exports['progressBars']:startUI(15000, "WEED (20G)  >  WEED (4G)")
		Citizen.Wait(15000)
		ClearPedTasks(PlayerPedId())
	else
		exports['progressBars']:startUI(15000, "WEED (20G)  >  WEED (4G)")
		Citizen.Wait(15000)
	end
    converting = false
end)

-- WEED (4G) >> JOINT (2G)
RegisterNetEvent("Weed4gToJoint2g")
AddEventHandler("Weed4gToJoint2g", function()
    if converting then
      return
    end
    converting = true
	if not IsPedInAnyVehicle(GetPlayerPed(-1)) then
		TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true)
		exports['progressBars']:startUI(15000, "WEED (4G)  >  JOINT (2G)")
		Citizen.Wait(15000)
		ClearPedTasks(PlayerPedId())
	else
		exports['progressBars']:startUI(15000, "WEED (4G)  >  JOINT (2G)")
		Citizen.Wait(15000)
	end
    converting = false
end)