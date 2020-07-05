Config                            = {}
Config.Locale                     = 'en'

--- #### BASICS
Config.EnablePrice = false -- false = bikes for free
Config.EnableEffects = true
Config.EnableBlips = true


--- #### PRICES	
Config.PriceTriBike = 89
Config.PriceScorcher = 99
Config.PriceCruiser = 129
Config.PriceBmx = 109


--- #### MARKER EDITS
Config.TypeMarker = 38
Config.MarkerScale = {{x = 1.25,y = 1.25,z = 1.25}}
Config.MarkerColor = {{r = 0,g = 255,b = 0}}
	
Config.MarkerZones = { 

    {x = -1034.08, y = -2732.82, z = 19.74},
    
}


-- Edit blip titles
Config.BlipZones = { 

   {title="Bikes Rental", colour=2, id=226, x = -1035.57, y = -2732.34, z = 20.17},
}
