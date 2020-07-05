Config = {
    ImpoundPrice = 50, -- price to retrieve impounded car
    Entrances = {
        {coords = vector3(83.8, 95.68, 77.66), heading = 70.25},
        {coords = vector3(-742.92, -2473.92, 13.45), heading = 332.11},
    },
    View = {
        vehicle = {coords = vector3(228.8, -986.97, -99.96), heading = 179.12},
    },
    Impounds = {
        {
            vehicleSpawn = {coords = vector3(490.99, -1313.66, 28.83), heading = 285.99},
            menu = vector3(483.6, -1312.07, 28.23),
        },
    },
}

Strings = {
    ['enter_garage'] = 'Press %s to enter the garage',
    ['store_garage'] = 'Press %s to store your %s',
    ['not_your'] = 'Garage - you do not own this vehicle!',
    ['no_vehicle'] = 'Garage - no vehicle found',
    ['impound'] = ' Impounded',
    ['take_out'] = 'Take out %s?',
    ['yes'] = 'Yes',
    ['no'] = 'No',
    ['retrieve_impounded'] = 'Retrieve %s | %s for %s',
    ['open_impound'] = 'Press ~INPUT_CONTEXT~ to open the impound',
    ['no_money'] = "You don't have enough money!",
    ['impound_blip'] = 'Impound',
    ['garage'] = 'Garage'
}