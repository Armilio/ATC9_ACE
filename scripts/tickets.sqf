//Respawn tickets management script, made for ATC7 by {BDR}*Armilio* ©

if (!IsServer) exitwith{};
waituntil {time > 5};
{//Settare vite a init server/partita
	[_x,5,false] call BIS_fnc_respawnTickets; 
}foreach allUnits;

UIDArray = [];
UIDTicketsArray = [];

{//Riempire gli array con in memoria giocatori e vite.
	PUID = getPlayerUID _x;
	UIDArray pushBackUnique PUID; 
	UIDTicketsArray pushbackUnique [PUID, 5];
}foreach allUnits; 
publicVariable "UIDArray";
publicVariable "UIDTicketsArray";

/*waituntil {time > 0};
while {time < 6000} do { // controllare costantemente vite dei giocatori per spectator
	{
		playerTickets = [_x,nil,true] call BIS_fnc_respawnTickets;
		if (playerTickets <= 0) then {
			_x setDamage 1;	
		};	
	}foreach allunits;
	publicVariable "UIDArray";
	publicVariable "UIDTicketsArray";
};*/

//waituntil {time > 600}; 
waituntil {time > 60*110};
{//ultimi 20 minuti, una vita per tutti, aggiornare arrays per evitare errori in JIP
	PUID2 = getPlayerUID _x; 
	playerTickets = [_x,nil,true] call BIS_fnc_respawnTickets;
	Sel2 = UIDArray find PUID2;
	if (sel2 != -1) then {
		Array23 = UIDTicketsArray select sel2;
		Array23 set [0, PUID2];
		Array23 set [1, 2];
		UIDTicketsArray set [sel2, Array23];
	};	
}foreach allUnits;
publicVariable "UIDArray";
publicVariable "UIDTicketsArray";

/*
[[["Final stage of battle, all tickets set to 1"],{hint format [_this select 0 ];}],"BIS_fnc_Spawn",true, false, false] call BIS_fnc_MP;
{//ultimi 20 minuti, una vita per tutti, settare vite	
	playerTickets2 = [_x,nil,true] call BIS_fnc_respawnTickets;
	switch (playerTickets2) do {
		case 2: {[_x,0,false] call BIS_fnc_respawnTickets};
		case 3: {[_x,-1,false] call BIS_fnc_respawnTickets};
		case 4: {[_x,-2,false] call BIS_fnc_respawnTickets};
		case 5: {[_x,-3,false] call BIS_fnc_respawnTickets};
		case 6: {[_x,-4,false] call BIS_fnc_respawnTickets};
		default {[_x,0,false] call BIS_fnc_respawnTickets};
	};
}foreach allUnits;
*/


//criticità: 
//
