Config = {}
Config.Locale = 'en'

Config.MenuAlign = 'top-left'
Config.DrawDistance = 100

Config.HospMarker = {Type = 2, r = 102, g = 102, b = 204, x = 1.0, y = 1.0, z = 0.5} -- Hospital Marker | Blue w/Normal Size
Config.BlipHospital = {Sprite = 403, Color = 2, Display = 2, Scale = 1.0}
Config.SurgMarker = {Type = 1, r = 102, g = 102, b = 204, x = 1.5, y = 1.5, z = 1.0} -- Surgery Marker | Blue w/Normal Size
Config.BlipSurgery = {Sprite = 403, Color = 0, Display = 2, Scale = 1.0}

Config.UseHospital = true -- Allows players to Heal Themselves
Config.UseHospitalBlips = true -- true = Uses Hospital Blips
Config.HealingPrice = 100

Config.UseSurgeon = true -- Allows players to edit their Character
Config.UseSurgeonBlips = true -- true = Uses Surgery Blips
Config.SurgeryPrice = 3700

Config.Healer = {
	Locations = {
		Coords = {
			-- vector3(265.8, -1355.6, 23.5), -- esx_ambulancejob Inside
			-- vector3(338.8, -1394.5, 31.5), -- Los Santos Central
			-- vector3(-449.6, -340.8, 33.5), -- Los Santos Mount Zonah
			-- vector3(-874.7, -307.5, 38.5), -- Los Santos Portola Trinity
			-- vector3(298.7, -584.6, 42.2), -- Los Santos Pillbox Hill Top
			vector3(1825.43, 3668.11, 39.87), -- Sandy Shores Medical Center
			-- vector3(-240.3, 6324.1, 31.4), -- Paleto Bay Medical Center
		}
	}
}

Config.Surgery = {
	Locations = {
		Coords = {
			vector3(260.3, -1343.6, 23.5), -- esx_ambulancejob Inside
		}
	}
}
