if (isServer) then {
	/* Vehicle */
    _vehicles = call {
    	private ["_vehicles"];

        _vehicles = [];
        {
            _name = toArray str _x;
            _name = _name - [32,35,58,95,46,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122];
            _vehicles pushBack [_x, format ["veh_%1", toString _name]];
        } forEach vehicles;

        _vehicles
    };

    ATC_vehicles = _vehicles;
    publicVariable "ATC_vehicles";
    _vehicles = nil;

	if (ATC_activeArea != "") then {
		ATC_activeArea call ATC_fnc_selectArea;
	};

	ATC_limitedWeaponsCrateA = ["Box_FIA_Wps_F", "mrk_limitedWeaponsCrateA", true] call ATC_fnc_createCrate;
	ATC_limitedAmmoCrateA = ["Box_FIA_Ammo_F", "mrk_limitedAmmoCrateA", true] call ATC_fnc_createCrate;
	ATC_limitedBackpackCrateA = ["Box_FIA_Wps_F", "mrk_limitedBackpackCrateA", true] call ATC_fnc_createCrate;
    ATC_limitedWeaponsCrateB = ["Box_FIA_Wps_F", "mrk_limitedWeaponsCrateB", true] call ATC_fnc_createCrate;
    ATC_limitedAmmoCrateB = ["Box_FIA_Ammo_F", "mrk_limitedAmmoCrateB", true] call ATC_fnc_createCrate;
    ATC_limitedBackpackCrateB = ["Box_FIA_Wps_F", "mrk_limitedBackpackCrateB", true] call ATC_fnc_createCrate;
		
	[ATC_limitedWeaponsCrateA, ATC_limitedWeaponCrateParamsA select 0] call ATC_fnc_fillCrateGlobal;
	[ATC_limitedAmmoCrateA, ATC_limitedWeaponCrateParamsA select 1] call ATC_fnc_fillCrateGlobal;
	[ATC_limitedBackpackCrateA, ATC_limitedWeaponCrateParamsA select 2] call ATC_fnc_fillCrateGlobal;
    [ATC_limitedWeaponsCrateB, ATC_limitedWeaponCrateParamsB select 0] call ATC_fnc_fillCrateGlobal;
    [ATC_limitedAmmoCrateB, ATC_limitedWeaponCrateParamsB select 1] call ATC_fnc_fillCrateGlobal;
	[ATC_limitedBackpackCrateB, ATC_limitedWeaponCrateParamsB select 2] call ATC_fnc_fillCrateGlobal;
  /*  
	if (ATC_DB_defSide = ATC_sideA) then {
		B_A1 setpos getmarkerpos "sec_A";
		B_A2 setpos getmarkerpos "sec_A";
		B_A3 setpos getmarkerpos "sec_A";
		B_A4 setpos getmarkerpos "sec_A";
		B_A5 setpos getmarkerpos "sec_A";
        B_A6 setpos getmarkerpos "sec_A";
        B_A7 setpos getmarkerpos "sec_A";
        B_A8 setpos getmarkerpos "sec_A";
		B_B1 setpos getmarkerpos "sec_B";
		B_B2 setpos getmarkerpos "sec_B";
		B_B3 setpos getmarkerpos "sec_B";
		B_B4 setpos getmarkerpos "sec_B";
		B_B5 setpos getmarkerpos "sec_B";
        B_B6 setpos getmarkerpos "sec_B";
        B_B7 setpos getmarkerpos "sec_B";
        B_B8 setpos getmarkerpos "sec_B";
		B_C1 setpos getmarkerpos "sec_C";
		B_C2 setpos getmarkerpos "sec_C";
		B_C3 setpos getmarkerpos "sec_C";
		B_C4 setpos getmarkerpos "sec_C";
		B_C5 setpos getmarkerpos "sec_C";
        B_C6 setpos getmarkerpos "sec_C";
        B_C7 setpos getmarkerpos "sec_C";
        B_C8 setpos getmarkerpos "sec_C";
	} else {
		R_A1 setpos getmarkerpos "sec_A";
		R_A2 setpos getmarkerpos "sec_A";
		R_A3 setpos getmarkerpos "sec_A";
		R_A4 setpos getmarkerpos "sec_A";
		R_A5 setpos getmarkerpos "sec_A";
        R_A6 setpos getmarkerpos "sec_A";
        R_A7 setpos getmarkerpos "sec_A";
        R_A8 setpos getmarkerpos "sec_A";
		R_B1 setpos getmarkerpos "sec_B";
		R_B2 setpos getmarkerpos "sec_B";
		R_B3 setpos getmarkerpos "sec_B";
		R_B4 setpos getmarkerpos "sec_B";
		R_B5 setpos getmarkerpos "sec_B";
        R_B6 setpos getmarkerpos "sec_B";
        R_B7 setpos getmarkerpos "sec_B";
        R_B8 setpos getmarkerpos "sec_B";
		R_C1 setpos getmarkerpos "sec_C";
		R_C2 setpos getmarkerpos "sec_C";
		R_C3 setpos getmarkerpos "sec_C";
		R_C4 setpos getmarkerpos "sec_C";
		R_C5 setpos getmarkerpos "sec_C";
        R_C6 setpos getmarkerpos "sec_C";
        R_C7 setpos getmarkerpos "sec_C";
        R_C8 setpos getmarkerpos "sec_C";
	};
*/
Contested = 0;
    [] spawn {
        private ['_data'];        
        waitUntil {ATC_gameStarted};

        estimatedTimeLeft ATC_gameTimeLimit;

        while {time <= ATC_gameTimeLimit} do {
            sleep 1;
        };
	if (contested == 1) then {
		sleep (ATC_SectorCountdown + 60);
	};

        [true, "ATC_fnc_showEndScene", nil, true] spawn BIS_fnc_MP;
    };

    [] spawn {
        private ["_deads","_deads_time","_allDead","_timeout"];

        _deads = [];
        _deads_time = [];

        while {true} do {
            _allDead = allDeadMen;

            {
                _timeout = ATC_corpseRemovalTime;
                _deads set [count _deads, _x];
                _deads_time set [count _deads_time, _timeout];
            } forEach (_allDead - _deads);
            
            {
                if (_x > ATC_corpseRemovalTime) then {_x = 0};

                if (_x > 0) then {
                    _deads_time set [_forEachIndex, _x - 1];
                } else {
                    deleteVehicle (_deads select _forEachIndex);

                    _deads set [_forEachIndex, -1];
                    _deads_time set [_forEachIndex, -1];
                };
            } forEach _deads_time;

            _deads = _deads - [-1];
            _deads_time = _deads_time - [-1];

            sleep 1;
        };
    }; 
	//added by BDR*Armilio*, ATC7
	execVM "scripts\Tickets.sqf";
	execVM "scripts\NoVehCrateFill.sqf";
	execVM "scripts\Safestart.sqf";
	execVM "scripts\Weather.sqf";
};
