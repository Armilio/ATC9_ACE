//Respawn tickets management script, made for ATC7 by {BDR}*Armilio* ©

if (!IsServer) exitwith{};
waituntil {time > 0};
{//Settare vite a init server/partita
	[_x,99,false] call BIS_fnc_respawnTickets; 
}foreach allUnits;

UIDArray = [];
UIDTicketsArray = [];

{//Riempire gli array con in memoria giocatori e vite.
	PUID = getPlayerUID _x;
	UIDArray pushBackUnique PUID; 
	UIDTicketsArray pushbackUnique [PUID, 3];
}foreach allUnits; 
publicVariable "UIDArray";
publicVariable "UIDTicketsArray";


//criticità: 
//
