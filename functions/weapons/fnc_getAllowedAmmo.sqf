/**
* ATC_fnc_getAllowedAmmo
*
* @author ^eNable [enc0ded] <enc0ded.enable@gmail.com>
*
*EDITED BY FLIPPER
*
*ADDED ALLOWED WEAPON
*/
private ["_arg_weapons","_ammo"];
_arg_weapons = _this;

_ammo = ["200Rnd_65x39_cased_Box","150Rnd_762x54_Box","ATC_MAG_Titan_AT", "ATC_MAG_Titan_AT_B", "Titan_AA", "ATC_NLAW_F", "ATC_NLAW_HE_F", "RPG32_HE_F", "ATC_RPG32_F","ACE_1Rnd_82mm_Mo_HE","ACE_1Rnd_82mm_Mo_Smoke","ACE_1Rnd_82mm_Mo_Illum","ACE_1Rnd_82mm_Mo_HE_LaserGuided"];

{
	_ammo  = _ammo + getArray (configFile >> "CfgWeapons" >> _x >> "magazines");
} forEach _arg_weapons;

_ammo