/**
* ATC_fnc_refillClientCrates
*
* @author ^eNable [enc0ded] <enc0ded.enable@gmail.com>
*
*
*  Edited by Flipper after CBA 2.0 Update
*
*  Edited by NikLox to implement new inventory system
*/
private ["_magazines", "_weaponItems", "_allMagazines", "_allAttachment","_AllowedAttachments","_inventory"];

_arg_unit = _this;

_inventory = _arg_unit getVariable ["inventory2",[]];

_magazines = [];
_weaponItems = [];
_AllowedAttachments = [];
_sideAllowedAdditionalAmmo = [];
_sideAllowedWeapons = [];
_sideAllowedItems = [];


{
	_configClass = _x;
	_subclassesPaths = configProperties [missionconfigfile >> "AllowedCachesGear" >> _x, "true", true];
	
	{
	
		_subclasses = [_x,[],true] call BIS_fnc_configPath; 
		_subclasses = _subclasses - ["missionConfigFile","AllowedCachesGear",_configClass];
	
		{
			_subclass = _x;
			
			switch (_subclass) do
			{
				case "weapons":
				{
					_arrayofweapons = getArray (missionConfigFile >> "AllowedCachesGear" >> _configClass >> _x);
					{ _sideAllowedWeapons pushBackUnique _x} forEach _arrayofweapons;
				};
				
				case "optics":
				{
					_arrayofoptics = getArray (missionConfigFile >> "AllowedCachesGear" >> _configClass >> _x);
					{ _AllowedAttachments pushBackUnique _x} forEach _arrayofoptics;
				};
				
				case "pointers":
				{
					_arrayofpointers = getArray (missionConfigFile >> "AllowedCachesGear" >> _configClass >> _x);
					{ _AllowedAttachments pushBackUnique _x} forEach _arrayofpointers;
				};
				
				case "muzzle":
				{
					_arrayofmuzzle = getArray (missionConfigFile >> "AllowedCachesGear" >> _configClass >> _x);
					{ _AllowedAttachments pushBackUnique _x} forEach _arrayofmuzzle;
				};
				
				case "allowedAmmo":
				{
					_arrayofallowedAmmo = getArray (missionConfigFile >> "AllowedCachesGear" >> _configClass >> _x);
					{ _sideAllowedAdditionalAmmo pushBackUnique _x} forEach _arrayofallowedAmmo;
				};
				
				case "allowedItems":
				{
					_arrayofallowedItems = getArray (missionConfigFile >> "AllowedCachesGear" >> _configClass >> _x);
					{ _sideAllowedItems pushBackUnique _x} forEach _arrayofallowedItems;
				};
			};
			
		}forEach _subclasses;
			
	} forEach _subclassesPaths;
				
} forEach [_inventory select 0,_inventory select 1];

{
    _allMagazines = getArray (configFile >> "CfgWeapons" >> _x >> "magazines");
    _allAttachment = [_x] call CBA_fnc_compatibleItems;

    _weaponItems = _weaponItems + (_allAttachment - (_allAttachment - _AllowedAttachments));

} forEach (weapons _arg_unit);

_magazines = _allmagazines + _sideAllowedAdditionalAmmo; 

[ATC_weaponsCrate, _sideAllowedWeapons ] call ATC_fnc_fillCrate;
[ATC_ammoCrate, _magazines] call ATC_fnc_fillCrate;
[ATC_weaponItemsCrate, _weaponItems] call ATC_fnc_fillCrate;
[ATC_itemsCrate, _sideAllowedItems] call ATC_fnc_fillCrate;

//[ATC_VACrate, ATC_sideAllowedWeapons - ATC_limitedGears,_magazines, _weaponItems, ATC_sideAllowedItems] call ATC_fnc_fillCrateVA;
