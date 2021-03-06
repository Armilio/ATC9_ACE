if (!isDedicated) then {
    startLoadingScreen [""];

    /* Waiting for player */
    waitUntil {!isNull player};

    switch (playerSide) do {
        case ATC_sideA: 
		{

            ATC_friendlyMrkColor = ATC_sideMrkColorA;
            ATC_enemyMrkColor = ATC_sideMrkColorB;

            ATC_mrkNameRadioTowerBuildZone = "mrk_buildZoneRadioTowerA";
            ATC_radioTowerName = "ATC_radioTowerA";

            /* Vehicles */

            //ATC_sidevehicleRestrictions = [player, ATC_vehicleRestrictionsA] call ATC_fnc_getVehicleRestrictions;
            
            /**
            * ATC_weaponsCrate
            * ATC_ammoCrate
            * ATC_weaponItemsCrate
            * ATC_itemsCrate
            * Files: init_client.sqf, fnc_fillCrate.sqf, fnc_refillClientGrates.sqf
            */
            ATC_weaponsCrate = ["Box_FIA_Wps_F", "mrk_weaponCrateA"] call ATC_fnc_createCrate;
            ATC_ammoCrate = ["Box_FIA_Ammo_F", "mrk_ammoCrateA"] call ATC_fnc_createCrate;
            ATC_weaponItemsCrate = ["Box_FIA_Ammo_F", "mrk_weaponItemsCrateA"] call ATC_fnc_createCrate;
            ATC_itemsCrate = ["Box_FIA_Ammo_F", "mrk_itemsCrateA"] call ATC_fnc_createCrate;
	    ATC_BackpacksCrate = ["Box_FIA_Ammo_F", "mrk_BackpacksCrateA"] call ATC_fnc_createCrate;
	    
			
			/*ATC_VACrate1 = ["Box_FIA_Ammo_F", "mrk_VACrate"] call ATC_fnc_createCrate;
			ATC_VACrate1 setVehicleVarName "ATC_VACrate";
			ATC_VACrate = ATC_VACrate1;*/
        };
        case ATC_sideB: 
		{
            ATC_friendlyMrkColor = ATC_sideMrkColorB;
            ATC_enemyMrkColor = ATC_sideMrkColorA;

            ATC_mrkNameRadioTowerBuildZone = "mrk_buildZoneRadioTowerB";
            ATC_radioTowerName = "ATC_radioTowerB";

            /* Vehicles */

            //ATC_sidevehicleRestrictions = [player, ATC_vehicleRestrictionsB] call ATC_fnc_getVehicleRestrictions;
           
			/**
            * ATC_weaponsCrate
            * ATC_ammoCrate
            * ATC_weaponItemsCrate
            * ATC_itemsCrate
            * Files: init_client.sqf, fnc_fillCrate.sqf, fnc_refillClientCrates.sqf
            */
            ATC_weaponsCrate = ["Box_FIA_Wps_F", "mrk_weaponCrateB"] call ATC_fnc_createCrate;
            ATC_ammoCrate = ["Box_FIA_Ammo_F", "mrk_ammoCrateB"] call ATC_fnc_createCrate;
            ATC_weaponItemsCrate = ["Box_FIA_Ammo_F", "mrk_weaponItemsCrateB"] call ATC_fnc_createCrate;
            ATC_itemsCrate = ["Box_FIA_Ammo_F", "mrk_itemsCrateB"] call ATC_fnc_createCrate;
	    ATC_BackpacksCrate = ["Box_FIA_Ammo_F", "mrk_BackpacksCrateB"] call ATC_fnc_createCrate;

        };
    };
	
    /* Vehicles */
    waitUntil {!isNil "ATC_vehicles"};

    {
        (_x select 0) setVehicleVarName (_x select 1); 
    } forEach ATC_vehicles;


    /* Radio tower */
    if (isNil ATC_radioTowerName && {player getVariable ["isCommander", false]}) then {
        player addAction ["Build radio tower", ATC_fnc_buildRadioTower];
    };

    //"mrk_buildZoneRadioTowerA" setMarkerAlpha 0;
    //"mrk_buildZoneRadioTowerB" setMarkerAlpha 0;    
	//if (player getVariable ["isXO", false] || {player getVariable ["isCommander", false]}) then {
		[] spawn ATC_fnc_drawUnitsMarkers;
	//};//Added by Armilio	
    [] spawn ATC_fnc_drawVehiclesMarkers;

    //[] spawn ATC_fnc_startVehicleRestrictionsChecker;
	
    player addEventHandler ["Respawn", {        
        private ["_arg_unit"];
        _arg_unit = _this select 0;
    
        _arg_unit call ATC_fnc_refillClientCrates;        
    }];

    player addEventHandler ["Killed", {
        private ["_arg_unit"];
        _arg_unit = _this select 0;

        removeAllWeapons _arg_unit;
        removeAllItems _arg_unit;
//      removeAllAssignedItems _arg_unit;      //disabled for respawnTemplates
        removeBackpack _arg_unit;
//		hideBody _arg_unit;
    }];

    player addEventHandler ["InventoryClosed", 
	{
        private ["_arg_unit","_arg_container"];

        _arg_unit = _this select 0;
        _arg_container = _this select 1;

        {
            scopeName "loop";

            if !(_x in ATC_allowedGearsForTake) then 
			{
					
					_itemsName = if (isClass (configFile >> "CfgWeapons" >> _x)) then 
					{
						getText (configFile >> "CfgWeapons" >> _x >> "displayName");
					} 
					else 
					{
						if (isClass (configFile >> "CfgMagazines" >> _x)) then {
                        getText (configFile >> "CfgMagazines" >> _x >> "displayName");
						} 
						else 
						{
                        ''
						};
					};

                systemChat format ["You can't carry %1", _itemsName];
                
                [_arg_unit, _arg_container] spawn {
                    waitUntil {isNull (findDisplay 602)};

                    (_this select 0) action ["Gear", _this select 1];
                };

                breakOut "loop";
            };            
        } forEach (_arg_unit call ATC_fnc_getAllPlayerItems);

        if (_arg_container in [ATC_weaponsCrate, ATC_ammoCrate, ATC_weaponItemsCrate, ATC_itemsCrate]) then 
		{
            _arg_unit call ATC_fnc_refillClientCrates;
            //_arg_unit call ATC_fnc_saveCurrentGears;          
        };
    }];

    player addEventHandler ["Take", {
        private ["_arg_unit"];

        _arg_unit = _this select 0;
        _arg_container = _this select 1;
        _arg_item = _this select 2;

        if (isNull (findDisplay 602) && {!(_arg_item in ATC_allowedGearsForTake)}) then {

            _itemsName = if (isClass (configFile >> "CfgWeapons" >> _arg_item)) then {
                getText (configFile >> "CfgWeapons" >> _arg_item >> "displayName");
            } else {
                if (isClass (configFile >> "CfgMagazines" >> _arg_item)) then {
                    getText (configFile >> "CfgMagazines" >> _arg_item >> "displayName");
                } else {
                    ''
                };
            };

            systemChat format ["You can't carry %1", _itemsName];
            _arg_unit action ["Gear", _arg_container];
        };       
    }];
	
	player addEventHandler ["GetInMan",{
		private ["_unit","_vehicle","_role","_roleArray","_results"];
		
		_unit = _this select 0;
		_vehicle = typeOF vehicle player;
		_role = _this select 1;
		
		_roleArray = [missionConfigFile >> "VehicleRestrictions" >> _vehicle >> _role] call BIS_fnc_getCfgDataArray;
		
		if (_vehicle isKindOf "Air" && _role == "gunner" && _this select 3 isEqualTo [0]) then
		{
			_roleArray = [missionConfigFile >> "VehicleRestrictions" >> _vehicle >> "driver"] call BIS_fnc_getCfgDataArray;
		};
		
		_results = (player getVariable "Inventory") arrayIntersect _roleArray;
		
		if (!(count _results > 0)) then
		{
			moveOut player;
			systemChat "You can't get in this seat";
		};
			
	}];
	
	player addEventHandler ["SeatSwitchedMan",{
		private ["_newRoleArray","_NewRole","_TurretPath","_vehicle","_results"];
		
		_vehicle = typeOf vehicle player;;
		_newRoleArray = assignedVehicleRole player;
		_newRole = _newRoleArray select 0;
		_TurretPath = _newRoleArray select 1;
		
		diag_log [_vehicle,_newRoleArray,_newRole,_TurretPath];
		
		if (_newRole == "Turret") then
		{
			switch (_TurretPath) do
			{
				case [0]:
				{
					if (_vehicle isKindOf "Air") then
					{
						_newRoleArray = [missionConfigFile >> "VehicleRestrictions" >> _vehicle >> "driver"] call BIS_fnc_getCfgDataArray;
					}
					else
					{
						_newRoleArray = [missionConfigFile >> "VehicleRestrictions" >> _vehicle >> "gunner"] call BIS_fnc_getCfgDataArray;
					};
				};
				
				case [0,0]:
				{
					_newRoleArray = [missionConfigFile >> "VehicleRestrictions" >> _vehicle >> "commander"] call BIS_fnc_getCfgDataArray;
				};
				
				case [1]:
				{
					if (_vehicle isKindOf "Air") then
					{
						_newRoleArray = [missionConfigFile >> "VehicleRestrictions" >> _vehicle >> "gunner"] call BIS_fnc_getCfgDataArray;
					}
					else
					{
						_newRoleArray = [missionConfigFile >> "VehicleRestrictions" >> _vehicle >> "commander"] call BIS_fnc_getCfgDataArray;
					};
				};
				
				default
				{
					_newRoleArray = [missionConfigFile >> "VehicleRestrictions" >> _vehicle >> "gunner"] call BIS_fnc_getCfgDataArray;
				};
			};
		}
		else
		{
			_newRoleArray = [missionConfigFile >> "VehicleRestrictions" >> _vehicle >> _newRole] call BIS_fnc_getCfgDataArray;
		};
		
		diag_log ["afterSwitch",_newRoleArray];
		_results = (player getVariable "Inventory") arrayIntersect _newroleArray;
		diag_log _results;
		
		if (!(count _results > 0)) then
		{
			moveOut player;
			systemChat "You can't get in this seat";
			diag_log "out";
		};
	}];
		
		

    endLoadingScreen;

    [] spawn {
        if (isNil "ATC_PV_activeArea" && {player getVariable ["isCommander", false]} && {playerSide == ATC_DB_attSide}) then {
            sleep 0.2;
            ["onLoad"] call ATC_fnc_showSelectionAreaDiag;
        } else {
		
            cutText ["Waiting", "black faded", 999999];
			
        };

        waitUntil {!isNil "ATC_PV_activeArea"};

        cutText ["", "black in"];
    };
    
	//execVM "scripts\NoChat.sqf";//DeGroup
if (!isServer && local player) then {
	[] execVM "scripts\clientDeGroup.sqf";
};
};
