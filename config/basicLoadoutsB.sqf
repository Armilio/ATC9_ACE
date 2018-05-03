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
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],["ACE_microDAGR", 1]
			  ]
            ],
            [
                "V_HarnessO_brn",
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
            "H_MilCap_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","NVGoggles_OPFOR"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_F", ["ACE_optic_Arco_PIP", "", ""]]
        ]
    ],
    [
        "TeamLeader",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],["ACE_microDAGR", 1]
			  ]
            ],
            [
                "V_I_G_resistanceLeader_F",
              [
				["30Rnd_65x39_caseless_green", 6],
				["handgrenade", 1],["1Rnd_HE_Grenade_shell", 4],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "tf_mr3000",
                []
            ],
            "H_HelmetO_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","NVGoggles_OPFOR"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_GL_F", ["ACE_optic_Arco_PIP", "", ""]]
        ]
    ],
    [
        "Grenadier",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_I_G_resistanceLeader_F",
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
            "H_HelmetO_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","NVGoggles_OPFOR"],
			"Binocular"
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
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_I_G_resistanceLeader_F",
              [
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1],
				["100Rnd_580x42_Mag_F", 3]
			  ]
            ],
            [
                "B_FieldPack_ocamo",
                [
                ["100Rnd_580x42_Mag_F", 3]
                ]
            ],
            "H_HelmetO_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","NVGoggles_OPFOR"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_CTARS_blk_F", ["optic_Holosight_smg", "", ""]]
        ]
    ],
    [
        "Machinegunner",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_I_G_resistanceLeader_F",
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
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","NVGoggles_OPFOR"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["LMG_Zafir_F", ["bipod_02_F_hex", "optic_Holosight_smg", ""]]
        ]
    ],
    [
        "Medic",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_I_G_resistanceLeader_F",
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
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","NVGoggles_OPFOR"],
			"Binocular"
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
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_I_G_resistanceLeader_F",
              [
				["30Rnd_65x39_caseless_green", 6],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "B_Carryall_cbr",
              [
				["ATC_RPG32_F", 2],
                ["RPG32_HE_F", 1]
			  ]
            ],
            "H_HelmetO_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","NVGoggles_OPFOR"],
			"Binocular"
        ],
        [
            ["ATC_launch_RPG32_F", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_F", ["optic_ACO_grn", "", ""]]
        ]
    ],
    [
        "SF",
        [
            [
                "U_O_V_Soldier_Viper_hex_F",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_TacVest_oli",
              [
				["30Rnd_65x39_caseless_green", 6],
				["10Rnd_50BW_Mag_F",2],
				["handgrenade", 1],
				["smokeshellred", 1],
				["ACE_microDAGR", 1]
			  ]
            ],
            [
                "B_ViperHarness_ghex_F",
                []
            ],
            "H_HelmetSpecO_ocamo",
            ["ItemMap","ItemCompass","ACE_Altimeter","tf_fadak","ACE_NVG_Gen4"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_ARX_hex_F", ["ACE_optic_Arco_PIP", "muzzle_snds_65_TI_blk_F", "acc_pointer_IR"]]
        ]
    ],
    [
        "Sniper_SF",
        [
            [
                "U_O_FullGhillie_ard",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],
				["ACE_RangeCard",1]
			  ]
            ],
            [
                "V_TacVest_khk",
              [
				["10Rnd_93x64_DMR_05_Mag", 5],
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
            ["ItemMap","ItemCompass","ACE_Altimeter","tf_fadak","NVGoggles_OPFOR"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["srifle_DMR_05_tan_f", ["ACE_optic_LRPS_PIP", "bipod_02_F_blk", "muzzle_snds_93mmg_tan"]]
        ]
    ],
    [
        "Spotter_SF",
        [
            [
                "U_O_FullGhillie_ard",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],
				["ACE_RangeCard",1]
			  ]
            ],
            [
                "V_TacVest_khk",
              [
				["30Rnd_580x42_Mag_F", 6],
                ["1Rnd_HE_Grenade_shell", 4],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1],["ACE_Kestrel4500",1],["ACE_microDAGR", 1]
			  ]
            ],
            [
                "tf_mr3000",
                []
            ],
            "",
            ["ItemMap","ItemCompass","ACE_Altimeter","tf_fadak","NVGoggles_OPFOR"],
			"ACE_Vector"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_CTAR_GL_blk_F", ["ACE_optic_Arco_PIP", ""]]
        ]
    ],
	[
        "Sniper",
        [
            [
                "U_O_GhillieSuit",
              [
				["FirstAidKit", 2],
				["ACE_MapTools", 1],
				["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_TacVest_khk",
              [
				["10Rnd_93x64_DMR_05_Mag", 5],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1],
				["ACE_RangeCard",1],
				["ACE_Kestrel4500",1]
			  ]
            ],
            [
                "",
                []
            ],
            "",
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","NVGoggles_OPFOR"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["srifle_DMR_05_tan_f", ["ACE_optic_LRPS_PIP", "bipod_02_F_blk", "muzzle_snds_93mmg_tan"]]
        ]
    ],
	 [
        "Spotter",
        [
            [
                "U_O_GhillieSuit",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],
				["ACE_RangeCard",1]
			  ]
            ],
            [
                "V_TacVest_khk",
              [
				["30Rnd_65x39_caseless_green", 6],
                ["1Rnd_HE_Grenade_shell", 4],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1],["ACE_Kestrel4500",1],["ACE_microDAGR", 1]
			  ]
            ],
            [
                "tf_mr3000",
                []
            ],
            "",
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","NVGoggles_OPFOR"],
			"ACE_Vector"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_GL_F", ["ACE_optic_Arco_PIP", ""]]
        ]
    ],
    [
        "Engineer",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_HarnessO_brn",
              [
				["30Rnd_65x39_caseless_green", 6],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "B_AssaultPack_ocamo"
            ],
            "H_Cap_headphones",
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","NVGoggles_OPFOR"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_C_F", ["optic_ACO_grn", "", ""]]
        ]
    ],
	[
        "UAV",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_HarnessO_brn",
              [
				["30Rnd_65x39_caseless_green", 6],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                ""
            ],
            "",
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","O_UavTerminal","NVGoggles_OPFOR"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_C_F", ["", "", ""]]
        ]
    ],
    [
        "HeavyAntiTank",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_I_G_resistanceLeader_F",
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
              ["ATC_MAG_Titan_AT", 1]
              ]
            ],
            "H_HelmetO_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","NVGoggles_OPFOR"],
			""
        ],
        [
            ["ATC_Titan_AT_O", ["", "", ""]],
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
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_I_G_resistanceLeader_F",
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
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","NVGoggles_OPFOR"],
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
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_HarnessO_brn",
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
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","NVGoggles_OPFOR"],
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
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],
				["30Rnd_65x39_caseless_green", 2],
				["smokeshellred", 1],
                ["SmokeShell", 1]
			  ]
            ],
            [
                "",
              [
			  ]
            ],
            [
                "B_FieldPack_ocamo",
                []
            ],
            "H_PilotHelmetHeli_O",
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","NVGoggles_OPFOR"],
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
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1]
			  ]
            ],
            [
                "V_I_G_resistanceLeader_F",
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
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","NVGoggles_OPFOR"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_F", ["optic_ACO_grn", "", ""]]
        ]
    ],
	[
        "Mortarist",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],["ACE_DAGR", 1]
			  ]
            ],
            [
                "V_I_G_resistanceLeader_F",
              [
				["30Rnd_65x39_caseless_green", 4],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1],
				["ACE_RangeTable_82mm",1],
				["ACE_Kestrel4500",1]
			  ]
            ],
            [
                 "",
                 []
            ],
            "H_HelmetO_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","NVGoggles_OPFOR"],
			"Binocular"
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
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],
				["ACE_RangeCard",1],["ACE_Kestrel4500",1]
			  ]
            ],
            [
                "V_I_G_resistanceLeader_F",
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
            "H_HelmetO_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","NVGoggles_OPFOR"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["srifle_DMR_01_F", ["optic_KHS_blk", "bipod_02_F_hex", ""]]
        ]
    ],
	[
        "Mark",
        [
            [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],
				["ACE_RangeCard",1]
			  ]
            ],
            [
                "V_I_G_resistanceLeader_F",
              [
				["20Rnd_650x39_Cased_Mag_F", 5],
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
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","NVGoggles_OPFOR"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["srifle_DMR_07_hex_F", ["optic_DMS", "bipod_02_F_blk", ""]]
        ]
    ],
        [
        "Explosive",
        [
        [
                "U_O_CombatUniform_ocamo",
              [
				["FirstAidKit", 2],["ACE_MapTools", 1],["ACE_EarPlugs", 1],
				["ACE_M26_Clacker",1]
			  ]
            ],
            [
                "V_I_G_resistanceLeader_F",
              [
				["30Rnd_65x39_caseless_green", 6],
				["handgrenade", 1],
				["smokeshellred", 1],
                ["SmokeShell", 1],
				["ACE_DefusalKit", 1]
			  ]
            ],
            [
                "B_FieldPack_ocamo",
              [
              ["APERSTripMine_Wire_Mag", 1],
			  ["APERSMine_Range_Mag", 2],
              ["ATMine_Range_Mag", 1],
              ["DemoCharge_Remote_Mag", 1]
              ]
            ],
            "H_HelmetO_ocamo",
            ["ItemMap","ItemCompass","ItemWatch","tf_fadak","NVGoggles_OPFOR"],
			"Binocular"
        ],
        [
            ["", ["", "", ""]],
            ["", ["", "", ""]],
            ["arifle_Katiba_F", ["optic_ACO_grn", "", ""]]
        ]
    ]
]