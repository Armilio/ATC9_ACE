// Spectator/tickets on respawn by {BDR}*Armilio*© for ATC7

_newPG2 = _this select 0;
sleep 1;
_newPGTickets2 = [_newPG2,nil,true] call BIS_fnc_respawnTickets;

if (time > 50) then {
	_JIPUID2 = getPlayerUID _newPG2;
	_Sel4 = UIDArray find _JIPUID2;
	
	if (_sel4 >= 0) then {
		if (_newPGTickets2 == 1) then {
			["Initialize", [_newPG2, [side _newPG2], true, false, false, true, true, true, true, true]] call BIS_fnc_EGSpectator;
			_newPG2 setdamage 1;
		};

		if (_newPGTickets2 < 1) then {
			["Initialize", [_newPG2, [side _newPG2], true, false, false, true, true, true, true, true]] call BIS_fnc_EGSpectator;
		};
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