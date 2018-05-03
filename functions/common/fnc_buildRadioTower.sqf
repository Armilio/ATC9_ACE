_arg_unit = _this select 0;
_arg_actionId = _this select 2;

_arg_unit removeAction _arg_actionId;

openMap true;

ATC_mrkNameRadioTowerBuildZone setMarkerAlpha 1;

mapAnimAdd [0, 0.1, markerPos ATC_mrkNameRadioTowerBuildZone];
mapAnimCommit;

[] spawn {
	waitUntil {!visibleMap};
	ATC_mrkNameRadioTowerBuildZone setMarkerAlpha 0;

	["onMapSingleClickBuildRadioTower", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;

	if (isNil {ATC_isRadioTowerBuilded} && {player getVariable ["isCommander", false]}) then {
        player addAction ["Build radio tower", ATC_fnc_buildRadioTower];
    };
};

[
	"onMapSingleClickBuildRadioTower",
 	"onMapSingleClick",
 	{
 		if (_pos inArea ATC_mrkNameRadioTowerBuildZone) then {
 			_isFlat = _pos isflatempty [
				1,
				0,
				0,
				0,
				0,
				false,
				objNull
			];

 			if (count _isFlat > 1) then {
 				[[_pos, ATC_mrkNameRadioTowerBuildZone], "ATC_fnc_buildRadioTowerServer", false, false] spawn BIS_fnc_MP;

 				ATC_isRadioTowerBuilded = true;

	    		openMap false;
    		} else {
	 			systemChat "Can't build radio tower here";
	 		};
 		} else {
 			systemChat "Can't build radio tower here";
 		};
	}, 
	[]
] call BIS_fnc_addStackedEventHandler;