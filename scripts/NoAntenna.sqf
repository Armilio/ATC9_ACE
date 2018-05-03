//Remove antenna action, script made for ATC8 by {BDR}*Armilio* ©
//null=[this] execVM "scripts\NoAntenna.sqf"; in commanders init

waitUntil {!isNull player};
_unit = _this select 0;
waituntil {time > (60*15)};
removeAllActions _unit;