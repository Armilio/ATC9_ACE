/**
* ATC_fnc_getInvData
*/
private ["_unit","_invData","_PossInvData","_items"];

_unit = _this select 0;
_items = [];

waitUntil {!isNil{ _unit getVariable "inventory2"}};

_invData = _unit getVariable "inventory2";
_PossInvData = ["allowedItems","weapons","optics","pointers","allowedAmmo","muzzle"];

{
	_class = _x;
	
	{
		_data = [missionConfigFile >> "AllowedCachesGear" >> _class >> _x] call BIS_fnc_getCfgData;
		
		if (isNil "_data") exitWith {};
		
		if (_x == "weapons") then
		{
					
			{
				_allMagazines = getArray (configFile >> "CfgWeapons" >> _x >> "magazines");
				
				{_items pushbackUnique _x} forEach _allMagazines;
		
				_items pushbackUnique _x;
			
			} forEach _data;
		}
		else
		{
			{
		
				_items pushbackUnique _x;
			
			} forEach _data;
		};
		
	} forEach _PossInvData;
	
} forEach _invData;
		
	
_items
