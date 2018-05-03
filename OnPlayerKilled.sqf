// Spectator/tickets on killed by {BDR}*Armilio*© for ATC7

_OldPG = _this select 0;
sleep 1;
_OldPGTickets = [_OldPG,nil,true] call BIS_fnc_respawnTickets;

_PUID2 = getPlayerUID _OldPG; 
_Sel2 = UIDArray find _PUID2;
if (_sel2 != -1 && (_OldPGTickets > 0)) then { //se trova il playerUID nell'array && se no zero per anti-bug
	_Array23 = UIDTicketsArray select _sel2;
	_Array23 set [0, _PUID2];
	_Array23 set [1, _OldPGTickets];
	UIDTicketsArray set [_sel2, _Array23];
	publicVariableserver "UIDTicketsArray";
};	

/*
if (_OldPGTickets <= 1) then {
	["Initialize", [_OldPG, [side _OldPG], true, false, false, true, true, true, true, true]] call BIS_fnc_EGSpectator;
};
*/