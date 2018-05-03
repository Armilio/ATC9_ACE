waitUntil {!isNil ATC_radioTowerName};
_radioTower = call compile format ["%1", ATC_radioTowerName];

	_towerdead = false;


while {!_towerdead} do {
	{
		_mrkName = format ["tag_vehicle_%1", vehicleVarName _x];

		_isVehicleEmpty = (count crew _x == 0);
        //if operative
		if (alive _x && (count crew _x > 0 && {side ((crew _x) select 0) == playerSide})) then {

		    deleteMarkerLocal _mrkName;
			_pos = getPosATL _x;

			if (markerType _mrkName == "" and _x isKindOf "Tank") then {
				createMarkerLocal [_mrkName, _pos];
				_mrkName setMarkerShapeLocal "ICON";
				_mrkName setMarkerTypeLocal "b_armor";
				_mrkName setMarkerColorLocal "Color2_FD_F";
				_mrkName setMarkerSizeLocal [1, 1];
			} else {
			
			if (markerType _mrkName == "" and _x isKindOf "Wheeled_Apc_F") then {
				createMarkerLocal [_mrkName, _pos];
				_mrkName setMarkerShapeLocal "ICON";
				_mrkName setMarkerTypeLocal "b_mech_inf";
				_mrkName setMarkerColorLocal "Color2_FD_F";
				_mrkName setMarkerSizeLocal [1, 1];
			
			} else {
			
			if (markerType _mrkName == "" and _x isKindOf "Car") then {
				createMarkerLocal [_mrkName, _pos];
				_mrkName setMarkerShapeLocal "ICON";
				_mrkName setMarkerTypeLocal "b_motor_inf";
				_mrkName setMarkerColorLocal "Color2_FD_F";
				_mrkName setMarkerSizeLocal [1, 1];
			
			} else {
			
			if (markerType _mrkName == "" and _x isKindOf "Air") then {
				createMarkerLocal [_mrkName, _pos];
				_mrkName setMarkerShapeLocal "ICON";
				_mrkName setMarkerTypeLocal "b_air";
				_mrkName setMarkerColorLocal "Color2_FD_F";
				_mrkName setMarkerSizeLocal [1, 1];
			
			} else {
			if (markerType _mrkName == "" and _x isKindOf "StaticMGWeapon") then {
				createMarkerLocal [_mrkName, _pos];
				_mrkName setMarkerShapeLocal "ICON";
				_mrkName setMarkerTypeLocal "b_inf";
				_mrkName setMarkerColorLocal "Color2_FD_F";
				_mrkName setMarkerSizeLocal [1, 1];	
			};
			};};};};

/*          _strCrew = "";

			{
				if (alive _x) then {
					_strCrew = if (_forEachIndex > 1) then {_strCrew + ", " + (name _x)} else {_strCrew + (name _x)};
				};
			} forEach (crew _x);
*/
			_mrkName setMarkerPosLocal _pos;			 
//          _mrkName setMarkerTextLocal format ["%1: %2", getText(configFile >> "CfgVehicles" >> typeOf _x >> "DisplayName"), _strCrew];
			_mrkName setMarkerTextLocal format ["%1", getText(configFile >> "CfgVehicles" >> typeOf _x >> "DisplayName")];
			
		} else {
		//if destroyed or heave damage
		if (getDammage _x > 0.1 && (count crew _x == 0)) then {
		   
		    deleteMarkerLocal _mrkName;
			_pos = getPosATL _x;

			if (markerType _mrkName == "" and _x isKindOf "Tank") then {
				createMarkerLocal [_mrkName, _pos];
				_mrkName setMarkerShapeLocal "ICON";
				_mrkName setMarkerTypeLocal "b_armor";
				_mrkName setMarkerColorLocal "Color3_FD_F";
				_mrkName setMarkerSizeLocal [1, 1];
			} else {
			
			if (markerType _mrkName == "" and _x isKindOf "Wheeled_Apc_F") then {
				createMarkerLocal [_mrkName, _pos];
				_mrkName setMarkerShapeLocal "ICON";
				_mrkName setMarkerTypeLocal "b_mech_inf";
				_mrkName setMarkerColorLocal "Color3_FD_F";
				_mrkName setMarkerSizeLocal [1, 1];
			
			} else {
			
			if (markerType _mrkName == "" and _x isKindOf "Car") then {
				createMarkerLocal [_mrkName, _pos];
				_mrkName setMarkerShapeLocal "ICON";
				_mrkName setMarkerTypeLocal "b_motor_inf";
				_mrkName setMarkerColorLocal "Color3_FD_F";
				_mrkName setMarkerSizeLocal [1, 1];
			
			} else {
			
			if (markerType _mrkName == "" and _x isKindOf "Air") then {
				createMarkerLocal [_mrkName, _pos];
				_mrkName setMarkerShapeLocal "ICON";
				_mrkName setMarkerTypeLocal "b_air";
				_mrkName setMarkerColorLocal "Color3_FD_F";
				_mrkName setMarkerSizeLocal [1, 1];
			
			};
		};
	};
};
			_mrkName setMarkerPosLocal _pos;
 
			_mrkName setMarkerTextLocal format ["%1 [DOWN]", getText(configFile >> "CfgVehicles" >> typeOf _x >> "DisplayName")];
			
		} else {
		 //if empty 
		 deleteMarkerLocal _mrkName;

		    };
	    };
	} forEach vehicles;

	sleep 5;
	if (playerSide == ATC_sideA) then {
		_towerdead = TowerKilledB;
	};
	if (playerSide == ATC_sideB) then {
		_towerdead = TowerKilledR;
	};
};


/* Remove vehicle markers when radio tower destroyed */
{
	_mrkName = format ["tag_vehicle_%1", vehicleVarName _x];

	deleteMarkerLocal _mrkName;

} forEach vehicles;