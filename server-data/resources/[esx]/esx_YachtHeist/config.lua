-------------------------------------
------- Created by Hamza#1234 -------
------------------------------------- 

Config = {}

Config.Yacht = {
    [1] = { 
		loc = {-2072.4143066406,-1020.1676025391,5.8841509819031},
		blipName = "Yacht Heist",
		blipSprite = 108,
		blipColor = 5,
		blipScale = 0.7,
		recentlyRobbed = false,
		startPos = {-2031.47,-1037.98,2.56},
		started = false,
		keypad = {-2070.0031738281,-1019.9599804688,5.8841547966003},
		keypadHacked = false,
		currentlyHacking = false,
		vaultDoor = {-2069.3786621094,-1019.3640136719,5.8841371536255},
		vaultLocked = true,
		vaultModel = -2050208642,
		safe = {-2067.7509765625,-1018.35,5.8820877075195},
		safeRobbed = false,
		drilling = false,
		trolleyPos = {-2069.4367675781,-1021.3533325195,5.8819766044617,75.73348236084},
		cashTaken = false,
		stealing = false,
		JobPlayer = false,
		GoonsSpawned = false,
		Goons = {
			NPC1 = { x = -2077.05, y = -1021.92, z = 5.88, h = 307.71, ped = 'G_M_Y_Lost_02', animDict = 'amb@world_human_cop_idles@female@base', animName = 'base', weapon = 'WEAPON_PISTOL50', },
			NPC2 = { x = -2029.72, y = -1040.86, z = 5.88, h = 61.65, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_ADVANCEDRIFLE', },
			NPC3 = { x = -2031.05, y = -1035.60, z = 5.88, h = 349.33, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_PISTOL50', },
			NPC4 = { x = -2026.54, y = -1031.91, z = 5.88, h = 161.96, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_PISTOL50', },
			NPC5 = { x = -2034.16, y = -1028.49, z = 5.88, h = 65.59, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_ADVANCEDRIFLE', },
			NPC6 = { x = -2039.29, y = -1038.89, z = 5.88,  h = 69.38, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_ADVANCEDRIFLE', },
			NPC7 = { x = -2060.16, y = -1019.13, z = 5.88, h = 158.86, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_FIREWORK', },
			NPC8 = { x = -2077.97, y = -1013.54, z = 5.88, h = 82.23, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_ADVANCEDRIFLE', },
			NPC9 = { x = -2081.48, y = -1026.06, z = 5.88, h = 246.49, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_MUSKET', },
			NPC10 = { x = -2065.36, y = -1031.43, z = 5.88, h = 251.25, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_ADVANCEDRIFLE', },
			NPC11 = { x = -2077.48, y = -1016.60, z = 5.88, h = 243.91, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_ADVANCEDRIFLE', },
			NPC12 = { x = -2079.52, y = -1026.74, z = 5.88, h = 247.64, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_FIREWORK', },
			NPC13 = { x = -2074.95, y = -1014.12, z = 5.88, h = 245.20, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_PISTOL50', },
			NPC14 = { x = -2036.95, y = -1040.19, z = 2.58, h = 67.78, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_ADVANCEDRIFLE', },
			NPC15 = { x = -2031.90, y = -1028.98, z = 2.56, h = 217.81, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_ADVANCEDRIFLE', },			
			NPC16 = { x = -2071.25, y = -1020.63, z = 5.88, h = 5.57, ped = 'G_M_Y_SalvaBoss_01', animDict = 'amb@world_human_leaning@male@wall@back@legs_crossed@base', animName = 'base', weapon = 'WEAPON_ADVANCEDRIFLE' }
		}
	},
}

Config.PoliceDBname = "police"				-- name for policejob in database
Config.RequiredPolice = 1 					-- required police online for starting heist
Config.EnablePlayerMoneyBag = true			-- enable/disable wearing a bag after cash animation
Config.CooldownTimer = 60					-- in minutes

Config.HackerDevice = "hackerDevice"		-- database name for hacking item
Config.DrillItem = "drill"					-- database name for drill item

-- Reward Settings:
Config.RewardBasedOnCops = false	-- enable or disable rewards based on police online
Config.SafeBoxItem = "goldwatch"	-- database name for item in safe
Config.MinCashTake = 15				-- this value is multiplied with 10000, so 3 means 300. 12 means 1200 and etc.
Config.MaxCashTake = 25				-- this value is multiplied with 10000, so 6 means 600. 16 means 1600 and etc.
Config.SafeMinCash = 300				-- this value is multiplied with 1000, so 10 means 10000. 33 means 33000 and etc.
Config.SafeMaxCash = 400				-- this value is multiplied with 1000, so 25 means 25000. 145 means 145000 and etc.
Config.SafeMinItem = 200				-- this value is multiplied with 10, so 12 means 120. 21 means 210 and etc.
Config.SafeMaxItem = 250				-- this value is multiplied with 10, so 30 means 300. 112 means 1120 and etc.
