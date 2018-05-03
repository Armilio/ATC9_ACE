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
				["FirstAidKit", 2]
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
                "tf_rt1523g",
                []
            ],
            "H_Beret_Colonel",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MX_F", ["optic_hamr", "", ""]]
        ]
    ],
    [
        "TeamLeader",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2]
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
                "tf_rt1523g",
                []
            ],
            "H_HelmetSpecB",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MX_F", ["optic_hamr", "", ""]]
        ]
    ],
    [
        "Grenadier",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_oli",
              [
				["30Rnd_65x39_caseless_mag", 6],
                ["1Rnd_HE_Grenade_shell", 4],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "",
                []
            ],
            "H_HelmetSpecB",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			""
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MX_GL_F", ["optic_Holosight", "", ""]]
        ]
    ],
    [
        "SupportRifleman",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_oli",
              [
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "B_AssaultPack_rgr",
                [
                ["200Rnd_65x39_cased_Box", 2]
                ]
            ],
            "H_HelmetSpecB",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			""
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["LMG_Mk200_F", ["bipod_01_F_blk", "", ""]]
        ]
    ],
    [
        "Machinegunner",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_oli",
              [
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "B_AssaultPack_rgr",
                [
                ["130Rnd_338_Mag", 2]
                ]
            ],
            "H_HelmetSpecB",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			""
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["MMG_02_sand_F", ["bipod_01_F_snd", "", ""]]
        ]
    ],
    [
        "Medic",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_oli",
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
            "H_HelmetSpecB",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			""
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
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_oli",
              [
				["30Rnd_65x39_caseless_mag", 6],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1],
                ["ATC_NLAW_F", 1]
			  ]
            ],
            [
                "B_AssaultPack_rgr",
              [
				["ATC_NLAW_F", 1]
			  ]
            ],
            "H_HelmetSpecB",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			""
        ],
        [
            ["ATC_NLAW", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MX_F", ["optic_Holosight", "", ""]]
        ]
    ],
    [
        "TL_SF",
        [
            [
                "U_B_SpecopsUniform_sgg",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_camo",
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
            "H_HelmetSpecB_paint2",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MX_GL_F", ["optic_hamr", "muzzle_snds_H", ""]]
        ]
    ],
    [
        "SF",
        [
            [
                "U_B_SpecopsUniform_sgg",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_camo",
              [
				["30Rnd_65x39_caseless_mag", 6],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "",
                []
            ],
            "H_HelmetSpecB_paint2",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MX_F", ["optic_hamr", "muzzle_snds_H", ""]]
        ]
    ],
    [
        "DM_SF",
        [
            [
                "U_B_SpecopsUniform_sgg",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_camo",
              [
				["30Rnd_65x39_caseless_mag", 6],
				["handgrenade", 1],
				["smokeshellblue", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "",
                []
            ],
            "H_HelmetSpecB_paint2",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MXM_F", ["optic_DMS", "bipod_01_F_snd", ""]]
        ]
    ],
    [
        "Sniper",
        [
            [
                "U_B_GhillieSuit",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_oli",
              [
				["7Rnd_408_Mag", 4],
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
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"],
			""
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["srifle_LRR_F", ["optic_LRPS", "bipod_01_F_blk", ""]]
        ]
    ],
    [
        "Spotter",
        [
            [
                "U_B_GhillieSuit",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_oli",
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
            "",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"],
			"Rangefinder"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MX_GL_F", ["optic_hamr", ""]]
        ]
    ],
    [
        "Engineer",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2]
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
                "B_AssaultPack_rgr_Repair",
                []
            ],
            "H_Cap_headphones",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			""
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
				["FirstAidKit", 2]
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
                "B_AssaultPack_rgr",
              [
              ["Titan_AT", 1]
              ]
            ],
            "H_HelmetSpecB",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			""
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
				["FirstAidKit", 2]
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
                "B_AssaultPack_rgr",
              [
              ["Titan_AA", 1]
              ]
            ],
            "H_HelmetSpecB",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			""
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
				["FirstAidKit", 2]
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
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"],
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
				["FirstAidKit", 2]
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
            "H_PilotHelmetHeli_B",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"],
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
				["FirstAidKit", 2]
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
                 "",
                 []
            ],
            "H_HelmetSpecB",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			""
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
				["FirstAidKit", 2]
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
                "",
                []
            ],
            "H_HelmetSpecB",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MXM_F", ["optic_DMS", "bipod_01_F_snd", ""]]
        ]
    ],
    [
        "Explosive",
        [
            [
                "U_B_CombatUniform_mcam",
              [
				["FirstAidKit", 2]
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
                "B_AssaultPack_rgr",
              [
              ["APERSTripMine_Wire_Mag", 2],
              ["ATMine_Range_Mag", 1],
              ["DemoCharge_Remote_Mag", 1]
              ]
            ],
            "H_HelmetSpecB",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_MX_F", ["optic_Holosight", "", ""]]
        ]
    ]
]