/**
* ATC_fnc_refillClientCrates
*
* @author ^eNable [enc0ded] <enc0ded.enable@gmail.com>
*
*
*  Edited by Flipper after CBA 2.0 Update
*/
private ["_magazines", "_weaponItems", "_allMagazines", "_allAttachment"];

_arg_unit = _this;

_magazines = [];
_weaponItems = [];

{
    _allMagazines = getArray (configFile >> "CfgWeapons" >> _x >> "magazines");
    _allAttachment = [_x] call CBA_fnc_compatibleItems;

    _magazines = _magazines + (_allMagazines - ATC_limitedGears);
    _weaponItems = _weaponItems + (_allAttachment - (_allAttachment - ATC_sideAllowedOptics - ATC_sideAllowedPointers - ATC_sideAllowedMuzzles));

} forEach (weapons _arg_unit);

_magazines = _magazines + ATC_sideAllowedAdditionalAmmo; 

[ATC_weaponsCrate, ATC_sideAllowedWeapons - ATC_limitedGears] call ATC_fnc_fillCrate;
[ATC_ammoCrate, _magazines] call ATC_fnc_fillCrate;
[ATC_weaponItemsCrate, _weaponItems] call ATC_fnc_fillCrate;
[ATC_itemsCrate, ATC_sideAllowedItems] call ATC_fnc_fillCrate;

//[ATC_VACrate, ATC_sideAllowedWeapons - ATC_limitedGears,_magazines, _weaponItems, ATC_sideAllowedItems] call ATC_fnc_fillCrateVA;