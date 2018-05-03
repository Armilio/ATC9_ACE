//Script By {BDR}Flipper//
 
if (!isServer) then {
    
	waitUntil { !isNull player };
	waitUntil { player == player };

private ["_noteam", "_side", "_team"];
	
_noteam = grpNull;    
[player] join _noteam;

sleep 0.1;

_side = side player;
_team = createGroup _side;
[player] join _team;

};