--------------------------------------------
------ Napisane przez wojtek.cfg#0349 ------
----------------- ©  2019 ------------------
--------------------------------------------

local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
}

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end
	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
	RemoveBlip(blipypracy)
	odswiezblipy()
end)

local Akt         			 = nil
local CurrentActionMsg   = ''
local CurrentActionData  = {}
local JestWMarkerze 		 = false
local OstStrefa          = nil
local PlayerData         = {}


local juzzarejestrowany = false
local majuztorbe = false
local majuzskuter = false
local lokalx = 0
local lokaly = 0
local lokalz = 0
local klientx = 0
local klienty = 0
local klientz = 0
local Otrzymaljuzkoordyrestauracji = false
local Otrzymaljuzkoordyklienta = false
local pracuje = false
local timergotowy = 0



function odswiezblipy() 

 	blipypracy = AddBlipForCoord(Config.blipx, Config.blipy, 0)
    SetBlipSprite (blipypracy, Config.typ)
    SetBlipDisplay(blipypracy, 4)
    SetBlipScale  (blipypracy, 0.6)
    SetBlipColour (blipypracy, Config.kolor)
    SetBlipAsShortRange(blipypracy, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Uber Eats')
	EndTextCommandSetBlipName(blipypracy)
	
end



RegisterNetEvent('wojtek_ubereats:rejestracjasukces')
AddEventHandler('wojtek_ubereats:rejestracjasukces', function()

	TriggerEvent("pNotify:SendNotification",{
		text = ('You are registering as a Uber Eats Employee'),
		type = "success",
		timeout = (3000),
		layout = "bottomCenter",
		queue = "ubereats",
		animation = {
		open = "gta_effects_fade_in",
		close = "gta_effects_fade_out"
	}})

	if juzzarejestrowany == false then
		juzzarejestrowany = true
	end

end)  



RegisterNetEvent('wojtek_ubereats:pow')
AddEventHandler('wojtek_ubereats:pow', function()
	powiadomieniefajnetakiezikonko()
end)


AddEventHandler('wojtek_ubereats:wmarkerze', function (zone)
	local coords = GetEntityCoords(GetPlayerPed(-1))
	if zone == 'MenuPodstawowe' then
    Akt     = 'menupodst'
   CurrentActionMsg  = ('Click ~INPUT_CONTEXT~ to open ~g~Menu~in~ Uber Eats')
	CurrentActionData = {}
  end

  if Otrzymaljuzkoordyrestauracji == true and GetDistanceBetweenCoords(coords, lokalx, lokaly, lokalz, true) < 1.5 then
    Akt     = 'rest'
    CurrentActionMsg  = ('Click here ~INPUT_CONTEXT~ to pick up ~g~ order')
	CurrentActionData = {}
 end

  if Otrzymaljuzkoordyklienta == true and GetDistanceBetweenCoords(coords, klientx, klienty, klientz, true) < 1.5 then 
   Akt     = 'klient21q4323'
    CurrentActionMsg  = ('Click here ~INPUT_CONTEXT~ to provide ~g~ order')
	CurrentActionData = {}
  end

  if juzzarejestrowany == true and zone == 'Koniecpracyboi' then
    Akt     = 'koniec845739'
    CurrentActionMsg  = ('Click here ~INPUT_CONTEXT~ to ~r~end ~w~working')
	CurrentActionData = {}
 end

end)



AddEventHandler('wojtek_ubereats:pozamarkerem', function (zone)
  Akt = nil
  ESX.UI.Menu.CloseAll()
end)



Citizen.CreateThread(function()
  while true do

    Citizen.Wait(0)
 if (ESX.PlayerData.job and ESX.PlayerData.job.name == Config.PoliceDatabaseName) then
  if Akt ~= nil then

    SetTextComponentFormat('STRING')
    AddTextComponentString(CurrentActionMsg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)

    if IsControlPressed(0,  Keys['E']) then
		
		if Akt == 'menupodst' then
			MenuStartPracyWtymubereatsczycosJakToCzytaszToPozdrawiamXD()
		end

		if Akt == 'klient21q4323' then
			RemoveBlip(blipklient)
			TriggerServerEvent('wojtek_ubereats:hajs')
				if timergotowy > 0 then
				TriggerServerEvent('wojtek_ubereats:napiwek')
				DostalesNapiwekWowTwojeZycieJednakMaSens()
				end
		pracuje = false
		Akt         			 = nil
		CurrentActionMsg   = ''
		CurrentActionData  = {}
		JestWMarkerze 		 = false
		OstStrefa          = nil
		TriggerServerEvent('wojtek_ubereats:podsumowanietwojejosoby')
		Wait(10000)
		powiadomienieolokacji()
		rozpoczynamypraceconie()
		end

		if Akt == 'koniec845739' and juzzarejestrowany == true then
			koniecpracyfunkcja()
		end

		if Akt == 'rest' and pracuje == false then
			pracuje = true
			RemoveBlip(bliplokalu)
			powiadomieniezawiezdodomujofgiuhfudsgudhNieWiemKurnaDlugietonieGeneralnieToBedzieNajdluzszaNazwaFunkcjiWtymSkrypcieBoKtoMiZabronixd()
			OdbierankoZamowieniaMordoILeciszZnowuPolMiastaEssaASharleyToDebilHeheKappa()
			TriggerEvent("pNotify:SendNotification",{
				text = ('You receive the order'),
				type = "success",
				timeout = (3000),
				layout = "bottomCenter",
				queue = "ubereats",
				animation = {
				open = "gta_effects_fade_in",
				close = "gta_effects_fade_out"
			}})
			Otrzymaljuzkoordyrestauracji = false

	end	
		
      end
    end
  end 
 end
end)

function koniecpracyfunkcja()

	
	RemoveBlip(blipklient)
	RemoveBlip(bliplokalu)
	
	juzzarejestrowany = false
	majuztorbe = false
	majuzskuter = false

	TriggerEvent("pNotify:SendNotification",{
		text = ('You are finishing work'),
		type = "error",
		timeout = (3000),
		layout = "bottomCenter",
		queue = "ubereats",
		animation = {
		open = "gta_effects_fade_in",
		close = "gta_effects_fade_out"
	}})
	local veh,dist = ESX.Game.GetClosestVehicle(playerCoords)
			if dist < 3 then
				DeleteEntity(veh)
			end
	SetPedComponentVariation(GetPlayerPed(-1), 5, 0, 0, 0)
end

function MenuStartPracyWtymubereatsczycosJakToCzytaszToPozdrawiamXD()
local kwota = Config.kosztrejestracji
  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'cloakroom',
    {
      title    = 'Uber Eats',
	  align    = 'center',
      elements = {
       			{label = 'Register as a supplier ('..kwota..'$)', value = 'zarej'},
				{label = 'Rent a Bag', value = 'torba'},
				{label = 'Rent a Scooter', value = 'skuter'}
      }
    },
	function(data, menu)
------------------------------------------------------------	
			if data.current.value == 'zarej' and juzzarejestrowany == false then
				TriggerServerEvent('wojtek_ubereats:zarejestrujhajs')
			elseif data.current.value == 'zarej' and juzzarejestrowany == true then
				TriggerEvent("pNotify:SendNotification",{
					text = ('You are already Registered'),
					type = "warning",
					timeout = (3000),
					layout = "bottomCenter",
					queue = "ubereats",
					animation = {
					open = "gta_effects_fade_in",
					close = "gta_effects_fade_out"
				}})
			end
------------------------------------------------------------
			if data.current.value == 'torba' and majuztorbe == false and juzzarejestrowany == true then
				TriggerEvent("pNotify:SendNotification",{
					text = ('You borrowed a bag'),
					type = "success",
					timeout = (3000),
					layout = "bottomCenter",
					queue = "ubereats",
					animation = {
					open = "gta_effects_fade_in",
					close = "gta_effects_fade_out"
				}})

				if majuztorbe == false then
					majuztorbe = true
				end

				SetPedComponentVariation(GetPlayerPed(-1), 5, 45, 0, 2)

			elseif data.current.value == 'torba' and majuztorbe == true then
				TriggerEvent("pNotify:SendNotification",{
					text = ('You already have a bag'),
					type = "warning",
					timeout = (5000),
					layout = "bottomCenter",
					queue = "ubereats",
					animation = {
					open = "gta_effects_fade_in",
					close = "gta_effects_fade_out"
				}})

			elseif data.current.value == 'torba' and juzzarejestrowany == false then
				TriggerEvent("pNotify:SendNotification",{
					text = ('You must register'),
					type = "error",
					timeout = (5000),
					layout = "bottomCenter",
					queue = "ubereats",
					animation = {
					open = "gta_effects_fade_in",
					close = "gta_effects_fade_out"
				}})

			end
------------------------------------------------------------
			if data.current.value == 'skuter' and majuzskuter == false and juzzarejestrowany == true and majuztorbe == true then
				TriggerEvent("pNotify:SendNotification",{
					text = ('You rented a scooter'),
					type = "success",
					timeout = (3000),
					layout = "bottomCenter",
					queue = "ubereats",
					animation = {
					open = "gta_effects_fade_in",
					close = "gta_effects_fade_out"
				}})
				local poj = Config.pojazd

				if majuzskuter == false then
					RequestModel(GetHashKey(poj))
					while not HasModelLoaded(GetHashKey(poj)) do
					Citizen.Wait(0)
				end
			
				ClearAreaOfVehicles(Config.pojazdx, Config.pojazdy, Config.pojazdz, 5.0, false, false, false, false, false) 				
				local pojskuter = CreateVehicle(GetHashKey(poj), Config.pojazdx, Config.pojazdy, Config.pojazdz, -2.436,  996.786, 25.1887, true, true)
					SetEntityHeading(pojskuter, 123.00)
					TaskWarpPedIntoVehicle(GetPlayerPed(-1), pojskuter, - 1)
				end
				if majuzskuter == false then
					majuzskuter = true
				end
				powiadomienieolokacji()
				rozpoczynamypraceconie()

			elseif data.current.value == 'skuter' and majuzskuter == true then
				TriggerEvent("pNotify:SendNotification",{
					text = ('You have already rented a scooter'),
					type = "warning",
					timeout = (5000),
					layout = "bottomCenter",
					queue = "ubereats",
					animation = {
					open = "gta_effects_fade_in",
					close = "gta_effects_fade_out"
				}})
			elseif data.current.value == 'skuter' and juzzarejestrowany == false then
				TriggerEvent("pNotify:SendNotification",{
					text = ('You must register'),
					type = "error",
					timeout = (5000),
					layout = "bottomCenter",
					queue = "ubereats",
					animation = {
					open = "gta_effects_fade_in",
					close = "gta_effects_fade_out"
				}})
			elseif data.current.value == 'skuter' and majuztorbe == false then
				TriggerEvent("pNotify:SendNotification",{
					text = ('You must borrow a bag'),
					type = "error",
					timeout = (5000),
					layout = "bottomCenter",
					queue = "ubereats",
					animation = {
					open = "gta_effects_fade_in",
					close = "gta_effects_fade_out"
				}})
			end
------------------------------------------------------------
		end,
		function(data, menu)
      menu.close()
    end
  )
