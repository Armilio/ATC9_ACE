/**
* ATC_fnc_fillCrate
*
* @author ^eNable [enc0ded] <enc0ded.enable@gmail.com>
* @param object _this Crate object 
* @return void
*/
private "_arg_crate";
_arg_crate = _this select 0;

//ADDED BY FLIPPER 
_limitedAmmo = ["SatchelCharge_Remote_Mag","DemoCharge_Remote_Mag","APERSBoundingMine_Range_Mag","ATMine_Range_Mag","APERSMine_Range_Mag","APERSTripMine_Wire_Mag","ClaymoreDirectionalMine_Remote_Mag", "RPG32_HE_F", "ATC_RPG32_F", "tf47_m3maaws_HEAT", "tf47_m3maaws_HEDP", "Titan_AA", "ATC_MAG_Titan_AT", "ATC_MAG_Titan_AT_B", "Titan_AP","ACE_1Rnd_82mm_Mo_HE","ACE_1Rnd_82mm_Mo_Smoke","ACE_1Rnd_82mm_Mo_Illum","ACE_1Rnd_82mm_Mo_HE_LaserGuided"];
_limitedItems =["Toolkit"];
//

clearWeaponCargo _arg_crate;
clearMagazineCargo _arg_crate;
clearItemCargo _arg_crate;
clearBackpackCargo _arg_crate;

switch (_arg_crate) do {
	case ATC_weaponsCrate: {		
		_arg_weapons = _this select 1;	
		{
			_arg_crate addWeaponCargo [_x, 1];
		} forEach _arg_weapons;
	};
	case ATC_ammoCrate: {
		private ["_arg_magazines"];
		_arg_magazines = _this select 1;

		{
        //ADDED BY FLIPPER    
        if (!(_x in _limitedAmmo)) then {    
			_arg_crate addMagazineCargo [_x, 20];
            };
        //
		} forEach _arg_magazines;
	};
	case ATC_weaponItemsCrate;
	case ATC_itemsCrate: {
		private ["_arg_items"];
		_arg_items = _this select 1;

		{
		if (!(_x in _limitedItems)) then {//ADDED BY Armilio
			_arg_crate addItemCargo [_x, 1];
			};
		} forEach _arg_items;
	};
};