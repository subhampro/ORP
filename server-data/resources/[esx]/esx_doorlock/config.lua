Config = {}
Config.Locale = 'en'

Config.DoorList = {

	--
	-- Mission Row First Floor
	--
	{
		objName = 'v_ilev_cd_entrydoor',
		objYaw = 0.0,
		objCoords  = vector3(1702.59, 2577.39, -69.29),
		textCoords = vector3(1703.37, 2577.48, -69.0),
		authorizedJobs = { 'police' },
		locked = true

	},
	-- To locker room & roof
	{
		objName = 'v_ilev_ph_gendoor004',
		objYaw = 90.0,
		objCoords  = vector3(449.6, -986.4, 30.6),
		textCoords = vector3(450.1, -986.3, 31.7),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Rooftop
	{
		objName = 'v_ilev_gtdoor02',
		objYaw = 90.0,
		objCoords  = vector3(464.361, -984.678, 43.834),
		textCoords = vector3(464.361, -984.050, 44.834),
		authorizedJobs = { 'police'},
		locked = true,
		
	},

	-- Hallway to roof
	
	{
		objName = 'v_ilev_arm_secdoor',
		objYaw = 90.0,
		objCoords  = vector3(461.2, -985.3, 30.8),
		textCoords = vector3(461.5, -986.0, 31.5),
		authorizedJobs = { 'police' },
		locked = true
	},

	{
		objName = 'slb2k11_SECDOOR',
		objYaw = 0.0,
		objCoords  = vector3(463.31, -1011.31, 32.98),
		textCoords = vector3(463.31, -1011.31, 33.38),
		authorizedJobs = { 'police' },
		locked = true,
		
	},

	
	-- Captain Office
	{
		objName = 'v_ilev_ph_gendoor002',
		objYaw = -180.0,
		objCoords  = vector3(447.2, -980.6, 30.6),
		textCoords = vector3(447.2, -980.0, 31.7),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- To downstairs (double doors)
	{
		textCoords = vector3(444.6, -989.4, 31.7),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 4,
		doors = {
			{
				objName = 'v_ilev_ph_gendoor005',
				objYaw = 180.0,
				objCoords = vector3(443.9, -989.0, 30.6)
			},

			{
				objName = 'v_ilev_ph_gendoor005',
				objYaw = 0.0,
				objCoords = vector3(445.3, -988.7, 30.6)
			}
		}
	},

	

	-- Mission Row Cells
	--

	-- Main Cells
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 0.0,
		objCoords  = vector3(463.8, -992.6, 24.9),
		textCoords = vector3(463.3, -992.6, 25.1),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Cell 1
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = -90.0,
		objCoords  = vector3(462.3, -993.6, 24.9),
		textCoords = vector3(461.8, -993.3, 25.0),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Cell 2
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 90.0,
		objCoords  = vector3(462.3, -998.1, 24.9),
		textCoords = vector3(461.8, -998.8, 25.0),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Cell 3
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 90.0,
		objCoords  = vector3(462.7, -1001.9, 24.9),
		textCoords = vector3(461.8, -1002.4, 25.0),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- To Back  
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 0.0,
		objCoords  = vector3(463.4, -1003.5, 25.0),
		textCoords = vector3(464.0, -1003.5, 25.5),
		authorizedJobs = { 'police' },
		locked = true
	},

	{
		objName = 'v_ilev_gtdoor',
		objYaw = 0.0,
		objCoords  = vector3(467.92, -996.49, 24.91),
		textCoords = vector3(467.92, -996.49, 25.41),
		authorizedJobs = { 'police'},
		locked = true,
		
	},

	-- {
	-- 	objName = 'v_ilev_gtdoor',
	-- 	objYaw = 0.0,
	-- 	objCoords  = vector3(472.15, -996.56, 24.91),
	-- 	textCoords = vector3(472.15, -996.56, 25.41),
	-- 	authorizedJobs = { 'police'},
	-- 	locked = true,
		
	-- },

	{
		objName = 'v_ilev_gtdoor',
		objYaw = 0.0,
		objCoords  = vector3(476.46, -996.44, 24.91),
		textCoords = vector3(476.46, -996.44, 25.41),
		authorizedJobs = { 'police'},
		locked = true,
		
	},

	{
		objName = 'v_ilev_gtdoor',
		objYaw = 0.0,
		objCoords  = vector3(480.72, -996.54, 24.91),
		textCoords = vector3(480.72, -996.54, 25.41),
		authorizedJobs = { 'police'},
		locked = true,
		
	},

-- PD GATE TO GARADGE
	{
		objName = 'v_ilev_cbankvaulgate01',
		objYaw = 0.0,
		objCoords  = vector3(423.42, -992.78, 30.79),
		textCoords = vector3(423.42, -992.78, 31.2),
		authorizedJobs = { 'police'},
		locked = true,
		
	},
	--
	-- Mission Row Back
	--

		-- Back (double doors)
		{
			textCoords = vector3(468.6, -1014.4, 27.1),
			authorizedJobs = { 'police' },
			locked = true,
			distance = 4,
			doors = {
				{
					objName = 'v_ilev_rc_door2',
					objYaw = 0.0,
					objCoords  = vector3(467.3, -1014.4, 26.5)
				},
	
				{
					objName = 'v_ilev_rc_door2',
					objYaw = 180.0,
					objCoords  = vector3(469.9, -1014.4, 26.5)
				}
			}
		},

		{
			textCoords = vector3(445.94, -996.99, 31.08),
			authorizedJobs = { 'police' },
			locked = true,
			distance = 2,
			doors = {
				{
					objName = 'v_ilev_rc_door2',
					objYaw = 180.0,
					objCoords  = vector3(446.46, -996.93, 30.68),
				},
	
				{
					objName = 'v_ilev_rc_door2',
					objYaw = 0.0,
					objCoords  = vector3(445.42, -997.05, 30.68),
				}
			}
		},	
	
		{
			textCoords = vector3(465.46, -990.05, 25.5),
			authorizedJobs = { 'police' },
			locked = true,
			distance = 2,
			doors = {
				{
					objName = 'v_ilev_ph_gendoor003',
					objYaw = 270.0,
					objCoords  = vector3(465.6, -990.64, 24.91),
				},
	
				{
					objName = 'v_ilev_ph_gendoor003',
					objYaw = 90.0,
					objCoords  = vector3(465.49, -989.44, 24.91),
				}
			}
		},	

		{
			textCoords = vector3(469.91, -1010.43, 27),
			authorizedJobs = { 'police' },
			locked = true,
			distance = 2,
			doors = {
				{
					objName = 'v_ilev_ph_gendoor003',
					objYaw = 270.0,
					objCoords  = vector3(469.78, -1011.14, 26.39),
				},
	
				{
					objName = 'v_ilev_ph_gendoor003',
					objYaw = 90.0,
					objCoords  = vector3(469.94, -1009.77, 26.39),
				}
			}
		},	

		{
			textCoords = vector3(443.09, -993.21, 31.50),
			authorizedJobs = { 'police' },
			locked = true,
			distance = 2,
			doors = {
				{
					objName = 'v_ilev_ph_gendoor006',
					objYaw = 90.0,
					objCoords  = vector3(443.13, -992.46, 31.5),
				},
	
				{
					objName = 'v_ilev_ph_gendoor006',
					objYaw = 270.0,
					objCoords  = vector3(443.06, -993.96, 31.5),
				}
			}
		},	


		{
			textCoords = vector3(429.17, -995.09, 36.5),
			authorizedJobs = { 'police' },
			locked = true,
			distance = 4,
			doors = {
				{
					objName = 'slb2k11_glassdoor',
					objYaw = 270.0,
					objCoords  = vector3(429.18, -995.84, 36)
				},
	
				{
					objName = 'slb2k11_glassdoor',
					objYaw = 90.0,
					objCoords  = vector3(428.97, -994.51, 36)
				}
			}
		},

		{
			objName = "v_ilev_ph_gendoor006",
			objYaw = 90.0,
			objCoords = vector3(463.7991027832, -984.27227783203, 36.3),
			textCoords = vector3(463.7991027832, -984.27227783203, 36.3),
			authorizedJobs = {"police" },
			locked = true
		},
		
		{
			objName = "v_ilev_ph_gendoor002",
			objYaw = 0.0,
			objCoords = vector3(462.61608886719, -1001.1064453125, 36.0),
			textCoords = vector3(462.61608886719, -1001.1064453125, 36.0),
			authorizedJobs = {"police" },
			locked = true
		},

	-- Back Gate / parking gate
	{
		objName = 'hei_prop_station_gate',
		objYaw = 90.0,
		objCoords  = vector3(488.8, -1017.2, 27.1),
		textCoords = vector3(488.8, -1020.2, 30.0),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 14,
		size = 2
	},

	-- Back Gate / parking gate
	{
		objName = 'prop_facgate_08',
		objYaw = 0.0,
		objCoords  = vector3(488.8, -1017.2, 27.1),
		textCoords = vector3(488.8, -1020.2, 30.0),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 14,
		size = 2
	},

	{
		objName = "prop_fnclink_03gate5",
		objYaw = 180.0,
		objCoords = vector3(1797.8, 2596.53, 45.59),
		textCoords = vector3(1796.77, 2596.55, 46.2),
		authorizedJobs = {"police"},
		locked = true
	},
	--
	-- Bolingbroke Penitentiary
	--

	-- Entrance (Two big gates)

	{
		objName = 'lr_prop_supermod_door_01',
		objCoords  = vector3(-205.7, -1310.57, 31.3),
		textCoords = vector3(-205.7, -1310.57, 34.0),
		authorizedJobs = { 'mechanic' },
		distance = 16,
		size = 2,
		locked = true
		
	},

	{
		objName = 'prop_gate_prison_01',
		objCoords  = vector3(1844.9, 2604.8, 44.6),
		textCoords = vector3(1844.9, 2608.5, 48.0),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		size = 2
	},

	{
		objName = 'prop_gate_prison_01',
		objCoords  = vector3(1818.5, 2604.8, 44.6),
		textCoords = vector3(1818.5, 2608.4, 48.0),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		size = 2
	},

	{
		objName = "prop_gate_prison_01",
		objCoords = vector3(1799.53, 2616.99, 44.6),
		textCoords = vector3(1796.11, 2616.99, 47.5),
		authorizedJobs = {"police"},
		locked = true,
		distance = 12,
		size = 2
	},

	{
		textCoords = vector3(1811.18, 2481.71, 46.5),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		doors = {
			{
				objName = 'prop_gate_prison_01',
				objCoords = vector3(1813.77, 2488.76, 45.45)
			},

			{
				objName = 'prop_gate_prison_01',
				objCoords = vector3(1808.51, 2474.89, 45.45)
			}
		}
	},

	{
		textCoords = vector3(1755.78, 2423.26, 46.42),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		doors = {
			{
				objName = 'prop_gate_prison_01',
				objCoords = vector3(1762.79, 2426.64, 45.42)
			},

			{
				objName = 'prop_gate_prison_01',
				objCoords = vector3(1749.18, 2420.21, 45.42)
			}
		}
	},

	{
		textCoords = vector3(1660.49, 2408.51, 46.42),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		doors = {
			{
				objName = 'prop_gate_prison_01',
				objCoords = vector3(1667.43, 2407.73, 45.41)
			},

			{
				objName = 'prop_gate_prison_01',
				objCoords = vector3(1653.20, 2409.37, 45.41)
			}
		}
	},
	
	{
		textCoords = vector3(1554.55, 2476.26, 46.42),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		doors = {
			{
				objName = 'prop_gate_prison_01',
				objCoords = vector3(1558.06, 2469.29, 45.41)
			},

			{
				objName = 'prop_gate_prison_01',
				objCoords = vector3(1550.99, 2482.59, 45.41)
			}
		}
	},

	{
		textCoords = vector3(1547.49, 2583.66, 46.42),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		doors = {
			{
				objName = 'prop_gate_prison_01',
				objCoords = vector3(1546.96, 2576.11, 45.41)
			},

			{
				objName = 'prop_gate_prison_01',
				objCoords = vector3(1547.64, 2591.24, 45.41)
			}
		}
	},

	{
		textCoords = vector3(1580.05, 2673.47, 46.42),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		doors = {
			{
				objName = 'prop_gate_prison_01',
				objCoords = vector3(1575.8, 2667.44, 45.41)
			},

			{
				objName = 'prop_gate_prison_01',
				objCoords = vector3(1584.59, 2679.56, 45.41)
			}
		}
	},

	{
		textCoords = vector3(1655.03, 2745.31, 46.42),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		doors = {
			{
				objName = 'prop_gate_prison_01',
				objCoords = vector3(1648.61, 2741.72, 45.42)
			},

			{
				objName = 'prop_gate_prison_01',
				objCoords = vector3(1661.73, 2748.67, 45.41)
			}
		}
	},
	
	{
		textCoords = vector3(1769.53, 2749.90, 46.42),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		doors = {
			{
				objName = 'prop_gate_prison_01',
				objCoords = vector3(1762.32, 2752.43, 45.42)
			},

			{
				objName = 'prop_gate_prison_01',
				objCoords = vector3(1776.64, 2747.38, 45.41)
			}
		}
	},

	{
		textCoords = vector3(1832.68, 2696.33, 46.42),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		doors = {
			{
				objName = 'prop_gate_prison_01',
				objCoords = vector3(1830.24, 2703.76, 45.42)
			},

			{
				objName = 'prop_gate_prison_01',
				objCoords = vector3(1835.19, 2689.17, 45.41)
			}
		}
	},

-- Gangs

 	-- vagos
		{

			objName = "ex_p_mp_door_apart_door_black_s",
			objYaw = 320.0,
			objCoords = vector3(357.0593, -2051.872, 22.39342),
			textCoords = vector3(356.59, -2051.52, 22.39),
			authorizedJobs = {'vagos'},
			locked = true
		},

	 	{
			objName = "v_ilev_ph_cellgate",
			objYaw = 230.0,
			objCoords = vector3(352.84, -2075.77, 21.31),
			textCoords = vector3(352.84, -2075.77, 22),
			authorizedJobs = {'vagos'},
			locked = true
		},
	
	-- ballas

		{
			objName = "p_cut_door_01",
			objYaw = 210.0,
			objCoords = vector3(123.5, -1928.65, 21.38),
			textCoords = vector3(123.5, -1928.65, 22),
			authorizedJobs = {'ballas'},
			locked = true
		},

		{
			objName = "v_ilev_ph_cellgate",
			objYaw = 50.0,
			objCoords = vector3(62.6, -1960.34, 20.91),
			textCoords = vector3(62.6, -1960.34, 21.5),
			authorizedJobs = {'ballas'},
			locked = true
		},

	-- green

		{
			objName = "ex_prop_door_arcad_roof_l",
			objYaw = 50.0,
			objCoords = vector3(-91.26347, -1632.765, 31.65368),
			textCoords = vector3(-91.73, -1633.2, 31.65368),
			authorizedJobs = {'families'},
			locked = true
		},

		{
			objName = "v_ilev_ph_cellgate",
			objYaw = 320.0,
			objCoords = vector3(-135.66, -1599.37, 34.65),
			textCoords = vector3(-135.66, -1599.37, 35.25),
			authorizedJobs = {'families'},
			locked = true
		},

	-- TLMC

		{
			objName = "v_ilev_lostdoor",
			objYaw = 43.0,
			objCoords = vector3(981.17, -103.34, 74.85),
			textCoords = vector3(981.65, -102.77, 75.25),
			authorizedJobs = {'tlmc'},
			locked = true
		},

		{
			objName = "prop_damdoor_01",
			objYaw = 235.0,
			objCoords = vector3(983.9, -142.6, 74.27),
			textCoords = vector3(983.5, -143.23, 75.25),
			authorizedJobs = {'tlmc'},
			locked = true
			},
	

	-- mafia
	{
		textCoords = vector3(-879.57, -1444.83, 8.25),
		authorizedJobs = { 'mafia' },
		locked = true,
		distance = 3,
		doors = {
			{
				objName = 'prop_grumandoor_r',
				objYaw = 290.0,
				objCoords  = vector3(-879.19, -1445.31, 7.53)
			},

			{
				objName = 'prop_grumandoor_l',
				objYaw = 290.0,
				objCoords  = vector3(-879.92, -1444.48, 7.53)
			}
		}
	},

	{
		textCoords = vector3(-875.99, -1454.52, 8.25),
		authorizedJobs = { 'mafia' },
		locked = true,
		distance = 3,
		doors = {
			{
				objName = 'prop_grumandoor_r',
				objYaw = 290.0,
				objCoords  = vector3(-875.79, -1454.92, 7.53)
			},

			{
				objName = 'prop_grumandoor_l',
				objYaw = 290.0,
				objCoords  = vector3(-876.2, -1454.12, 7.53)
			}
		}
	},

	{
		textCoords = vector3(-899.49, -1449.31, 8.25),
		authorizedJobs = { 'mafia' },
		locked = true,
		distance = 3,
		doors = {
			{
				objName = 'prop_grumandoor_r',
				objYaw = 20.0,
				objCoords  = vector3(-899.03, -1449.12, 7.53)
			},

			{
				objName = 'prop_grumandoor_l',
				objYaw = 20.0,
				objCoords  = vector3(-899.86, -1449.51, 7.53)
			}
		}
	},


	-- principal bank
		{
		objName = 'hei_v_ilev_bk_gate2_pris',
		objCoords = vector3(262.1981, 222.5188, 106.4296),
		textCoords = vector3(262.1981, 222.5188, 107.4296),
		authorizedJobs = { 'police','admin' },
		locked = true,
		distance = 4,
		size = 2
	},


	-- ranch

	{
		objName = "v_ilev_ra_door4r",
		objYaw = 180.0,
		objCoords = vector3(1406.96, 1128.21, 114.33),
		textCoords = vector3(1406.96, 1128.21, 115.0),
		authorizedJobs = {'god'},
		locked = true
	},
}