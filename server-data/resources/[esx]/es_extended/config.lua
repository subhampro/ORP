Config                      = {}
Config.Locale               = 'en'

Config.Accounts             = { 'bank', 'black_money' }
Config.AccountLabels        = { bank = _U('bank'), black_money = _U('black_money') }

Config.EnableSocietyPayouts = false -- pay from the society account that the player is employed at? Requirement: esx_society
Config.DisableWantedLevel   = true
Config.EnableHud            = false -- enable the default hud? Display current job and accounts (black, bank & cash)
Config.EnablePvP            = true -- enable pvp?
Config.MaxWeight            = 200   -- the max inventory weight without backpack

Config.PaycheckInterval     = 7 * 60000

Config.EnableDebug          = false
