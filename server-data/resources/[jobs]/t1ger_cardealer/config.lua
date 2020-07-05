-------------------------------------
------- Created by T1GER#9080 -------
------------------------------------- 

Config 						= {}
Config.Locale 				= 'en'

-- [[ SHOP MENU ]] --
Config.ShopMenu = {{
	Pos = {-1167.49,-1704.52,4.56},
	Key = 38,
	Marker = {
		Enable = true,
		DrawDist = 10.0,
		Type = 27,
		Scale = {x = 1.0, y = 1.0, z = 1.0},
		Color = {r = 240, g = 52, b = 52, a = 100},
	},
	
}}

Config.SellPercent = 25					-- Set commission taken by shop, when player sells a vehicle
Config.ReceiveBankMoney = true			-- Set this to false, in order to receive money in hand when selling a vehicle to PDM
Config.CarInsuranceScript = false		-- Set to false if you don't own this script
Config.BuyVehWhenNoDealers = true		-- Set to true to enable players being able to buy vehicles through shop menu, when no dealer online

-- [[ BOSS MENU ]] --
Config.BossMenu = {{
	Pos = {-1176.26,-1705.9,4.56},						
	Key = 38,													-- Control Key to open Boss Menu
	Marker = {
		Enable = true,											-- Enable/Disable Draw Marker
		DrawDist = 7.0,											-- Draw Marker Draw Distance
		Type = 27,												-- Draw Marker Type
		Scale = {x = 1.0, y = 1.0, z = 1.0},					-- Draw Marker Scale Settings
		Color = {r = 240, g = 52, b = 52, a = 100}				-- Draw Marker Color Settings
	},
}}
Config.BossGrade = 3											-- Set boss grade here
Config.UseCashMoney = true										-- Set to false to use bank money, when depositing/withdrawing money from dealer society account

-- [[ GENERAL SETTINGS ]] --
Config.DealerPos 			= {-1176.26,-1705.9,4.56}			-- Center Pos of the dealer, only change if you move all locations to another custom dealer
Config.DrawTxtDist 			= 3.0								-- Distance to see draw text on display vehicles
Config.VehLoadDistance 		= 20.0								-- Distance from player coords to DealerPos, before display features are loaded. Don't set below 40.0, unless u move cardealer.
Config.CarDealerJobLabel 	= "cardealer"						-- Car Dealer Job Label from Database under table jobs
Config.BoughtVehSpawn 		= {-1195.59, -1721.27, 4.0}			-- Spawn Position of successfully purchased vehicle
Config.PayWithCash 			= true								-- Purchase vehicles with bank money, set to true to purchase vehicle with cash instead.
Config.MinCommission		= (-10)
Config.MaxCommission		= 50
Config.WarpPlayerIntoVeh	= true								-- Set to true if player should be warped into purchased vehicle
Config.WarpPlyIntoTestVeh 	= true								-- Set to true if player should be warped into test drive vehicle

Config.OwnedVehTable		= 'owned_vehicles'					-- change this if you name your owned_vehicles table something else. Make sure to change all entries in server.lua, as this only changes for the protection.lua

Config.PurchasedVehSpawn = {{									-- Position & heading for purchased vehicle. 
	Pos = {-1195.59, -1721.27, 4.0},
	H = 213.64,
}}

Config.BigVehSpawn = {{											-- Position & heading for purchased big vehicles. 
	Pos = {-1195.59, -1721.27, 4.0},
	H = 213.64,
}}

Config.TestReturn = {{
	SmallPos = -1168.18, -1742.32, 3.98},
	BigPos = {-1168.18, -1742.32, 3.98},
	Key = 38,
	DrawText = 4.0,
	Marker = {
		Enable = true,											-- Enable/Disable Draw Marker
		DrawDist = 7.0,											-- Draw Marker Draw Distance
		Type = 27,												-- Draw Marker Type
		Scale = {x = 3.0, y = 3.0, z = 3.0},					-- Draw Marker Scale Settings
		Color = {r = 240, g = 52, b = 52, a = 100}				-- Draw Marker Color Settings
	},
}

