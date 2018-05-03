/**
* ATC_fnc_createCrate
*
* @author ^eNable [enc0ded] <enc0ded.enable@gmail.com>
* @param string _this select 0 Crate class name
* @param string _this select 1 Marker name
* @return object Crate object
*/
private ["_arg_crateClass","_crate","_markerPos","_markerDir"];

_arg_crateClass = _this select 0;
_arg_isGlobal = if (!isNil {_this select 2}) then {_this select 2} else {false};

_crate = objNull;

if (markerType (_this select 1) != "") then {
	_markerPos = markerPos (_this select 1);
	_markerDir = markerDir (_this select 1);

	_crate = if (!_arg_isGlobal) then {_arg_crateClass createVehicleLocal _markerPos} else {_arg_crateClass createVehicle _markerPos};
	_crate setPos _markerPos;
	_crate setDir _markerDir;
	_crate allowDamage false;

	if (!_arg_isGlobal) then {
		clearWeaponCargo _crate;
		clearMagazineCargo _crate;
		clearItemCargo _crate;
		clearBackpackCargo _crate;
	} else {
		clearWeaponCargoGlobal _crate;
		clearMagazineCargoGlobal _crate;
		clearItemCargoGlobal _crate;
		clearBackpackCargoGlobal _crate;
	};
};

//["AmmoboxInit",_crate, true] spawn BIS_fnc_arsenal;

_crate