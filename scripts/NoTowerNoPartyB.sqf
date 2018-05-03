//Remove UAV when antenna down, script made for ATC8 by {BDR}*Armilio* ©
//null=[this] execVM "scripts\xxx.sqf"; in commanders init

if (!IsServer) exitwith{};
_UAV=_this select 0;
TowerBplaced = false;
waituntil {time> 60*16};
if (!TowerBplaced) then {
	TowerKilledB = true;
};
waituntil {TowerKilledB};

deletevehicle _UAV;