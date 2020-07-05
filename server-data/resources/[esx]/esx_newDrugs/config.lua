--------------------------------
------- Created by Hamza -------
-------------------------------- 

Config = {}

-- // Set max cap on how many drugs a player can sell between a server-restart, remember this cannot be 0, instead set to 9999999999 for unlimited // --
Config.maxCap = 999999999999

-- // MISSION REWARD // --
Config.Reward = {
	["meth"] = math.random(1,3),
	["coke"] = math.random(1,3),
	["weed"] = math.random(4,10),
}

-- // MISSION LOCATIONS // --
Config.MissionPosition = 
{
	{
		Location = vector3(-520.1247,-2877.795,7.295938), -- https://gyazo.com/98c3e756a054c647d2e1e42e417fe8a6
		InUse = false,
		GoonSpawns = {
			vector3(-523.3846,-2877.983,7.295937),
			vector3(-512.6961,-2867.888,7.295936),
			vector3(-540.0925,-2848.624,6.000387),
			vector3(-516.5098,-2872.221,11.55055),
			
		}
	},
	{
		Location = vector3(485.3236,-3383.7,6.069912), -- https://gyazo.com/bed93c619d979177ceec51ce7de78b60
		InUse = false,
		GoonSpawns = {
			vector3(489.7149,-3382.499,6.069914),
			vector3(478.4058,-3382.275,6.069916),
			vector3(471.6081,-3371.956,6.069911),
			vector3(495.6046,-3370.103,6.069911),
			
		}
	},
	{
		Location = vector3(141.8366,-3102.032,5.896308), -- https://gyazo.com/bf2cddb0ae715bc0c3fbdae82f47f9dd
		InUse = false,
		GoonSpawns = {
			vector3(141.8366,-3102.032,5.896308),
			vector3(152.8683,-3112.24,5.896309),
			vector3(128.81,-3112.42,5.91),
			vector3(126.78,-3075.39,5.94),
			
		}
	},
	{
		Location = vector3(-106.08,-2230.32,7.81), -- https://gyazo.com/175117832d1a3d40fdac639b56ee587c
		InUse = false,
		GoonSpawns = {
			vector3(-106.08,-2230.32,7.81),
			vector3(-112.27,-2212.6,7.81),
			vector3(-124.87,-2232.4,7.81),
			vector3(-136.17,-2214.41,7.81),
			
		}
	},
	{
		Location = vector3(1515.7,-2137.4,76.73), -- https://gyazo.com/5fbae09413c605631bc6ac80fd0bf165
		InUse = false,
		GoonSpawns = {
			vector3(1515.7,-2137.4,76.73),
			vector3(1523.94,-2139.34,76.99),
			vector3(1509.22,-2151.57,77.39),
			vector3(1494.6,-2140.0,76.54),
			
		}
	},
	{
		Location = vector3(2368.46,3039.25,48.15), -- https://gyazo.com/cfd9d2db705aa82ad64a1281e71ed953
		InUse = false,
		GoonSpawns = {
			vector3(2368.46,3039.25,48.15),
			vector3(2368.75,3034.93,51.08),
			vector3(2367.93,3052.35,48.3),
			vector3(2368.35,3061.55,48.3),
			
		}
	}--,
	-- add more missions here, remember "," after last ")"
}
