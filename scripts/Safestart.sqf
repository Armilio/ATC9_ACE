//Defenders move from the base before the attackers, script made for ATC8 by {BDR}*Armilio* ©


waituntil {time > 0};


if (!Mixed_sectors) then {
	if ((ATC_DB_attSide == OPFOR) && (ATC_DB_defSide == BLUFOR)) then 
	{
		waituntil {time > 60*6};
		deletevehicle safestart_blufor;
		["<t size='1.3' color='#0c00ff'>Blufor side is ready to move out of the base!</t>",0,0.5,3,2] remoteExec ["bis_fnc_dynamictext", west, true];
		waituntil {time > 60*12};
		deletevehicle safestart_opfor;
		["<t size='1.3' color='#ff0000'>Opfor side is ready to move out of the base!</t>",0,0.5,3,2] remoteExec ["bis_fnc_dynamictext", east, true];
	};
	if ((ATC_DB_attSide == BLUFOR) && (ATC_DB_defSide == OPFOR)) then 
	{
		waituntil {time > 60*6};
		deletevehicle safestart_opfor;
		["<t size='1.3' color='#ff0000'>Opfor side is ready to move out of the base!</t>",0,0.5,3,2] remoteExec ["bis_fnc_dynamictext", east, true]; 
		waituntil {time > 60*12};
		deletevehicle safestart_blufor;
		["<t size='1.3' color='#0c00ff'>Blufor side is ready to move out of the base!</t>",0,0.5,3,2] remoteExec ["bis_fnc_dynamictext", west, true];
	};	
}else{
	if ((ATC_DB_attSide == OPFOR) && (ATC_DB_defSide == BLUFOR)) then 
	{
		if (Mixed_A) then {
			R_A1 setVariable ["isRecon", true, false]; 
			R_A2 setVariable ["isRecon", true, false];
			R_A3 setVariable ["isRecon", true, false];
			R_A4 setVariable ["isRecon", true, false];
			R_A5 setVariable ["isRecon", true, false];
			R_A6 setVariable ["isRecon", true, false];
			R_A7 setVariable ["isRecon", true, false];
			R_A8 setVariable ["isRecon", true, false];
		};
		if (Mixed_B) then {
			R_B1 setVariable ["isRecon", true, false]; 
			R_B2 setVariable ["isRecon", true, false];
			R_B3 setVariable ["isRecon", true, false];
			R_B4 setVariable ["isRecon", true, false];
			R_B5 setVariable ["isRecon", true, false];
			R_B6 setVariable ["isRecon", true, false];
			R_B7 setVariable ["isRecon", true, false];
			R_B8 setVariable ["isRecon", true, false];
		};
		if (Mixed_C) then {
			R_C1 setVariable ["isRecon", true, false]; 
			R_C2 setVariable ["isRecon", true, false];
			R_C3 setVariable ["isRecon", true, false];
			R_C4 setVariable ["isRecon", true, false];
			R_C5 setVariable ["isRecon", true, false];
			R_C6 setVariable ["isRecon", true, false];
			R_C7 setVariable ["isRecon", true, false];
			R_C8 setVariable ["isRecon", true, false];
		};
		waituntil {time > 60*10};
		deletevehicle safestart_blufor;
		["<t size='1.3' color='#0c00ff'>Blufor side is ready to move out of the base!</t>",0,0.5,3,2] remoteExec ["bis_fnc_dynamictext", west, true];
		waituntil {time > 60*10};
		deletevehicle safestart_opfor;
		["<t size='1.3' color='#ff0000'>Opfor side is ready to move out of the base!</t>",0,0.5,3,2] remoteExec ["bis_fnc_dynamictext", east, true];
	};
	if ((ATC_DB_attSide == BLUFOR) && (ATC_DB_defSide == OPFOR)) then 
	{
			if (Mixed_A) then {
			B_A1 setVariable ["isRecon", true, false]; 
			B_A2 setVariable ["isRecon", true, false];
			B_A3 setVariable ["isRecon", true, false];
			B_A4 setVariable ["isRecon", true, false];
			B_A5 setVariable ["isRecon", true, false];
			B_A6 setVariable ["isRecon", true, false];
			B_A7 setVariable ["isRecon", true, false];
			B_A8 setVariable ["isRecon", true, false];
		};
		if (Mixed_B) then {
			B_B1 setVariable ["isRecon", true, false]; 
			B_B2 setVariable ["isRecon", true, false];
			B_B3 setVariable ["isRecon", true, false];
			B_B4 setVariable ["isRecon", true, false];
			B_B5 setVariable ["isRecon", true, false];
			B_B6 setVariable ["isRecon", true, false];
			B_B7 setVariable ["isRecon", true, false];
			B_B8 setVariable ["isRecon", true, false];
		};
		if (Mixed_C) then {
			B_C1 setVariable ["isRecon", true, false]; 
			B_C2 setVariable ["isRecon", true, false];
			B_C3 setVariable ["isRecon", true, false];
			B_C4 setVariable ["isRecon", true, false];
			B_C5 setVariable ["isRecon", true, false];
			B_C6 setVariable ["isRecon", true, false];
			B_C7 setVariable ["isRecon", true, false];
			B_C8 setVariable ["isRecon", true, false];
		};
		waituntil {time > 60*10};
		deletevehicle safestart_opfor;
		["<t size='1.3' color='#ff0000'>Opfor side is ready to move out of the base!</t>",0,0.5,3,2] remoteExec ["bis_fnc_dynamictext", east, true]; 
		waituntil {time > 60*10};
		deletevehicle safestart_blufor;
		["<t size='1.3' color='#0c00ff'>Blufor side is ready to move out of the base!</t>",0,0.5,3,2] remoteExec ["bis_fnc_dynamictext", west, true];
	};		
};	
waituntil {time > 60*12};	

rh5 setVehicleLock "DEFAULT";
rh6 setVehicleLock "DEFAULT";


bh4 setVehicleLock "DEFAULT";
bh5 setVehicleLock "DEFAULT";
