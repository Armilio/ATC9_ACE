// Spectator/tickets on killed by {BDR}*Armilio*© for ATC7, edited for ATC9

_OldPG = _this select 0;
sleep 1;
//_OldPGTickets = [_OldPG,nil,true] call BIS_fnc_respawnTickets;

_PUID2 = getPlayerUID _OldPG; 
_Sel2 = UIDArray find _PUID2;
_Array21 = UIDTicketsArray select _sel2;
_Vite = (_Array21 select 1)-1;

if (_sel2 != -1) then { //se trova il playerUID nell'array && se no zero per anti-bug
	_Array23 = UIDTicketsArray select _sel2;
	_Array23 set [0, _PUID2];
	_Array23 set [1, _Vite];
	UIDTicketsArray set [_sel2, _Array23];
	publicVariableserver "UIDTicketsArray";
};	
