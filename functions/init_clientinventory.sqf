waitUntil {!isNil{player getVariable "inventory"} && !isNil {player getVariable "level"}};
	
	_level = player getVariable ["level",1];
    _class = (player getVariable ["inventory",[]]) select 0;
    _class = [_class,_level] joinString "";
    
    _oppositeclass = (player getVariable ["inventory",[]]) select 2;
    _oppositeclass = [_oppositeclass,_level] joinString "";
    
    _inventory = [_class,(player getVariable ["inventory",[]]) select 1,_oppositeclass,(player getVariable ["inventory",[]]) select 3];
    player setVariable ["inventory2",_inventory];
    
    [player,missionConfigFile >> "CfgRespawnInventory" >> _class] call BIS_fnc_loadinventory;
    
    ATC_allowedGearsForTake = [player] call ATC_fnc_getInvData;
	
    player call ATC_fnc_refillClientCrates;
