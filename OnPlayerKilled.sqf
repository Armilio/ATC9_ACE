// Spectator/tickets on killed by {BDR}*Armilio*© for ATC7

_OldPG = _this select 0;
sleep 1;
//_OldPGTickets = [_OldPG,nil,true] call BIS_fnc_respawnTickets;

_PUID2 = getPlayerUID _OldPG; 

["unitDied", [player, _PUID2]] call CBA_fnc_serverEvent;

