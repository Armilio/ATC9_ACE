/**
* Player basic loadout (sideA)
* this setVariable ["atc_basicLoadoutClass", string Unit class, false];
    [
        string Unit class,
        [
            [
                string Uniform class name,
                array Uniform items
            ],
            [
                string Vest class name,
                array Vest items
            ],
            [
                string Backpack class name,
                array Backpack items
            ],
            string Headgear class name,
            array Items, e.g. map, radio, compass, NVG, Binoculars
			string Binocular class name
        ],
        [
            [
                string Secondary weapon class name,
                array Secondary weapon items
            ],
            [
                string Handgun class name,
                array Handgun items
            ],
            [                
                string Primary weapon class name,
                array Primary weapon items
            ]
        ]
    ]
*/

[
    [
        "Commander",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["ACE_MapTools", 1],
				["FirstAidKit", 2],
				["ACE_EarPlugs", 1],
				["ACE_microDAGR", 1]
	
			  ]
            ],
            [
                "V_PlateCarrier1_rgr",
              [
				["30Rnd_65x39_caseless_mag", 4],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1],
				["H_HelmetB_snakeskin", 1]
			  ]
            ],
            [
                "tf_rt1523g",
                []
            ],
            "H_Beret_Colonel",
            ["ItemMap","ItemCompass","ItemWatch","tf_anprc152","NVGoggles"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MXC_F", ["ACE_optic_Hamr_PIP", "", ""]]
        ]
    ],
    [
        "TeamLeader",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],["ACE_microDAGR", 1],
				["16Rnd_9x21_Mag", 2]
			  ]
            ],
            [
                "V_PlateCarrier1_rgr",
              [
				["30Rnd_65x39_caseless_mag", 6],
				["handgrenade", 1],["1Rnd_HE_Grenade_shell", 4],
				["smokeshellblue", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "tf_rt1523g",
                []
            ],
            "H_HelmetSpecB_snakeskin",
            ["ItemMap","ItemCompass","ItemWatch","tf_anprc152","NVGoggles"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["hgun_P07_F", ["", "", ""]],
            ["arifle_MX_GL_F", ["ACE_optic_Hamr_PIP", "", ""]]
        ]
    ],
    [
        "Grenadier",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],
				["16Rnd_9x21_Mag", 2]
			  ]
            ],
            [
                "V_PlateCarrier1_rgr",
              [
				["30Rnd_65x39_caseless_mag", 6],
                ["1Rnd_HE_Grenade_shell", 4],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "tf_rt1523g",
                []
            ],
            "H_HelmetSpecB_snakeskin",
            ["ItemMap","ItemCompass","ItemWatch","tf_anprc152","NVGoggles"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["hgun_P07_F", ["", "", ""]],
            ["arifle_MX_GL_F", ["optic_Holosight", "", ""]]
        ]
    ],
    [
        "SupportRifleman",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_PlateCarrier1_rgr",
              [
				["handgrenade", 1],
				["smokeshellblue", 1],
				["100Rnd_65x39_caseless_mag_Tracer", 3],
                ["SmokeShell", 1],
				["16Rnd_9x21_Mag", 2]
			  ]
            ],
            [
                "B_AssaultPack_rgr",
                [
                ["100Rnd_65x39_caseless_mag", 3]
                ]
            ],
            "H_HelmetSpecB_snakeskin",
            ["ItemMap","ItemCompass","ItemWatch","tf_anprc152","NVGoggles"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["hgun_P07_F", ["", "", ""]],
            ["arifle_MX_SW_F", ["optic_Holosight", "bipod_01_F_snd", ""]]
        ]
    ],
    [
        "Machinegunner",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_PlateCarrier1_rgr",
              [
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1],
				["16Rnd_9x21_Mag", 2]
			  ]
            ],
            [
                "B_AssaultPack_rgr",
                [
                ["200Rnd_65x39_cased_Box", 2]
                ]
            ],
            "H_HelmetSpecB_snakeskin",
            ["ItemMap","ItemCompass","ItemWatch","tf_anprc152","NVGoggles"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["hgun_P07_F", ["", "", ""]],
            ["LMG_Mk200_F", ["bipod_01_F_snd", "", ""]]
        ]
    ],
    [
        "Medic",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_PlateCarrier1_rgr",
              [
				["30Rnd_65x39_caseless_mag", 6],
				["smokeshellblue", 1],
                ["smokeshellgreen", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "B_AssaultPack_rgr_Medic",
              [
				["FirstAidKit", 10]
			  ]
            ],
            "H_HelmetSpecB_snakeskin",
            ["ItemMap","ItemCompass","ItemWatch","tf_anprc152","NVGoggles"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MXC_F", ["optic_Holosight", "", ""]]
        ]
    ],
    [
        "LightAntiTank",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_PlateCarrier1_rgr",
              [
				["30Rnd_65x39_caseless_mag", 6],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "B_AssaultPack_rgr",
              [
				["tf47_m3maaws_HEAT", 1],
                ["tf47_m3maaws_HEDP", 1]
			  ]
            ],
            "H_HelmetSpecB_snakeskin",
            ["ItemMap","ItemCompass","ItemWatch","tf_anprc152","NVGoggles"],
			"Binocular"
        ],
        [
            ["tf47_m3maaws", ["tf47_optic_m3maaws", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MX_F", ["optic_Holosight", "", ""]]
        ]
    ],
    [
        "SF",
        [
            [
                "U_B_CTRG_Soldier_F",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],["ACE_microDAGR", 1]
			  ]
            ],
            [
                "V_PlateCarrierL_CTRG",
              [
				["30Rnd_65x39_caseless_mag", 6],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1],
				["11Rnd_45ACP_Mag", 2]		
			  ]
            ],
            [
                "",
                []
            ],
            "H_HelmetB_TI_tna_F",
            ["ItemMap","ItemCompass","ACE_Altimeter","tf_anprc152","ACE_NVG_Gen4"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["hgun_Pistol_heavy_01_F", ["", "muzzle_snds_acp", ""]],
            ["arifle_MXC_Black_F", ["ACE_optic_Hamr_PIP", "muzzle_snds_H", "acc_pointer_IR"]]
        ]
    ],
    [
        "Sniper_SF",
        [
            [
                "U_B_FullGhillie_sard",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],
				["ACE_RangeCard",1]
			  ]
            ],
            [
                "V_TacVest_oli",
              [
				["10Rnd_338_Mag", 4],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1],["11Rnd_45ACP_Mag", 2]	
			  ]
            ],
            [
                "",
                []
            ],
            "",
            ["ItemMap","ItemCompass","ACE_Altimeter","tf_anprc152","NVGoggles"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["hgun_Pistol_heavy_01_F", ["", "muzzle_snds_acp", ""]],
            ["srifle_DMR_02_camo_F", ["ACE_optic_LRPS_PIP", "bipod_01_F_blk", "muzzle_snds_338_sand"]]
        ]
    ],
    [
        "Spotter_SF",
        [
            [
                "U_B_FullGhillie_sard",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],
				["ACE_RangeCard",1]
			  ]
            ],
            [
                "V_TacVest_oli",
              [
				["30Rnd_65x39_caseless_mag", 6],
                ["1Rnd_HE_Grenade_shell", 4],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1],["11Rnd_45ACP_Mag", 2],	
				["ACE_Kestrel4500",1],["ACE_microDAGR", 1]
			  ]
            ],
            [
                "tf_rt1523g",
                []
            ],
            "",
            ["ItemMap","ItemCompass","ACE_Altimeter","tf_anprc152","NVGoggles"],
			"ACE_Vector"
        ],
        [
            ["", ["", "", ""]],
            ["hgun_Pistol_heavy_01_F", ["", "muzzle_snds_acp", ""]],
            ["arifle_MX_GL_F", ["ACE_optic_Hamr_PIP", ""]]
        ]
    ],
	[
        "Sniper",
        [
            [
                "U_B_GhillieSuit",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],
				["ACE_RangeCard",1],["ACE_Kestrel4500",1]
			  ]
            ],
            [
                "V_TacVest_oli",
              [
				["10Rnd_338_Mag", 4],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "",
                []
            ],
            "",
            ["ItemMap","ItemCompass","ACE_Altimeter","tf_anprc152","NVGoggles"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["srifle_DMR_02_camo_F", ["ACE_optic_LRPS_PIP", "bipod_01_F_blk", "muzzle_snds_338_sand"]]
        ]
    ],
    [
        "Spotter",
        [
            [
                "U_B_GhillieSuit",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],
				["ACE_RangeCard",1]
			  ]
            ],
            [
                "V_TacVest_oli",
              [
				["30Rnd_65x39_caseless_mag", 6],
                ["1Rnd_HE_Grenade_shell", 4],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1],["ACE_Kestrel4500",1],["ACE_microDAGR", 1]
			  ]
            ],
            [
                "tf_rt1523g",
                []
            ],
            "",
            ["ItemMap","ItemCompass","ItemWatch","tf_anprc152","NVGoggles"],
			"ACE_Vector"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MX_GL_F", ["ACE_optic_Hamr_PIP", ""]]
        ]
    ],
    [
        "Engineer",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_TacVest_oli",
              [
				["30Rnd_65x39_caseless_mag", 6],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "tf_rt1523g_big",
                []
            ],
            "H_Cap_headphones",
            ["ItemMap","ItemCompass","ItemWatch","tf_anprc152","NVGoggles"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MXC_F", ["optic_Holosight", "", ""]]
        ]
    ],
    [
        "HeavyAntiTank",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_PlateCarrier1_rgr",
              [
				["30Rnd_65x39_caseless_mag", 6],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "B_TacticalPack_oli",
              [
              ["ATC_MAG_Titan_AT_B", 1]
              ]
            ],
            "H_HelmetB_camo",
            ["ItemMap","ItemCompass","ItemWatch","tf_anprc152","NVGoggles"],
			"Binocular"
        ],
        [
            ["ATC_TITAN_AT_B", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MX_F", ["optic_Holosight", "", ""]]
        ]
    ],
    [
        "HeavyAntiAir",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_PlateCarrier1_rgr",
              [
				["30Rnd_65x39_caseless_mag", 6],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "B_TacticalPack_oli",
              [
              ["Titan_AA", 1]
              ]
            ],
            "H_HelmetB_camo",
            ["ItemMap","ItemCompass","ItemWatch","tf_anprc152","NVGoggles"],
			"Binocular"
        ],
        [
            ["ATC_TITAN_AA_B", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MX_F", ["optic_Holosight", "", ""]]
        ]
    ],
    [
        "TankCrew",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_TacVest_oli",
              [
				["30Rnd_65x39_caseless_mag", 4],
				["smokeshellblue", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "",
                []
            ],
            "H_HelmetCrew_B",
            ["ItemMap","ItemCompass","ItemWatch","tf_anprc152","NVGoggles"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MXC_F", ["optic_Holosight", "", ""]]
        ]
    ],
    [
        "HeliPilot",
        [
            [
                "U_B_HeliPilotCoveralls",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "V_BandollierB_oli",
              [ 
				["30Rnd_65x39_caseless_mag", 2]
			  ]
            ],
            [
                "",
                []
            ],
            "H_PilotHelmetHeli_B",
            ["ItemMap","ItemCompass","ItemWatch","tf_anprc152","NVGoggles"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MXC_F", ["optic_Holosight", "", ""]]
        ]
    ],
    [
        "Rifleman",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_PlateCarrier1_rgr",
              [
				["30Rnd_65x39_caseless_mag", 6],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1],
				["16Rnd_9x21_Mag", 2]
			  ]
            ],
            [
                 "",
                 []
            ],
            "H_HelmetSpecB_snakeskin",
            ["ItemMap","ItemCompass","ItemWatch","tf_anprc152","NVGoggles"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["hgun_P07_F", ["", "", ""]],
            ["arifle_MX_F", ["optic_Holosight", "", ""]]
        ]
    ],
	[
        "Mortarist",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],["ACE_DAGR", 1]
			  ]
            ],
            [
                "V_PlateCarrier1_rgr",
              [
				["30Rnd_65x39_caseless_mag", 4],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1],
				["ACE_RangeTable_82mm",1],
				["ACE_Kestrel4500",1]
			  ]
            ],
            [
                 "",
                 []
            ],
            "H_HelmetB_snakeskin",
            ["ItemMap","ItemCompass","ItemWatch","tf_anprc152","NVGoggles"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MX_F", ["optic_Holosight", "", ""]]
        ]
    ],
    [
        "DM",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],
				["ACE_RangeCard",1],["ACE_Kestrel4500",1]
			  ]
            ],
            [
                "V_PlateCarrier1_rgr",
              [
				["20Rnd_762x51_Mag", 6],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "",
                []
            ],
            "H_HelmetB_camo",
            ["ItemMap","ItemCompass","ItemWatch","tf_anprc152","NVGoggles"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["srifle_EBR_F", ["optic_AMS", "bipod_01_F_snd", ""]]
        ]
    ],
	[
        "Mark",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],
				["ACE_RangeCard", 1]
			  ]
            ],
            [
                "V_PlateCarrier1_rgr",
              [
				["30Rnd_65x39_caseless_mag", 5],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1],
				["16Rnd_9x21_Mag", 2]
			  ]
            ],
            [
                "",
                []
            ],
            "H_HelmetB_camo",
            ["ItemMap","ItemCompass","ItemWatch","tf_anprc152","NVGoggles"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["hgun_P07_F", ["", "", ""]],
            ["arifle_MXM_F", ["ACE_optic_SOS_PIP", "bipod_01_F_snd", ""]]
        ]
    ],
	[
        "UAV",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
				
			  ]
            ],
            [
                "V_PlateCarrier1_rgr",
              [
				["30Rnd_65x39_caseless_mag", 6],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "",
              [
              ]
            ],
            "H_HelmetB_snakeskin",
            ["ItemMap","ItemCompass","ItemWatch","tf_anprc152","B_UavTerminal","NVGoggles"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MX_F", ["", "", ""]]
        ]
    ],
    [
        "Explosive",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],
				["ACE_M26_Clacker",1],["16Rnd_9x21_Mag", 2]
			  ]
            ],
            [
                "V_PlateCarrier1_rgr",
              [
				["30Rnd_65x39_caseless_mag", 6],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1],
				["ACE_DefusalKit", 1]
			  ]
            ],
            [
                "B_AssaultPack_rgr",
              [
              ["APERSTripMine_Wire_Mag", 1],
			  ["APERSMine_Range_Mag", 2],
              ["ATMine_Range_Mag", 1],
              ["DemoCharge_Remote_Mag", 1]
              ]
            ],
            "H_HelmetSpecB_snakeskin",
            ["ItemMap","ItemCompass","ItemWatch","tf_anprc152","NVGoggles"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["hgun_P07_F", ["", "", ""]],
            ["arifle_MX_F", ["optic_Holosight", "", ""]]
        ]
    ]
]