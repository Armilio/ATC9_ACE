/**
* Player basic loadout (sideB)
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
                "U_O_OfficerUniform_ocamo",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_brn",
              [
				["30Rnd_65x39_caseless_green", 6],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "tf_mr3000",
                []
            ],
            "H_Beret_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_F", ["optic_arco", "", ""]]
        ]
    ],
    [
        "TeamLeader",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_brn",
              [
				["30Rnd_65x39_caseless_green", 6],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "tf_mr3000",
                []
            ],
            "H_HelmetO_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_F", ["optic_arco", "", ""]]
        ]
    ],
    [
        "Grenadier",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_brn",
              [
				["30Rnd_65x39_caseless_green", 6],
                ["1Rnd_HE_Grenade_shell", 4],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "",
                []
            ],
            "H_HelmetO_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			""
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_GL_F", ["optic_ACO_grn", "", ""]]
        ]
    ],
    [
        "SupportRifleman",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_brn",
              [
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "B_FieldPack_ocamo",
                [
                ["150Rnd_762x54_Box", 2]
                ]
            ],
            "H_HelmetO_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			""
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["LMG_Zafir_F", ["bipod_02_F_blk", "", ""]]
        ]
    ],
    [
        "Machinegunner",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_brn",
              [
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "B_FieldPack_ocamo",
                [
                ["150Rnd_93x64_Mag", 2]
                ]
            ],
            "H_HelmetO_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			""
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["MMG_01_hex_F", ["bipod_02_F_hex", "", ""]]
        ]
    ],
    [
        "Medic",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_brn",
              [
				["30Rnd_65x39_caseless_green", 6],
				["smokeshellred", 1],
                ["smokeshellpurple", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "B_FieldPack_ocamo_Medic",
              [
				["FirstAidKit", 10]
			  ]
            ],
            "H_HelmetO_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			""
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_C_F", ["optic_ACO_grn", "", ""]]
        ]
    ],
    [
        "LightAntiTank",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_brn",
              [
				["30Rnd_65x39_caseless_green", 6],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1],
                ["RPG32_F", 1]
			  ]
            ],
            [
                "B_FieldPack_ocamo",
              [
				["RPG32_F", 1]
			  ]
            ],
            "H_HelmetO_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			""
        ],
        [
            ["launch_RPG32_F", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_F", ["optic_ACO_grn", "", ""]]
        ]
    ],
    [
        "TL_SF",
        [
            [
                "U_O_SpecopsUniform_ocamo",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_blk",
              [
				["30Rnd_65x39_caseless_green", 6],
                ["1Rnd_HE_Grenade_shell", 4],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "tf_mr3000",
                []
            ],
            "H_HelmetSpecO_blk",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_GL_F", ["optic_arco", "muzzle_snds_H", ""]]
        ]
    ],
    [
        "SF",
        [
            [
                "U_O_SpecopsUniform_ocamo",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_blk",
              [
				["30Rnd_65x39_caseless_green", 6],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "",
                []
            ],
            "H_HelmetSpecO_blk",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_F", ["optic_arco", "muzzle_snds_H", ""]]
        ]
    ],
    [
        "DM_SF",
        [
            [
                "U_O_SpecopsUniform_ocamo",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_blk",
              [
				["10Rnd_762x54_Mag", 6],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "",
                []
            ],
            "H_HelmetSpecO_blk",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["srifle_DMR_01_F", ["optic_DMS", "bipod_02_F_hex", ""]]
        ]
    ],
    [
        "Sniper",
        [
            [
                "U_O_GhillieSuit",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_brn",
              [
				["5Rnd_127x108_APDS_Mag", 5],
				["handgrenade", 1],
				["smokeshellred", 1],
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
            ["srifle_GM6_F", ["optic_LRPS", "bipod_02_F_blk", ""]]
        ]
    ],
    [
        "Spotter",
        [
            [
                "U_O_GhillieSuit",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_brn",
              [
				["30Rnd_65x39_caseless_green", 6],
                ["1Rnd_HE_Grenade_shell", 4],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "tf_mr3000",
                []
            ],
            "",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"],
			"Rangefinder"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_GL_F", ["optic_arco", ""]]
        ]
    ],
    [
        "Engineer",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_brn",
              [
				["30Rnd_65x39_caseless_green", 6],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "B_FieldPack_cbr_Repair"
            ],
            "H_Cap_headphones",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			""
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_C_F", ["optic_ACO_grn", "", ""]]
        ]
    ],
    [
        "HeavyAntiTank",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_brn",
              [
				["30Rnd_65x39_caseless_green", 6],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
               "B_FieldPack_ocamo",
              [
              ["Titan_AT", 1]
              ]
            ],
            "H_HelmetO_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			""
        ],
        [
            ["ATC_TITAN_AT_O", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_F", ["optic_ACO_grn", "", ""]]
        ]
    ],
    [
        "HeavyAntiAir",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_brn",
              [
				["30Rnd_65x39_caseless_green", 6],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
               "B_FieldPack_ocamo",
              [
              ["Titan_AA", 1]
              ]
            ],
            "H_HelmetO_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			""
        ],
        [
            ["ATC_TITAN_AA_O", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_F", ["optic_ACO_grn", "", ""]]
        ]
    ],
    [
        "TankCrew",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_brn",
              [
				["30Rnd_65x39_caseless_green", 6],
                ["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "",
                []
            ],
            "H_HelmetCrew_O",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_C_F", ["optic_ACO_grn", "", ""]]
        ]
    ],
    [
        "HeliPilot",
        [
            [
                "U_O_PilotCoveralls",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_brn",
              [
				["30Rnd_65x39_caseless_green", 4],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "",
                []
            ],
            "H_PilotHelmetHeli_O",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_C_F", ["optic_ACO_grn", "", ""]]
        ]
    ],
    [
        "Rifleman",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_brn",
              [
				["30Rnd_65x39_caseless_green", 6],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                 "",
                 []
            ],
            "H_HelmetO_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			""
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_F", ["optic_ACO_grn", "", ""]]
        ]
    ],
    [
        "DM",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_brn",
              [
				["30Rnd_65x39_caseless_green", 6],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "",
                []
            ],
            "H_HelmetO_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["srifle_DMR_01_F", ["optic_DMS", "bipod_02_F_hex", ""]]
        ]
    ],
        [
        "Explosive",
        [
        [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2]
			  ]
            ],
            [
                "V_TacVest_brn",
              [
				["30Rnd_65x39_caseless_green", 6],
				["handgrenade", 1],
				["smokeshellred", 1],
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
            "B_FieldPack_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","ItemRadio"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_F", ["optic_ACO_grn", "", ""]]
        ]
    ]
]