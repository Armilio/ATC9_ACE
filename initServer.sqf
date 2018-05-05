UIDArray = [];
UIDTicketsArray = [];

{//Riempire gli array con in memoria giocatori e vite.
	PUID = getPlayerUID _x;
	UIDArray pushBackUnique PUID; 
	UIDTicketsArray pushbackUnique [PUID, 3];
}foreach allPlayers; 
publicVariable "UIDArray";
publicVariable "UIDTicketsArray";
