/**
* ATC_fnc_refillClientCrates
*
* @author ^eNable [enc0ded] <enc0ded.enable@gmail.com>
*
*  Edited by Flipper after CBA 2.0 Update
*
*  Edited by NikLox to implement new inventory system
*/
private ["_magazines", "_weaponItems", "_allMagazines", "_allAttachment","_AllowedAttachments","_inventory"];

_arg_unit = _this;
_attachments = [];

_weapon = primaryWeapon _arg_unit;
_handgun = handgunWeapon _arg_unit;

_AllMagazines = getArray (configFile >> "CfgWeapons" >> _weapon >> "magazines");
_AllHGMagazines = getArray (configFile >> "CfgWeapons" >> _handgun >> "magazines");

{
	_compatibleAttachments = [_x] call CBA_fnc_compatibleItems;
	_allowedAttachments = _compatibleAttachments arrayIntersect ATC_ClassAttachments;
	_attachments = _attachments + _allowedAttachments;
}forEach [_weapon,_handgun];

_magazines = _allmagazines + _AllHGMagazines + ATC_ClassAllowedAmmo; 
ATC_ClassWeapons = ATC_ClassWeapons - ["ATC_TITAN_AA_starter"];

[ATC_weaponsCrate, ATC_ClassWeapons] call ATC_fnc_fillCrate;
[ATC_ammoCrate, _magazines] call ATC_fnc_fillCrate;
[ATC_weaponItemsCrate, _attachments] call ATC_fnc_fillCrate;
[ATC_itemsCrate, ATC_ClassAllowedItems] call ATC_fnc_fillCrate;
[ATC_BackpacksCrate, ATC_ClassAllowedBackpack,true] call ATC_fnc_fillCrate;

//[ATC_VACrate, ATC_sideAllowedWeapons - ATC_limitedGears,_magazines, _weaponItems, ATC_sideAllowedItems] call ATC_fnc_fillCrateVA;

true
