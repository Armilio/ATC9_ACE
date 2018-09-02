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
_PossInvData = ["allowedItems","weapons","allowedAmmo"];
_sideAllowedItems = [];
_sideAllowedWeapons = [];
_sideAllowedAdditionalAmmo = [];
_weaponItems = [];

{
	_class = _x;
	
	{
		_data = [missionConfigFile >> "AllowedCachesGear" >> _class >> _x] call BIS_fnc_getCfgData;
		
		if (isNil "_data") exitWith {};
		
		switch (_x) do
		{
			case "weapons":		
			{
				{
					if (_x == primaryWeapon player) then 
					{
				
						_allMagazines = getArray (configFile >> "CfgWeapons" >> _x >> "magazines");
						_allAttachment = [_x] call CBA_fnc_compatibleItems;
						
						_optics = [missionConfigFile >> "AllowedCachesGear" >> _class >> "optics" ] call BIS_fnc_getCfgDataArray;
						_muzzle = [missionConfigFile >> "AllowedCachesGear" >> _class >> "muzzle"] call BIS_fnc_getCfgDataArray;
						_pointers = [missionConfigFile >> "AllowedCachesGear" >> _class >> "pointers"] call BIS_fnc_getCfgDataArray;
						
						_AllowedAttachments = [];
						{{_AllowedAttachments pushBackUnique _x} forEach _x} forEach [_optics,_pointers,_muzzle];  
						
						_weaponItems = _weaponItems + (_allAttachment - (_allAttachment - _AllowedAttachments));
					};
				
				_sideAllowedWeapons pushBackUnique _x;
			
				} forEach _data;
			};
			
			case "allowedAmmo":
			{
				{
					_sideAllowedAdditionalAmmo pushBackUnique _x;
				} forEach _data;
			};
					
				
			case default
			{
				{
				_sideAllowedItems pushbackUnique _x;
				} forEach _data;
			};
		};
		
	} forEach _PossInvData;
	
} forEach _inventory;

_magazines = _allmagazines + _sideAllowedAdditionalAmmo; 
_sideAllowedWeapons = _sideAllowedWeapons - ["ATC_TITAN_AA_starter"];

[ATC_weaponsCrate, _sideAllowedWeapons ] call ATC_fnc_fillCrate;
[ATC_ammoCrate, _magazines] call ATC_fnc_fillCrate;
[ATC_weaponItemsCrate, _weaponItems] call ATC_fnc_fillCrate;
[ATC_itemsCrate, _sideAllowedItems] call ATC_fnc_fillCrate;

//[ATC_VACrate, ATC_sideAllowedWeapons - ATC_limitedGears,_magazines, _weaponItems, ATC_sideAllowedItems] call ATC_fnc_fillCrateVA;
