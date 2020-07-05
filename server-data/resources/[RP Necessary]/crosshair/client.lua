Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		--Ukrywa Amunicję
		DisplayAmmoThisFrame(false)

		--Nieskończona Gaśnica
		if weapon == GetHashKey("WEAPON_FIREEXTINGUISHER") then
			if IsPedShooting(ped) then
				SetPedInfiniteAmmo(ped, true, GetHashKey("WEAPON_FIREEXTINGUISHER"))
			end
		end
	end
end)

-- RECOIL

local recoils = {
	[453432689] = 0.3, -- PISTOL
	[3219281620] = 0.3, -- PISTOL MK2
	[1593441988] = 0.2, -- COMBAT PISTOL
	[584646201] = 0.1, -- AP PISTOL
	[2578377531] = 0.6, -- PISTOL .50
	[324215364] = 0.2, -- MICRO SMG
	[736523883] = 0.1, -- SMG
	[2024373456] = 0.1, -- SMG MK2
	[4024951519] = 0.1, -- ASSAULT SMG
	[3220176749] = 0.2, -- ASSAULT RIFLE
	[961495388] = 0.2, -- ASSAULT RIFLE MK2
	[2210333304] = 0.1, -- CARBINE RIFLE
	[4208062921] = 0.1, -- CARBINE RIFLE MK2
	[2937143193] = 0.1, -- ADVANCED RIFLE
	[2634544996] = 0.1, -- MG
	[2144741730] = 0.1, -- COMBAT MG
	[3686625920] = 0.1, -- COMBAT MG MK2
	[487013001] = 0.4, -- PUMP SHOTGUN
	[1432025498] = 0.35, -- PUMP SHOTGUN MK2
	[2017895192] = 0.7, -- SAWNOFF SHOTGUN
	[3800352039] = 0.4, -- ASSAULT SHOTGUN
	[2640438543] = 0.2, -- BULLPUP SHOTGUN
	[911657153] = 0.1, -- STUN GUN
	[100416529] = 0.5, -- SNIPER RIFLE
	[205991906] = 0.7, -- HEAVY SNIPER
	[177293209] = 0.6, -- HEAVY SNIPER MK2
	[856002082] = 1.2, -- REMOTE SNIPER
	[2726580491] = 1.0, -- GRENADE LAUNCHER
	[1305664598] = 1.0, -- GRENADE LAUNCHER SMOKE
	[2982836145] = 0.0, -- RPG
	[1752584910] = 0.0, -- STINGER
	[1119849093] = 0.01, -- MINIGUN
	[3218215474] = 0.2, -- SNS PISTOL
	[1627465347] = 0.1, -- GUSENBERG
	[3231910285] = 0.2, -- SPECIAL CARBINE
	[-1768145561] = 0.15, -- SPECIAL CARBINE MK2
	[3523564046] = 0.5, -- HEAVY PISTOL
	[2132975508] = 0.2, -- BULLPUP RIFLE
	[-2066285827] = 0.15, -- BULLPUP RIFLE MK2
	[137902532] = 0.4, -- VINTAGE PISTOL
	[2828843422] = 0.7, -- MUSKET
	[984333226] = 0.2, -- HEAVY SHOTGUN
	[3342088282] = 0.3, -- MARKSMAN RIFLE
	[1785463520] = 0.25, -- MARKSMAN RIFLE MK2
	[1672152130] = 0, -- HOMING LAUNCHER
	[1198879012] = 0.9, -- FLARE GUN
	[171789620] = 0.2, -- COMBAT PDW
	[3696079510] = 0.9, -- MARKSMAN PISTOL
	[1834241177] = 2.4, -- RAILGUN
	[3675956304] = 0.3, -- MACHINE PISTOL
	[3249783761] = 0.6, -- REVOLVER
	[-879347409] = 0.6, -- REVOLVER MK2
	[4019527611] = 0.7, -- DOUBLE BARREL SHOTGUN
	[1649403952] = 0.3, -- COMPACT RIFLE
	[317205821] = 0.2, -- AUTO SHOTGUN
	[125959754] = 0.5, -- COMPACT LAUNCHER
	[3173288789] = 0.1, -- MINI SMG		
}



Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsPedShooting(PlayerPedId()) and not IsPedDoingDriveby(PlayerPedId()) then
			local _,wep = GetCurrentPedWeapon(PlayerPedId())
			_,cAmmo = GetAmmoInClip(PlayerPedId(), wep)
			if recoils[wep] and recoils[wep] ~= 0 then
				tv = 0
				if GetFollowPedCamViewMode() ~= 4 then
					repeat 
						Wait(0)
						p = GetGameplayCamRelativePitch()
						SetGameplayCamRelativePitch(p+0.6, 0.6)
						tv = tv+0.6
					until tv >= recoils[wep]
				else
					repeat 
						Wait(0)
						p = GetGameplayCamRelativePitch()
						if recoils[wep] > 0.1 then
							SetGameplayCamRelativePitch(p+1.6, 1.2)
							tv = tv+1.3
						else
							SetGameplayCamRelativePitch(p+0.6, 0.333)
							tv = tv+0.6
						end
					until tv >= recoils[wep]
				end
			end
		end
	end
