Config = {}

Config.Locale = 'en'
Config.OpenControl = 289
Config.TrunkOpenControl = 47
Config.DeleteDropsOnStart = true
Config.HotKeyCooldown = 1000

Config.Shops = {
    ['Store'] = {
        coords = {
            vector3(374.225, 326.717, 103.300),
            vector3(25.8929, -1346.71, 29.097),
            vector3(-48.1829, -1756.99, 29.00),
            vector3(-707.769, -913.886, 18.815),
            vector3(-1223.69, -907.031, 11.926),
            vector3(-1487.15, -380.113, 39.7634),
            vector3(1163.24, -323.212, 68.8051),
            vector3(1136.09, -981.251, 46.0158),
            vector3(2556.55, 382.399, 108.223),
            vector3(547.382, 2670.33, 41.7565),
            vector3(1961.21, 3741.6, 31.9437),
            vector3(1698.95, 4924.46, 41.637),
            vector3(1729.65, 6415.65, 34.6372),
            vector3(-3243.03, 1001.66, 12.4307),
            vector3(2678.06, 3281.11, 54.8411),
        },
        items = {
            {name = 'bread', price = 10, count = 10},
            {name = 'water', price = 10, count = 10},
            {name = "phone", price = 500, count = 1},
            {name = 'joint', price = 80, count = 5},
            {name = 'cigarette', price = 15, count = 10},
            {name = 'soda', price = 20, count = 10},
            {name = "beer", price = 60, count = 1},
        },
        markerType = 29,
        markerColour = { r = 0, g = 0, b = 255 },
        blipColour = 2,
        blipSprite = 52,
        msg = 'Open Shop ~INPUT_CONTEXT~',
        enableBlip = false,
        job = 'all'
        },    
   ['Weapon Shop'] = {
        coords = {
            vector3(-662.180, -934.961, 21.429),
            vector3(810.25, -2157.60, 29.22),
            vector3(1693.44, 3760.16, 34.31),
            vector3(-330.24, 6083.88, 34.05),
            vector3(252.63, -50.00, 69.49),
            vector3(22.09, -1107.28, 29.40),
            vector3(2567.69, 294.38, 108.33),
            vector3(-1117.58, 2698.61, 18.15),
            vector3(842.44, -1033.42, 27.79),
        },
        items = {
            
            { name = "WEAPON_STUNGUN", price = 3500, count = 1 },
            { name = "WEAPON_PISTOL", price = 2500, count = 1 },
            { name = "WEAPON_COMBATPISTOL", price = 2500, count = 1 },
            { name = "WEAPON_KNIFE", price = 500, count = 1 },
            { name = "WEAPON_BAT", price = 200, count = 1 },
            { name = "WEAPON_KNUCKLE", price = 200, count = 1 },
            { name = "WEAPON_MACHETE", price = 200, count = 1 },
            { name = "WEAPON_BOTTLE", price = 200, count = 1 },
            { name = "WEAPON_SWITCHBLADE", price = 200, count = 1 },
            { name = "WEAPON_FLASHLIGHT", price = 200, count = 1 },
            { name = "disc_ammo_pistol", price = 250, count = 10 },
            { name = "disc_ammo_rifle", price = 400, count = 10 },
            { name = "disc_ammo_shotgun", price = 300, count = 10 },
            { name = "disc_ammo_smg", price = 280, count = 10 },      
        },
        markerType = 29,
        markerColour = { r = 0, g = 0, b = 255 },
        blipColour = 2,
        blipSprite = 52,
        msg = 'Open Shop ~INPUT_CONTEXT~',
        enableBlip = false,
        job = 'all'
        },    
    ['Tool Shop'] = {
        coords = {
            vector3(44.2555, -1747.69, 29.0848),
            vector3(2748.28, 3472.84, 55.2746),
        },
        items = {
            { name = "phone", price = 500, count = 1 }, 
            { name = "drugbags", price = 5, count = 10 },  
            { name = "rolpaper", price = 2, count = 10 },  
            { name = "hqscale", price = 2000, count = 10 },  
            { name = "fixkit", price = 500, count = 10},
            { name = "bandage", price = 50, count = 10 }, 
            { name = "fishingrod", price = 2000, count = 1 }, 
            { name = "bait", price = 5, count = 100 }, 
        },
        markerType = 29,
        markerColour = { r = 0, g = 0, b = 255 },
        blipColour = 2,
        blipSprite = 52,
        msg = 'Open Shop ~INPUT_CONTEXT~',
        enableBlip = false,
        job = 'all'
        }, 

        ['Drug Shop'] = {
                coords = {
                    vector3(-882.21, -1460.7, 7.54),
                },
                items = {
                    
                    { name = "oxycutter", price = 250, count = 10 },   
                    { name = "lockpick", price = 800, count = 10 },   
                    { name = "hackerDevice", price = 2000, count = 10 }, 
                },
                markerType = 29,
                markerColour = { r = 0, g = 0, b = 255 },
                blipColour = 2,
                blipSprite = 52,
                msg = 'Open Shop ~INPUT_CONTEXT~',
                enableBlip = false,
                job = 'mafia'
            }, 

       ['BLACK WEAPON Shop'] = {       
                coords = {
                    vector3(1402.38, 1139.13, 109.75),
                },
                items = {
            
                    { name = "WEAPON_STUNGUN", price = 2500, count = 1 },
                    { name = "WEAPON_KNIFE", price = 200, count = 1 },
                    { name = "WEAPON_BAT", price = 200, count = 1 },
                    { name = "WEAPON_KNUCKLE", price = 200, count = 1 },
                    { name = "WEAPON_MACHETE", price = 200, count = 1 },
                    { name = "WEAPON_BOTTLE", price = 200, count = 1 },
                    { name = "WEAPON_SWITCHBLADE", price = 200, count = 1 },
                    { name = "WEAPON_FLASHLIGHT", price = 200, count = 1 },
                    { name = "WEAPON_CROWBAR", price = 200, count = 1 },
                    { name = "WEAPON_DAGGER", price = 200, count = 1 },
                    { name = "WEAPON_PISTOL", price = 1500, count = 1 },
                    { name = "WEAPON_COMBATPISTOL", price = 2000, count = 1 },
                    { name = "WEAPON_SNSPISTOL", price = 2500, count = 1 },
                    { name = "WEAPON_VINTAGEPISTOL", price = 3000, count = 1 },
                    { name = "WEAPON_APPISTOL", price = 4000, count = 1 },
                    { name = "WEAPON_MACHINEPISTOL", price = 8000, count = 1 },
                    { name = "WEAPON_MINISMG", price = 9000, count = 1 },
                    { name = "WEAPON_MICROSMG", price = 10000, count = 1 },
                    { name = "WEAPON_GUSENBERG", price = 11000, count = 1 },
                    { name = "WEAPON_ASSAULTSMG", price = 12000, count = 1 },
                    { name = "WEAPON_SAWNOFFSHOTGUN", price = 6000, count = 1 },
                    { name = "WEAPON_ADVANCEDRIFLE", price = 20000, count = 1 },
                    { name = "WEAPON_ASSAULTRIFLE", price = 25000, count = 1 },
                    { name = "WEAPON_COMPACTRIFLE", price = 15000, count = 1 },
                    { name = "WEAPON_COMBATMG", price = 40000, count = 1 },
                    { name = "disc_ammo_pistol", price = 250, count = 10 },
                    { name = "disc_ammo_rifle", price = 400, count = 10 },
                    { name = "disc_ammo_shotgun", price = 300, count = 10 },
                    { name = "disc_ammo_smg", price = 280, count = 10 },      
                },
                markerType = 29,
                markerColour = { r = 0, g = 0, b = 255 },
                blipColour = 2,
                blipSprite = 52,
                msg = 'Open Shop ~INPUT_CONTEXT~',
                enableBlip = false,
                job = 'god'
                }, 

     



    ['Ambulance Pharmacy'] = {
                    coords = {
                        vector3(305.58, -600.12, 42.7),
                    },
                    items = {
                        {name = 'bread', price = 0, count = 20},
                        {name = 'water', price = 0, count = 20},
                        {name = "WEAPON_STUNGUN", price = 0, count = 1 },
                        {name = 'bandage', price = 0, count = 20},
                        {name = 'medikit', price = 0, count = 20},
                    },
                    markerType = 29,
                    markerColour = { r = 0, g = 0, b = 255 },
                    blipColour = 2,
                    blipSprite = 52,
                    msg = 'Open Shop ~INPUT_CONTEXT~',
                    enableBlip = false,
                    job = 'ambulance'
                    },  

    ['Police Armory'] = {
        coords = {
            vector3(451.72, -980.03, 30.69),
        },
        items = {
            { name = 'bread', price = 0, count = 20},
            { name = 'water', price = 0, count = 20},
            { name = "WEAPON_PISTOL", price = 0, count = 1 },
            { name = "WEAPON_COMBATPISTOL", price = 0, count = 1 },
            { name = "WEAPON_PUMPSHOTGUN", price = 0, count = 1 },
            { name = "WEAPON_STUNGUN", price = 0, count = 1 },
            { name = "WEAPON_FLASHLIGHT", price = 0, count = 1 },
            { name = "WEAPON_NIGHTSTICK", price = 0, count = 1 },
            { name = "WEAPON_CARBINERIFLE", price = 0, count = 1 },
            { name = "disc_ammo_pistol", price = 0, count = 1 },
            { name = "disc_ammo_rifle", price = 0, count = 1 },
            { name = "disc_ammo_shotgun", price = 0, count = 1 },
            
        },
        markerType = 29,
        markerColour = { r = 0, g = 0, b = 255 },
        blipColour = 2,
        blipSprite = 52,
        msg = 'Open Shop ~INPUT_CONTEXT~',
        enableBlip = false,
        job = 'police'
    }
}

