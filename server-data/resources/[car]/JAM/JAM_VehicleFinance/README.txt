https://www.ModFreakz.net
https://discord.gg/ukgQa5K

JAM_VehicleShop Financing Addon : Installation Instructions

----------------
-- JAM Folder --
----------------
1. Download JAM_Base : www.github.com/justanothermodder/jam_base
  -- Make sure you're using the latest update!
2. Place JAM_VehicleShop folder inside of JAM_Base folder (resources/JAM/JAM_VehicleShop)
3. Add to JAM/__resource.lua:
    client_scripts { 
	'JAM_VehicleFinance/JAM_VehicleFinance_Config.lua',
	'JAM_VehicleFinance/JAM_VehicleFinance_Client.lua',
    }    

    server_scripts { 
	'JAM_VehicleFinance/JAM_VehicleFinance_Config.lua',
	'JAM_VehicleFinance/JAM_VehicleFinance_Server.lua',
    }
5. Add to server.cfg: 
    start JAM

----------------
--  Commands  --
----------------

/checkRepay
- While seated in vehicle, this will tell the user how money they owe on the vehicle (if any), and how much time they have to repay it.

/doRepay amount
- Repays x amount off car loan.