end

function rozpoczynamypraceconie()
-- Funkcja losująca lokal
local wylosowanko = math.random(1,12)

	if wylosowanko == 1 then
		 lokalx = 176.97
		 lokaly = -1437.63
		 lokalz = 28.3
	elseif wylosowanko == 2 then
		lokalx = 132.81
		lokaly = -1462.46
		lokalz = 29.4
	elseif wylosowanko == 3 then
		lokalx = -1198.94
		lokaly = -882.84
		lokalz = 12.45
	elseif wylosowanko == 4 then
		lokalx = 54.85
		lokaly = -799.17
		lokalz = 30.6
	elseif wylosowanko == 5 then
		lokalx = 99.03
		lokaly = -1419.29
		lokalz = 28.5
	elseif wylosowanko == 6 then
		lokalx = 168.66
		lokaly = -1632.91
		lokalz = 28.4
	elseif wylosowanko == 7 then
		lokalx = 253.18
		lokaly = -781.75
		lokalz = 29.58
	elseif wylosowanko == 8 then
		lokalx = -861.36
		lokaly = -1141.10
		lokalz = 6.1
	elseif wylosowanko == 9 then
		lokalx = -700.96
		lokaly = -883.78
		lokalz = 22.8
	elseif wylosowanko == 10 then
		lokalx = -657.59
		lokaly = -679.18
		lokalz = 30.5
	elseif wylosowanko == 11 then
		lokalx = -263.18
		lokaly = -903.61
		lokalz = 31.4
	elseif wylosowanko == 12 then
		lokalx = 81.38
		lokaly = 274.69
		lokalz = 109.25
	end	

	SetNewWaypoint(lokalx, lokaly)
	Otrzymaljuzkoordyrestauracji = true

	bliplokalu = AddBlipForCoord(lokalx, lokaly, 0)
    SetBlipSprite (bliplokalu, 1)
    SetBlipDisplay(bliplokalu, 4)
    SetBlipScale  (bliplokalu, 0.7)
    SetBlipColour (bliplokalu, 11)
    SetBlipAsShortRange(bliplokalu, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Uber Eats: pick up the order')
	EndTextCommandSetBlipName(bliplokalu)

	TriggerEvent('wojtek_ubereats:timer')

end

RegisterNetEvent('wojtek_ubereats:timer')
AddEventHandler('wojtek_ubereats:timer', function()
	timergotowy = 180
	repeat
	timergotowy = timergotowy - 1
	Citizen.Wait(1000)
	until(timergotowy == 0) 
end)

function OdbierankoZamowieniaMordoILeciszZnowuPolMiastaEssaASharleyToDebilHeheKappa()
	-- funkcja losujaca mieszkanie kilenta -- dużo tego xd --
	local wylosowankoklient = math.random(1,20)

		if wylosowankoklient == 1 then 
			klientx = -84.97
			klienty = -281.05
			klientz = 44.6
		elseif wylosowankoklient == 2 then
			klientx = 173.02
			klienty = -279.76
			klientz = 45.2
		elseif wylosowankoklient == 3 then 
			klientx = -723.24
			klienty = -854.05
			klientz = 22.0
		elseif wylosowankoklient == 4 then 
			klientx = -605.15
			klienty = -802.53
			klientz = 24.2
		elseif wylosowankoklient == 5 then 
			klientx = -416.78
			klienty = -187.10
			klientz = 36.5
		elseif wylosowankoklient == 6 then 
			klientx = -876.35
			klienty = 306.10
			klientz = 83.2
		elseif wylosowankoklient == 7 then
			klientx = -848.69
			klienty = 508.60
			klientz = 89.9
		elseif wylosowankoklient == 8 then
			klientx = -884.16
			klienty = 518.03
			klientz = 91.5
		elseif wylosowankoklient == 9 then
			klientx = -873.33
			klienty = 562.80
			klientz = 95.7
		elseif wylosowankoklient == 10 then 
			klientx = -172.73
			klienty = 238.96
			klientz = 92.2
		elseif wylosowankoklient == 11 then 
			klientx = 798.60
			klienty = -158.66
			klientz = 73.93
 		elseif wylosowankoklient == 12 then 
			klientx = 773.94
			klienty = -149.82
			klientz = 74.7
		elseif wylosowankoklient == 13 then 
			klientx = 101.98
			klienty = -818.82
			klientz = 30.4
		elseif wylosowankoklient == 14 then 
			klientx = 388.40
			klienty = -733.01
			klientz = 28.4
		elseif wylosowankoklient == 15 then 
			klientx = 308.38
			klienty = -727.98
			klientz = 28.4
		elseif wylosowankoklient == 16 then 
			klientx = 288.91
			klienty = -1095.15
			klientz = 28.5
		elseif wylosowankoklient == 17 then 
			klientx = -986.92
			klienty = -1199.60
			klientz = 5.2
		elseif wylosowankoklient == 18 then 
			klientx = -986.46
			klienty = -1122.34
			klientz = 3.6
		elseif wylosowankoklient == 19 then 
			klientx = -1054.46
			klienty = -1000.62
			klientz = 5.5
		elseif wylosowankoklient == 20 then 
			klientx = -1075.96
			klienty = -1026.84
			klientz = 3.6
		end

		SetNewWaypoint(klientx, klienty)
		Otrzymaljuzkoordyklienta = true
	
		blipklient = AddBlipForCoord(klientx, klienty, klientz)
		SetBlipSprite (blipklient, 1)
		SetBlipDisplay(blipklient, 4)
		SetBlipScale  (blipklient, 0.7)
		SetBlipColour (blipklient, 11)
		SetBlipAsShortRange(blipklient, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString('Uber Eats: delivery to the customer')
		EndTextCommandSetBlipName(blipklient)	
		
end

Citizen.CreateThread(function ()
  while true do
    Wait(0)

    local coords = GetEntityCoords(GetPlayerPed(-1))

    for k,v in pairs(Config.Przebieranko) do
      if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < 100.0) then
        DrawMarker(v.Type, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 300, false, true, 2, false, false, false, false)
      end
	end

	for k,v in pairs(Config.Konczeniepracy) do
		if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < 100.0) and juzzarejestrowany == true then
		  DrawMarker(v.Type, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 300, false, true, 2, false, false, false, false)
		end
	  end
	
	if pracuje == false and Otrzymaljuzkoordyrestauracji == true and GetDistanceBetweenCoords(coords, lokalx, lokaly, lokalz, true) < 100.0 then
	  DrawMarker(25, lokalx, lokaly, lokalz, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 1.5, 200, 255, 0, 300, false, true, 2, false, false, false, false)
	end

	if pracuje == true and Otrzymaljuzkoordyklienta == true and GetDistanceBetweenCoords(coords, klientx, klienty, klientz, true) < 100.0 then
		DrawMarker(25, klientx, klienty, klientz, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 1.5, 150, 100, 50, 300, false, true, 2, false, false, false, false)
	end

  end
end)