end)

--[[DriveBy

local passengerDriveBy = true


Citizen.CreateThread(function()
	while true do
		Wait(1)
		local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
		local speed = GetEntitySpeed(vehicle)
		local kmh = 3.6
		local mph = 2.23694
		local vehicleClass = GetVehicleClass(vehicle)
		local vehicleModel = GetEntityModel(vehicle)


		if vehicleClass ~= 14 and 15 and 16 then
		GetEntitySpeed(GetPedInVehicleSeat(GetPlayerPed(-1), false))
		-- If you want mph, then replace kmh with mph under here. If you want more or less than 30 also change it here
		if math.floor(speed*kmh) > 60 then
				SetPlayerCanDoDriveBy(PlayerId(), false)
			elseif passengerDriveBy then
				SetPlayerCanDoDriveBy(PlayerId(), true)
			else
				SetPlayerCanDoDriveBy(PlayerId(), false)
			end
		end
	end
end)]]--

-- VEHICLE CLASSES
-- id = 0 --compacts
-- id = 1 --sedans
-- id = 2 --SUV's
-- id = 3, --coupes
-- id = 4 --muscle
-- id = 5 --sport classic
-- id = 6 --sport
-- id = 7 --super
-- id = 8 --motorcycle
-- id = 9 --offroad
-- id = 10 --industrial
-- id = 11 -utility
-- id = 12 --vans
-- id = 13 --bicycles
-- id = 14 --boats
-- id = 15, --helicopter
-- id = 16 --plane
-- id = 17 --service
-- id = 18 --emergency
-- id = 19 --military


--[[Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local ped = GetPlayerPed(-1)
		local currentWeaponHash = GetSelectedPedWeapon(ped)
		if currentWeaponHash == GetHashKey('WEAPON_HEAVYSNIPER_MK2') then
			local PozycjaGracza = GetEntityCoords(ped)
			local Pojazd = ESX.Game.GetClosestVehicle(PozycjaGracza)
			local PozycjaPojazdu = GetEntityCoords(Pojazd)
			local Dystans = GetDistanceBetweenCoords(PozycjaGracza, PozycjaPojazdu, true)
			if Dystans <= 4 then
				local PozycjaKamery = GetGameplayCamCoord()
				local WysokoscGlowy = PozycjaGracza.z + 0.3
				local WysokoscKamery = PozycjaKamery.z - WysokoscGlowy.z
				local KatKamery = GetGameplayCamRelativePitch()
				local Pozycja = {
					["x"] = PozycjaGracza.x,
					["y"] = PozycjaGracza.y,
					["z"] = PozycjaGracza.z + 0.3
				}
				ESX.Game.Utils.DrawText3D(Pozycja, KatKamery, 0.6)
			end
		end
	end
end)]]

local hudDisabled = false
local disableKey = 166 -- Currently F5 - Use this to change the key https://docs.fivem.net/game-references/controls/

CreateThread(function()
    while true do
        if IsControlJustPressed(0, disableKey) then
            hudDisabled = not hudDisabled
            DisplayRadar(hudDisabled)
        end
        Wait(0)
    end
end)