Config.Stash = {
    ['Police Evidance Locker'] = {
        coords = vector3(480.919, -989.972, 24.200),
        size = vector3(1.0, 1.0, 1.0),
        job = 'police',
        markerType = 27,
        markerColour = { r = 0, g = 0, b = 255 },
        msg = 'Open Stash Locker ~INPUT_CONTEXT~'
    },

    
    ['Police Junk Locker'] = {
        coords = vector3(481.035, -985.287, 24.200),
        size = vector3(1.0, 1.0, 1.0),
        job = 'police',
        markerType = 27,
        markerColour = { r = 0, g = 0, b = 255 },
        msg = 'Open Junk Locker ~INPUT_CONTEXT~'
    }
}

Config.Steal = {
    black_money = true,
    cash = true
}

Config.Seize = {
    black_money = true,
    cash = true
}

Config.Map = {
  {name="Store",color=2, id=52, x= 374.225, y= 326.717, z = 102.800},
  {name="Store",color=2, id=52, x= 25.8929, y= -1346.71, z = 28.597},
  {name="Store",color=2, id=52, x= -48.1829, y= -1756.99, z = 28.500},
  {name="Store",color=2, id=52, x= -707.769, y= -913.886, z = 18.315},
  {name="Store",color=2, id=52, x= -1223.69, y= -907.031, z = 11.426},
  {name="Store",color=2, id=52, x= -1487.15, y= -380.113, z = 39.2634},
  {name="Store",color=2, id=52, x= 1163.24, y= -323.212, z = 68.3051},
  {name="Store",color=2, id=52, x= 1136.09, y= -981.251, z = 45.5158},
  {name="Store",color=2, id=52, x= 2556.55, y= 382.399, z = 107.723},
  {name="Store",color=2, id=52, x= 547.382, y= 2670.33, z = 41.2565},
  {name="Store",color=2, id=52, x= 1961.21, y= 3741.6, z = 31.4437},
  {name="Store",color=2, id=52,x= 1698.95, y= 4924.46, z = 41.1637},
  {name="Store",color=2, id=52, x= 1729.65, y= 6415.65, z = 34.137},
  {name="Store",color=2, id=52, x= -3243.03, y= 1001.66, z = 11.9307},
  {name="Store",color=2, id=52, x= 2678.06, y= 3281.11, z = 55.2411},
  {name="Weapon Shop",color=1, id=110, x= -662.180, y= -934.961, z =20.929},
  {name="Weapon Shop",color=1, id=110, x= 810.25, y= -2157.60, z =28.72},
  {name="Weapon Shop",color=1, id=110, x= 1693.44, y= 3760.16, z =33.81},
  {name="Weapon Shop",color=1, id=110, x= -330.24, y= 6083.88, z =30.55},
  {name="Weapon Shop",color=1, id=110, x= 252.63, y= -50.00, z =68.99},
  {name="Weapon Shop",color=1, id=110, x= 22.09, y= -1107.28, z =28.90},
  {name="Weapon Shop",color=1, id=110, x= 2567.69, y= 294.38, z =107.83},
  {name="Weapon Shop",color=1, id=110, x= -1117.58, y= 2698.61, z =17.65},
  {name="Weapon Shop",color=1, id=110, x= 842.44, y= -1033.42, z =27.29},
  {name="Tool Shop",color=11, id=402, x= 44.2555, y= -1747.69,  z = 28.5848},
  {name="Tool Shop",color=11, id=402, x= 2748.28,  y= 3472.84,  z = 54.6746}
}

Config.VehicleSlot = {
    [0] = 10, --Compact
    [1] = 15, --Sedan
    [2] = 20, --SUV
    [3] = 15, --Coupes
    [4] = 5, --Muscle
    [5] = 5, --Sports Classics
    [6] = 5, --Sports
    [7] = 5, --Super
    [8] = 2, --Motorcycles
    [9] = 10, --Off-road
    [10] = 20, --Industrial
    [11] = 20, --Utility
    [12] = 30, --Vans
    [13] = 0, --Cycles
    [14] = 0, --Boats
    [15] = 0, --Helicopters
    [16] = 0, --Planes
    [17] = 20, --Service
    [18] = 20, --Emergency
    [19] = 90, --Military
    [20] = 0, --Commercial
    [21] = 0 --Trains
}

Config.Throwables = {
    WEAPON_MOLOTOV = 615608432,
    WEAPON_GRENADE = -1813897027,
    WEAPON_STICKYBOMB = 741814745,
    WEAPON_PROXMINE = -1420407917,
    WEAPON_SMOKEGRENADE = -37975472,
    WEAPON_PIPEBOMB = -1169823560,
    WEAPON_SNOWBALL = 126349499
}

Config.FuelCan = 883325847