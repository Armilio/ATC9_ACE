// Spectator/tickets on respawn by {BDR}*Armilio*© for ATC7, edited for ATC9

_newPG2 = _this select 0;
sleep 1;
_newPGTickets2 = [_newPG2,nil,true] call BIS_fnc_respawnTickets;

	_JIPUID2 = getPlayerUID _newPG2;
	_Sel4 = UIDArray find _JIPUID2;
	_Array20 = UIDTicketsArray select _sel4;
	_Vite2 = _Array20 select 1;
	
	_class = _newPG2 getVariable ["class",""];
	_class = [_class,_Vite2] joinString "";
	[_newPG2,missionConfigFile >> "CfgRespawnInventory" >> _class] call BIS_fnc_loadInventory;
	
if (time > 10 && (_sel4 >= 0)) then {
	if (_Vite2 == 0) then {
		[_newPG2,-96,false] call BIS_fnc_respawnTickets;
		["Initialize", [_newPG2, [side _newPG2], true, false, false, true, true, true, true, true]] call BIS_fnc_EGSpectator;
		_newPG2 setdamage 1;
		
	};

	if (_Vite2 < 1) then {
		_ZeroV =_newPGTickets2 * -1;
		[_newPG2,_ZeroV,false] call BIS_fnc_respawnTickets;
		["Initialize", [_newPG2, [side _newPG2], true, false, false, true, true, true, true, true]] call BIS_fnc_EGSpectator;
		_newPG2 setdamage 1;
	};
};

//c'entra niente mi serviva qualcosa che faceva JIP
	1 enableChannel [false, true];
	2 enablechannel [false, false];
	_newPG2 addRating 30000;
	//enableRadio false;
	//enableSentences false;
	//_newPG2 disableConversation false;
	//_newPG2 setVariable ["BIS_noCoreConversations", true];
	//_newPG2 enableAttack false;
//end
