Config = {}

Config.VehicleMenu = true -- enable this if you wan't a vehicle menu.
Config.VehicleMenuButton = 344 -- change this to the key you want to open the menu with. buttons: https://docs.fivem.net/game-references/controls/
Config.RangeCheck = 25.0 -- this is the change you will be able to control the vehicle.

Config.Garages = {
    ["Main"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(212.39, -808.66, 31.81)
            },
            ["vehicle"] = {
                ["position"] = vector3(211.64, -800.16, 29.3), 
                ["heading"] = 336.32
            }
        },
        ["camera"] = {  -- camera is not needed just if you want cool effects.
            ["x"] = 213.52, 
            ["y"] = -791.67, 
            ["z"] = 33.88, 
            ["rotationX"] = -31.401574149728, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = -175.40157422423 
        }
    },

    ["Pink Cage"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(273.67422485352, -344.15573120117, 45.5)
            },
            ["vehicle"] = {
                ["position"] = vector3(272.50082397461, -337.40579223633, 43.5), 
                ["heading"] = 160.0
            }
        },
        ["camera"] = { 
            ["x"] = 283.28225708008, 
            ["y"] = -333.24017333984, 
            ["z"] = 50.004745483398, 
            ["rotationX"] = -21.637795701623, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 125.73228356242 
        }
    },

    ["Central"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-279.67, -888.61, 31.9)
            },
            ["vehicle"] = {
                ["position"] = vector3(-277.06, -898.4, 29.95), 
                ["heading"] = 338
            }
        },
        ["camera"] = { 
            ["x"] = -266.89, 
            ["y"] = -883.56, 
            ["z"] = 35.24, 
            ["rotationX"] = -21.637795701623, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 125.73228356242 
        }
    },
    
    ["Sandy"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(1988.64, 3781.89, 33)
            },
            ["vehicle"] = {
                ["position"] = vector3(1985.38, 3775.12, 30.9), 
                ["heading"] = 204.86
            }
        },
        ["camera"] = { 
            ["x"] = 1985.78, 
            ["y"] = 3764.78, 
            ["z"] = 34.2, 
            ["rotationX"] = -21.637795701623, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 5.73228356242 
        }
    },

    ["Mission Row"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(985.77, -206.98, 71.7)
            },
            ["vehicle"] = {
                ["position"] = vector3(982.55, -215.03, 69.3), 
                ["heading"] = 324.74
            }
        },
        ["camera"] = { 
            ["x"] = 992.1, 
            ["y"] = -209.44, 
            ["z"] = 72.5, 
            ["rotationX"] = -21.637795701623, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 125.73228356242 
        }
    },

    ["Paleto"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-285.1, 6113.95, 32)
            },
            ["vehicle"] = {
                ["position"] = vector3(-285.54, 6124.87, 30), 
                ["heading"] = 223.97
            }
        },
        ["camera"] = { 
            ["x"] = -275.75, 
            ["y"] = 6118.51, 
            ["z"] = 34.2, 
            ["rotationX"] = -21.637795701623, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 50.73228356242 
        }
    },

    ["Bay"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-818.78, -1287.54, 5.7)
            },
            ["vehicle"] = {
                ["position"] = vector3(-810.94, -1282.45, 3.59), 
                ["heading"] = 257.63
            }
        },
        ["camera"] = { 
            ["x"] = -802.02, 
            ["y"] = -1281.97, 
            ["z"] = 6.64, 
            ["rotationX"] = -21.637795701623, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 90.73228356242 
        }
    },

    ["Jamestown"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(344.16, -1960.14, 25)
            },
            ["vehicle"] = {
                ["position"] = vector3(353.65, -1962.18, 23), 
                ["heading"] = 231.95
            }
        },
        ["camera"] = { 
            ["x"] = 360.82, 
            ["y"] = -1964.96, 
            ["z"] = 27.33, 
            ["rotationX"] = -21.637795701623, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 70.73228356242 
        }
    },

    ["Strawberry"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(6.46, -1729.54, 30)
            },
            ["vehicle"] = {
                ["position"] = vector3(-1.05, -1723.48, 28), 
                ["heading"] = 113.6
            }
        },
        ["camera"] = { 
            ["x"] = -9.38, 
            ["y"] = -1721.52, 
            ["z"] = 31.00, 
            ["rotationX"] = -21.637795701623, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 270.73228356242 
        }
    },

    ["Rockfort Hill"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-727.85, -61.14, 42.4)
            },
            ["vehicle"] = {
                ["position"] = vector3(-735.46, -67.35, 40.5), 
                ["heading"] = 117.32
            }
        },
        ["camera"] = { 
            ["x"] = -740.14, 
            ["y"] = -74.15, 
            ["z"] = 44.00, 
            ["rotationX"] = -21.637795701623, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 320.73228356242 
        }
    },
}

Config.Labels = {
    ["menu"] = "~INPUT_CONTEXT~ Open garage %s.",
    ["vehicle"] = "~INPUT_CONTEXT~ Put back '%s' to your garage."
}

Config.Trim = function(value)
	if value then
		return (string.gsub(value, "^%s*(.-)%s*$", "%1"))
	else
		return nil
	end
end

Config.AlignMenu = "right" -- this is where the menu is located [left, right, center, top-right, top-left etc.]