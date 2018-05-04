if (!isDedicated) then {
    startLoadingScreen [""];

    /* Waiting for player */
    waitUntil {!isNull player};

    switch (playerSide) do {
        case ATC_sideA: {

            ATC_friendlyMrkColor = ATC_sideMrkColorA;
            ATC_enemyMrkColor = ATC_sideMrkColorB;

            ATC_mrkNameRadioTowerBuildZone = "mrk_buildZoneRadioTowerA";
            ATC_radioTowerName = "ATC_radioTowerA";

            /* Vehicles */

            ATC_sidevehicleRestrictions = [player, ATC_vehicleRestrictionsA] call ATC_fnc_getVehicleRestrictions;
            
            /* Gears */

            /**
            * ATC_basicLoadout
            * Files: init_client.sqf
            */
            //ATC_basicLoadout = [player, ATC_basicLoadoutsA] call ATC_fnc_getBasicLoadout;

            /**
            * ATC_sideAllowedGears
            * Files: init_client.sqf
            */
            ATC_sideAllowedGears = ["all", player, ATC_loadoutParamsA] call ATC_fnc_getItemsListByClasses;
            
            /**
            * ATC_sideAllowedWeapons
            * Files: init_client.sqf, fnc_refillClientCrates.sqf
            */
            ATC_sideAllowedWeapons = ["weapons", player, ATC_loadoutParamsA] call ATC_fnc_getItemsListByClasses;

            /**
            * ATC_allAllowedWeapons
            * Files: init_client.sqf
            */
            ATC_allAllowedWeapons = (["weapons", player, ATC_loadoutParamsB] call ATC_fnc_getItemsListByClasses) + ATC_sideAllowedWeapons;
            
            /**
            * ATC_sideAllowedOptics
            * ATC_sideAllowedPointers
            * ATC_sideAllowedMuzzles
            * ATC_sideAllowedAdditionalAmmo
            * ATC_sideAllowedItems
            * Files: init_client.sqf, fnc_refillClientGrates.sqf
            */
            ATC_sideAllowedOptics = ["optics", player, ATC_loadoutParamsA] call ATC_fnc_getItemsListByClasses;
            ATC_sideAllowedPointers = ["pointers", player, ATC_loadoutParamsA] call ATC_fnc_getItemsListByClasses;
            ATC_sideAllowedMuzzles = ["muzzles", player, ATC_loadoutParamsA] call ATC_fnc_getItemsListByClasses;
            ATC_sideAllowedAdditionalAmmo = ["additionalAmmo", player, ATC_loadoutParamsA] call ATC_fnc_getItemsListByClasses;
            ATC_sideAllowedItems = ["items", player, ATC_loadoutParamsA] call ATC_fnc_getItemsListByClasses;

            ATC_sideRestrictedAmmo = ["restrictedAmmo", player, ATC_loadoutParamsA] call ATC_fnc_getItemsListByClasses;
            ATC_restrictedAmmo = ATC_sideRestrictedAmmo + (["restrictedAmmo", player, ATC_loadoutParamsB] call ATC_fnc_getItemsListByClasses);

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
			
			/*ATC_VACrate1 = ["Box_FIA_Ammo_F", "mrk_VACrate"] call ATC_fnc_createCrate;
			ATC_VACrate1 setVehicleVarName "ATC_VACrate";
			ATC_VACrate = ATC_VACrate1;*/
        };
        case ATC_sideB: {
            ATC_friendlyMrkColor = ATC_sideMrkColorB;
            ATC_enemyMrkColor = ATC_sideMrkColorA;

            ATC_mrkNameRadioTowerBuildZone = "mrk_buildZoneRadioTowerB";
            ATC_radioTowerName = "ATC_radioTowerB";

            /* Vehicles */

            ATC_sidevehicleRestrictions = [player, ATC_vehicleRestrictionsB] call ATC_fnc_getVehicleRestrictions;
            
            /* Gears */
            //ATC_basicLoadout = [player, ATC_basicLoadoutsB] call ATC_fnc_getBasicLoadout;

            ATC_sideAllowedGears = ["all", player, ATC_loadoutParamsB] call ATC_fnc_getItemsListByClasses;

            ATC_sideAllowedWeapons = ["weapons", player, ATC_loadoutParamsB] call ATC_fnc_getItemsListByClasses;
            ATC_allAllowedWeapons = (["weapons", player, ATC_loadoutParamsA] call ATC_fnc_getItemsListByClasses) + ATC_sideAllowedWeapons;

            ATC_sideAllowedOptics = ["optics", player, ATC_loadoutParamsB] call ATC_fnc_getItemsListByClasses;
            ATC_sideAllowedPointers = ["pointers", player, ATC_loadoutParamsB] call ATC_fnc_getItemsListByClasses;
            ATC_sideAllowedMuzzles = ["muzzles", player, ATC_loadoutParamsB] call ATC_fnc_getItemsListByClasses;
            ATC_sideAllowedAdditionalAmmo = ["additionalAmmo", player, ATC_loadoutParamsB] call ATC_fnc_getItemsListByClasses;
            ATC_sideAllowedItems = ["items", player, ATC_loadoutParamsB] call ATC_fnc_getItemsListByClasses;

            ATC_sideRestrictedAmmo = ["restrictedAmmo", player, ATC_loadoutParamsB] call ATC_fnc_getItemsListByClasses;
            ATC_restrictedAmmo = ATC_sideRestrictedAmmo + (["restrictedAmmo", player, ATC_loadoutParamsA] call ATC_fnc_getItemsListByClasses);

            ATC_weaponsCrate = ["Box_FIA_Wps_F", "mrk_weaponCrateB"] call ATC_fnc_createCrate;
            ATC_ammoCrate = ["Box_FIA_Ammo_F", "mrk_ammoCrateB"] call ATC_fnc_createCrate;
            ATC_weaponItemsCrate = ["Box_FIA_Ammo_F", "mrk_weaponItemsCrateB"] call ATC_fnc_createCrate;
            ATC_itemsCrate = ["Box_FIA_Ammo_F", "mrk_itemsCrateB"] call ATC_fnc_createCrate;     

        };
    };

    ATC_sideAllowedAmmo = (ATC_sideAllowedWeapons call ATC_fnc_getAllowedAmmo) - ATC_sideRestrictedAmmo;
    ATC_allAllowedAmmo = (ATC_allAllowedWeapons call ATC_fnc_getAllowedAmmo) - ATC_restrictedAmmo;

    ATC_sideAllowedWeaponItems = ATC_sideAllowedOptics + ATC_sideAllowedPointers + ATC_sideAllowedMuzzles;

    ATC_allowedGearsForTake = (["all", player, ATC_loadoutParamsA] call ATC_fnc_getItemsListByClasses) + (["all", player, ATC_loadoutParamsB] call ATC_fnc_getItemsListByClasses) + ATC_allAllowedAmmo;
    
    /* Create array of disallowed gears for save */
    ATC_limitedGears = (["limitedWeapons", ATC_limitedWeaponCrateParamsA + ATC_limitedWeaponCrateParamsB] call ATC_fnc_getLimitedItemsList) + (["limitedAmmo", ATC_limitedWeaponCrateParamsA + ATC_limitedWeaponCrateParamsB] call ATC_fnc_getLimitedItemsList) + ATC_restrictedAmmo;
    
     /* Create array of allowed gears for save */
    ATC_allowedGearsForSave = [];
    {
        _item = _x;
        if (({_x == _item} count ATC_limitedGears) == 0) then {
            ATC_allowedGearsForSave pushBack _item;
        }
    } forEach (ATC_sideAllowedGears + ATC_sideAllowedAmmo);

    //player setVariable ["atc_loadout", ATC_basicLoadout, false];

    //player call ATC_fnc_addGears;
    
    _class = player getVariable ["class",""];
    [player,missionConfigFile >> "CfgRespawnInventory" >> _class] call BIS_fnc_loadInventory;
	
    player call ATC_fnc_refillClientCrates;
    
    //ADDED BY FLIPPER
    //player call ATC_fnc_saveCurrentGears;
    //

    /* Vehicles */
    waitUntil {!isNil "ATC_vehicles"};

    {
        (_x select 0) setVehicleVarName (_x select 1); 
    } forEach ATC_vehicles;


    /* Radio tower */
    if (isNil ATC_radioTowerName && {player getVariable ["isCommander", false]}) then {
        player addAction ["Build radio tower", ATC_fnc_buildRadioTower];
    };

    "mrk_buildZoneRadioTowerA" setMarkerAlpha 0;
    "mrk_buildZoneRadioTowerB" setMarkerAlpha 0;    
	//if (player getVariable ["isXO", false] || {player getVariable ["isCommander", false]}) then {
		[] spawn ATC_fnc_drawUnitsMarkers;
	//};//Added by Armilio	
    [] spawn ATC_fnc_drawVehiclesMarkers;

    [] spawn ATC_fnc_startVehicleRestrictionsChecker;
	
    player addEventHandler ["Respawn", {        
        private ["_arg_unit"];
        _arg_unit = _this select 0;

        _arg_unit call ATC_fnc_addGears;    
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

    player addEventHandler ["InventoryClosed", {
        private ["_arg_unit","_arg_container"];

        _arg_unit = _this select 0;
        _arg_container = _this select 1;

        {
            scopeName "loop";

            if !(_x in ATC_allowedGearsForTake) then {
                _itemsName = if (isClass (configFile >> "CfgWeapons" >> _x)) then {
                    getText (configFile >> "CfgWeapons" >> _x >> "displayName");
                } else {
                    if (isClass (configFile >> "CfgMagazines" >> _x)) then {
                        getText (configFile >> "CfgMagazines" >> _x >> "displayName");
                    } else {
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

        if (_arg_container in [ATC_weaponsCrate, ATC_ammoCrate, ATC_weaponItemsCrate, ATC_itemsCrate]) then {
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
	
