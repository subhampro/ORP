JAM.VehicleShop = {}
local JVS = JAM.VehicleShop
JVS.ESX = JAM.ESX

JVS.DrawTextDist = 2.0
JVS.MenuUseDist = 1.5
JVS.SpawnVehDist = 50.0
JVS.VehRetDist = 5.0

JVS.CarDealerJobLabel = "cardealer"
JVS.DealerMarkerPos = vector3(-34.76, -1113.11, 25.42)

-- Why vector4's, you ask?
-- X, Y, Z, Heading.

JVS.PurchasedCarPos = vector4(-55.57, -1108.4, 26.42, 71.32)
JVS.PurchasedUtilPos = vector4(-17.88, -1113.94, 26.67, 158.04)

JVS.SmallSpawnVeh = 'zentorno'
JVS.SmallSpawnPos = vector4(-817.71, 6992.42, -167.16, 252.76)

JVS.LargeSpawnVeh = 'towtruck'
JVS.LargeSpawnPos = vector4(-46.86, -1082.54, 26.77, 71.97)

JVS.DisplayPositions = {
	[1] = vector4(-39.42, -1096.47, 25.42, 190.51),
	[2] = vector4(-48.92, -1095.16, 25.42, 198.81),
	[3] = vector4(-44.15, -1095.30, 25.42, 195.04),
	[4] = vector4(-45.10, -1101.85, 25.42, 310.63),
	[5] = vector4(-48.88, -1100.45, 25.42, 309.00),
	[6] = vector4(-41.70, -1102.93, 25.42, 298.83),
}

JVS.Blips = {
	CityShop = {
		Zone = "Car Dealership",
		Sprite = 225,
		Scale = 1.0,
		Display = 4,
		Color = 4,
		Pos = { x = -34.53, y = -1112.51, z = 28 },
	},
}