-- [[ DISPLAY CARS ]] --
Config.DisplayCars = {
	[1] = { Pos = {-1115.58,-1719.69,4.65}, Heading = 79.84 }, 	-- This is: Compacts // DO NOT TOUCH 
	[2] = { Pos = {-1119.61,-1722.77,4.56}, Heading = 80.72 }, 	-- This is: MCs // DO NOT TOUCH  
	[3] = { Pos = {-1175.49,-1720.55,4.56}, Heading = 190.88 },	-- All other categories
	[4] = { Pos = {-1169.69,-1716.49,4.56}, Heading = 182.9 },	-- All other categories
	[5] = { Pos = {-1163.39,-1711.28,4.56}, Heading = 188.59 },	-- All other categories
	[6] = { Pos = {-1156.88,-1707.4,4.56}, Heading = 190.01 },	-- All other categories
	[7] = { Pos = {-1128.37,-1729.18,4.48}, Heading = 348.55 },	-- This is: SUVs // DO NOT TOUCH 
	[8] = { Pos = {-1124.17,-1726.86,4.44}, Heading = 349.06 }, 	-- This is: Bicycle // DO NOT TOUCH 
	[9] = { Pos = {-1179.17,-1727.72,4.46}, Heading = 43.68 }, 	-- This is: Utility, Vans & Off Road // DO NOT TOUCH
}

-- [[ DISPLAY KEYS ]] --
Config.KeyToBuyVeh 			= 38	-- E 			: Key to buy vehicle from display
Config.KeyToConfirmBuyVeh 	= 38	-- E 			: Key to confirm vehicle purchase from Display
Config.KeyToCancelBuyVeh 	= 202	-- Backspace 	: Key to cancel vehicle purchase from display

Config.KeyToSwapVehicle		= 47	-- G			: Key to replace display vehicle 
Config.KeyToTestVehicle		= 74	-- H			: Key to test drive display vehicle 

Config.KeyToChangeCom1		= 174	-- LEFT ARROW	: Key to change commission (-1) per click
Config.KeyToChangeCom2		= 175	-- RIGHT ARROW	: Key to change commission (+1) per click

Config.KeyToFinanceVeh 		= 311	-- K			: Key to finance vehicle from display
Config.KeyToConfirmFinance 	= 311	-- K 			: Key to confirm vehicle finance from display
Config.KeyToCancelFinance 	= 202	-- Backspace 	: Key to cancel vehicle finance from display

Config.KeyToChangeDownPay1	= 173	-- DOWN ARROW	: Key to change downpayment (-1) per click
Config.KeyToChangeDownPay2	= 172	-- UP ARROW		: Key to change downpayment (+1) per click


-- [[ VEHICLE FINANCING ]] --
Config.InterestRate 			= 5			-- set an interest rate in % that will be added to vehicle price upon financing
Config.MinDownpayment 			= 10		-- set minimum allowed downpayment that car seller can go down to in %
Config.MaxDownpayment 			= 90		-- set maximum allowed downpayment that car seller can go down to in %
Config.MaxTimePerRepay 			= 30		-- set max time before a repay in hours
Config.AmountOfRepayments 		= 10		-- set amount of repayments in total, where (carPrice-downPayment)/10 will be minimum repay amount
Config.DownPaymentToDealerShip 	= false		-- set to true if dealer account should receive downpayments
Config.WarningTime				= 10		-- Warning Time on player login, if repayments are not paid, before vehicles that are not paid are deleted. Set this in minutes.
Config.PayWithBankMoney 		= true		-- set to false in order to pay repayments with cash money on player

-- [[ REGISTRATION PAPER ]]
Config.KeyToHidePaper	= 177			-- set key control to hide registration paper, when it's opened

-- [[ PLATE SETTINGS ]]
Config.PlateNumbers  = 2
Config.PlateLetters  = 3
Config.PlateNumlast  = 3
Config.PlateUseSpace = false

-- [[ BLIP SETTINSG ]] --
Config.Blip = {{
	Enable 	= true,
	Pos 	= {-1176.26,-1705.9,4.56},
	Sprite 	= 326, Color = 0,
	Name 	= "Premium Car Dealership",
	Scale 	= 0.6,
	Display = 4,
}}