function powiadomieniefajnetakiezikonko()
	SetNotificationTextEntry("STRING")
	AddTextComponentString("Welcome to the service ~b~Uber Eats~w~! Your job is to receive and deliver food")
	Citizen.InvokeNative(0x1E6611149DB3DB6B, "CHAR_PLANESITE", "CHAR_PLANESITE", true, 1, "Uber Eats", "~g~recorded", 0.9)
	DrawNotification_4(false, true)
end

function DostalesNapiwekWowTwojeZycieJednakMaSens()
	SetNotificationTextEntry("STRING")
	AddTextComponentString("Congratulations! ")
	Citizen.InvokeNative(0x1E6611149DB3DB6B, "CHAR_PLANESITE", "CHAR_PLANESITE", true, 1, "Uber Eats", "~g~Order delivered", 0.6)
	DrawNotification_4(false, true)
end

function powiadomienieolokacji()
	SetNotificationTextEntry("STRING")
	AddTextComponentString("Restaurant marked on the GPS! Deliver order in less than ~g~3 minutes~w~, and you'll get a tip")
	Citizen.InvokeNative(0x1E6611149DB3DB6B, "CHAR_PLANESITE", "CHAR_PLANESITE", true, 1, "Uber Eats", "~g~New order", 0.8)
	DrawNotification_4(false, true)
