/**
* ATC_fnc_fillCrateGlobal
*
* @author ^eNable [enc0ded] <enc0ded.enable@gmail.com>
* @param object _this Crate object 
* @return void
*/
private "_arg_crate";
_arg_crate = _this select 0;

clearWeaponCargoGlobal _arg_crate;
clearMagazineCargoGlobal _arg_crate;
clearItemCargoGlobal _arg_crate;
clearBackpackCargoGlobal _arg_crate;

switch (_arg_crate) do {	
	case ATC_limitedWeaponsCrateA;
	case ATC_limitedWeaponsCrateB: {
		private ["_arg_weapons"];
		_arg_weapons = _this select 1;

		{
			_arg_crate addWeaponCargoGlobal _x;
		} forEach _arg_weapons;
	};
	case ATC_limitedAmmoCrateA; 
	case ATC_limitedAmmoCrateB: {
		private ["_arg_magazines"];
		_arg_magazines = _this select 1;

		{
			_arg_crate addMagazineCargoGlobal _x;
		} forEach _arg_magazines;
	};
	/*case ATC_limitedBackpackCrateA; 
	case ATC_limitedBackpackCrateB: {
		private ["_arg_backpack"];
		_arg_backpack = _this select 1;

		{
			_arg_crate addBackpackCargoGlobal _x;
		} forEach _arg_backpack;
	};*/
};
