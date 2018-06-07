/**
* ATC_fnc_getInvData
*
* 
*/
private ["_unit","_inventoryParam","_subclassesPaths","_subclasses","_items"];

_unit = _this select 0;
_items = [];

_inventoryParam = _unit getVariable ["inventory2",[]];

{
	_configClass = _x;
	_subclassesPaths = configProperties [missionconfigfile >> "AllowedCachesGear" >> _x, "true", true];
	
	{
		_subclasses = [_x,[],true] call BIS_fnc_configPath; 
		_subclasses = _subclasses - ["missionConfigFile","AllowedCachesGear",_configClass];
		
			{
				
				_arrayofobjects = getArray (missionConfigFile >> "AllowedCachesGear" >> _configClass >> _x);
				
				if (_x == "weapons") then
				{
					
					{
						_allMagazines = getArray (configFile >> "CfgWeapons" >> _x >> "magazines");
						
						{_items pushbackUnique _x} forEach _allMagazines;
				
						_items pushbackUnique _x;
					
					} forEach _arrayofobjects;
				}
				else
				{
					{
				
						_items pushbackUnique _x;
					
					} forEach _arrayofobjects;
				};
				 
			} forEach _subclasses;
		
	} forEach _subclassespaths;

} forEach _inventoryParam;



_items

