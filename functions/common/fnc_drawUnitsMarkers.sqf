waitUntil {!isNil ATC_radioTowerName};
_radioTower = call compile format ["%1", ATC_radioTowerName];

("mrk_" + ATC_radioTowerName) setMarkerAlphaLocal 1;

		_towerdead = false;


while {!_towerdead} do {
	{

		waitUntil { (visibleMap or visibleGPS); 
		sleep 0.025;
		true;
		};

		if (side _x == playerSide && (vehicle _x == _x) ) then {
			_mrkName = format ["tag_player_%1", if (isMultiplayer) then {getPlayerUID _x} else {_foreachindex}];
						
			if (alive _x) then {
				
				_pos = getPosATL _x;
			
				if (markerType _mrkName == "") then {
					createMarkerLocal [_mrkName, _pos];
					_mrkName setMarkerShapeLocal "ICON";
					_mrkName setMarkerTypeLocal "mil_dot";
					_mrkName setMarkerColorLocal "ColorWhite";
					_mrkName setMarkerSizeLocal [1,1];
					_mrkName setMarkerTextLocal format [" %1", name _x];
					
					[_mrkName, _x] spawn {
						private ["_mrkName","_tberased"];
						_mrkName = _this select 0;
						_tberased = _this select 1;
						
						waitUntil {sleep 1; ((!alive _tberased) OR (vehicle _tberased != _tberased)) } ;
						deleteMarkerLocal _mrkName;
						
					};
					
				};

				
			  //_dir = getDir _x;
				_mrkName setMarkerPosLocal _pos;			 
			  //_mrkName setMarkerDirLocal _dir;
			  
			}; 
		};
	} forEach allplayers;

	sleep 5;
	if (playerSide == ATC_sideA) then {
		_towerdead = TowerKilledB;
	};
	if (playerSide == ATC_sideB) then {
		_towerdead = TowerKilledR;
	};
};


/* Remove units markers when radio tower destroyed */
{
	_mrkName = format ["tag_player_%1", if (isMultiplayer) then {getPlayerUID _x} else {_foreachindex}];

	deleteMarkerLocal _mrkName;
} forEach allunits;