end

function powiadomieniezawiezdodomujofgiuhfudsgudhNieWiemKurnaDlugietonieGeneralnieToBedzieNajdluzszaNazwaFunkcjiWtymSkrypcieBoKtoMiZabronixd()
	SetNotificationTextEntry("STRING")
	AddTextComponentString("Customer address marked on ~b~GPS~w~, you know what to do!")
	Citizen.InvokeNative(0x1E6611149DB3DB6B, "CHAR_PLANESITE", "CHAR_PLANESITE", true, 1, "Uber Eats", "~g~Order received", 0.7)
	DrawNotification_4(false, true)
end

Citizen.CreateThread(function ()
  while true do
    Wait(0)

    local coords      = GetEntityCoords(GetPlayerPed(-1))
    local isInMarker  = false
    local currentZone = nil

			for k,v in pairs(Config.Przebieranko) do
				if(GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x) then
				isInMarker  = true
				currentZone = k
				end
			end
			
			for k,v in pairs(Config.Konczeniepracy) do
				if(GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x) then
				isInMarker  = true
				currentZone = k
				end
			end

				if(GetDistanceBetweenCoords(coords, lokalx, lokaly, lokalz, true) < 1.5) then
				isInMarker  = true
				currentZone = k
				zone = Restauracja
				end

				if(GetDistanceBetweenCoords(coords, klientx, klienty, klientz, true) < 1.5) then
					isInMarker  = true
					currentZone = k
					zone = Klient
					end

    if (isInMarker and not JestWMarkerze) or (isInMarker and OstStrefa ~= currentZone) then
      JestWMarkerze = true
      OstStrefa                = currentZone
      TriggerEvent('wojtek_ubereats:wmarkerze', currentZone)
    end

    if not isInMarker and JestWMarkerze then
	  TriggerEvent('wojtek_ubereats:pozamarkerem', OstStrefa)
      JestWMarkerze = false
    end
   end
  end)











--------------------------------------------
------ Napisane przez wojtek.cfg#0349 ------
----------------- ©  2019 ------------------
--------------------------------------------
