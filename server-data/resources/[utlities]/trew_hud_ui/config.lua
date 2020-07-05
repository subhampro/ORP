Config = {}

Config.Locale = 'en'

Config.serverLogo = ''

Config.font = {
	name 	= 'Montserrat',
	url 	= 'https://fonts.googleapis.com/css?family=Montserrat:300,400,700,900&display=swap'
}

Config.date = {
	format	 	= 'default',
	AmPm		= false
}

Config.voice = {

	levels = {
		default = 5.0,
		shout = 12.0,
		whisper = 1.0,
		current = 0
	},
	
	keys = {
		distance 	= 'Z',
	}
}


Config.vehicle = {
	speedUnit = 'KMPH',
	maxSpeed = 500,

	keys = {
		seatbelt 	= 'B',
		cruiser		= 'Z',
		signalLeft	= 'LEFT',
		signalRight	= 'RIGHT',
		signalBoth	= 'DOWN',
	}
}

Config.ui = {
	showServerLogo		= true,

	showJob		 		= false,

	showWalletMoney 	= false,
	showBankMoney 		= false,
	showBlackMoney 		= false,
	showSocietyMoney	= false,

	showDate 			= false,
	showLocation 		= true,
	showVoice	 		= true,

	showHealth			= true,
	showArmor	 		= true,
	showStamina	 		= true,
	showHunger 			= true,
	showThirst	 		= true,

	showMinimap			= false,

	showWeapons			= true,	
}