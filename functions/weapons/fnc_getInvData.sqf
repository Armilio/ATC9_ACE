/**
* ATC_fnc_getInvData
*
* 
*/
private ["_unit","_items"];

_unit = _this select 0;
_items = [];

_inventoryParam = _unit getVariable ["inventory",[]];

{
	_configClass = _inventoryParam select _ForEachIndex;
	_subclasses = (missionconfigfile >> "AllowedCachesGear" >> _x) call BIS_fnc_getCfgSubclasses;
	
	{
		_objects = getArray (missionConfigFile >> "AllowedCachesGear" >> _configClass >> _x);
		
		{
			_items pushbackUnique _x;
			
		} forEach _objects; 
		
	} forEach _subclasses;

} forEach _inventoryParam;



_items
