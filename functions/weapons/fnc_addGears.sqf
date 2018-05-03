private ["_arg_unit", "_weapons", "_loadout", "_uniform", "_vest", "_backpack", "_headgear", "_assignedItems", "_weaponClass", "_weaponAmmoClass", "_weaponAmmoNum", "_weaponItems", "_weaponType"];

_arg_unit = _this;

_weapons = (_arg_unit getVariable "atc_loadout") select 2;
_loadout = (_arg_unit getVariable "atc_loadout") select 1;

_arg_unit enableSimulation false;

removeAllWeapons _arg_unit;
removeAllItems _arg_unit;

/* Uniform */
_uniform = _loadout select 0;
//removeUniform _arg_unit;

if (_uniform select 0 != "") then {
	_arg_unit addUniform (_uniform select 0);
};

{
	if (_arg_unit canAddItemToUniform _x) then {
		_arg_unit addItemToUniform _x;
	};
} foreach (_uniform select 1);

/* Vest */
_vest = _loadout select 1;
removeVest _arg_unit;

if (_vest select 0 != "") then {
	_arg_unit addVest (_vest select 0);
};

{
	if (_arg_unit canAddItemToVest _x) then {
		_arg_unit addItemToVest _x;
	};
} foreach (_vest select 1);

/* Backpack */
_backpack = _loadout select 2;
removeBackpack _arg_unit;

if (_backpack select 0 != "") then {
	_arg_unit addBackpack (_backpack select 0);
};

{
	if (_arg_unit canAddItemToBackpack _x) then {
		_arg_unit addItemToBackpack _x;
	};
} foreach (_backpack select 1);

/* Headgear */
_headgear = _loadout select 3;
removeHeadgear _arg_unit;

if (_headgear != "") then {
	_arg_unit addHeadgear _headgear;
};

/* AssignedItems */
_assignedItems = _loadout select 4;
removeAllAssignedItems _arg_unit;

{
	_arg_unit addItem _x;
	_arg_unit assignItem _x;
} foreach _assignedItems;

/* Binocular */
_binocular = _loadout select 5;

if (_binocular != "") then {
	_arg_unit addWeapon _binocular;
};

_weaponType = 0;

{
	_weaponClass = _x select 0;
	_weaponItems = _x select 1;

	if (_weaponClass != "" && {isClass (configFile >> "CfgWeapons" >> _weaponClass)}) then {
		_weaponType = getNumber (configFile >> "CfgWeapons" >> _weaponClass >> "type");

		_arg_unit addWeapon _weaponClass;

		_arg_unit selectWeapon _weaponClass;

		if (count _weaponItems > 0) then {
			{
				if (_x != "" && {isClass (configFile >> "CfgWeapons" >> _x)}) then {	
					switch (_weaponType) do {
						case 1: {_arg_unit addPrimaryWeaponItem _x};
						case 2: {_arg_unit addHandgunItem _x};
						case 4: {_arg_unit addSecondaryWeaponItem _x};
					};
				};
			} forEach _weaponItems;
		};
	};

} forEach _weapons;

switch (_weaponType) do {
	case 0: {_arg_unit switchMove "AmovPercMstpSnonWnonDnon"};
	case 1: {_arg_unit switchMove "AmovPercMstpSrasWrflDnon"};
	case 2: {_arg_unit switchMove "AmovPercMstpSrasWpstDnon"};
	case 4: {_arg_unit switchMove "AmovPercMstpSrasWlnrDnon"};
};

_arg_unit enableSimulation true;