//Defenders move from the base before the attackers, script made for ATC8 by {BDR}*Armilio* ©


waituntil {time > 0};
/*
//added by Nemesi for ATC9 - deployment notifications

if ((ATC_DB_attSide == BLUFOR) && (ATC_DB_defSide == OPFOR)) then 
	{

waituntil {time > 10};
["<t size='1.3' color='#ff0000'>Deployment to sectors starts in 5 mike!</t>",0,0.5,3,2] remoteExec ["bis_fnc_dynamictext", east, true]; 
};
if ((ATC_DB_attSide == OPFOR) && (ATC_DB_defSide == BLUFOR)) then 
	{
		waituntil {time > 10};

		["<t size='1.3' color='#0c00ff'>Deployment to sectors starts in 5 mike!</t>",0,0.5,3,2] remoteExec ["bis_fnc_dynamictext", west, true];
};
*/
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
			R_A1 setVariable ["isRecon", true, true]; 
			R_A2 setVariable ["isRecon", true, true];
			R_A3 setVariable ["isRecon", true, true];
			R_A4 setVariable ["isRecon", true, true];
			R_A5 setVariable ["isRecon", true, true];
			R_A6 setVariable ["isRecon", true, true];
			R_A7 setVariable ["isRecon", true, true];
			R_A8 setVariable ["isRecon", true, true];
			R_A9 setVariable ["isRecon", true, true];
			R_A10 setVariable ["isRecon", true, true];
		};
		if (Mixed_B) then {
			R_B1 setVariable ["isRecon", true, true]; 
			R_B2 setVariable ["isRecon", true, true];
			R_B3 setVariable ["isRecon", true, true];
			R_B4 setVariable ["isRecon", true, true];
			R_B5 setVariable ["isRecon", true, true];
			R_B6 setVariable ["isRecon", true, true];
			R_B7 setVariable ["isRecon", true, true];
			R_B8 setVariable ["isRecon", true, true];
R_B9 setVariable ["isRecon", true, true];
R_B10 setVariable ["isRecon", true, true];
		};
		if (Mixed_C) then {
			R_C1 setVariable ["isRecon", true, true]; 
			R_C2 setVariable ["isRecon", true, true];
			R_C3 setVariable ["isRecon", true, true];
			R_C4 setVariable ["isRecon", true, true];
			R_C5 setVariable ["isRecon", true, true];
			R_C6 setVariable ["isRecon", true, true];
			R_C7 setVariable ["isRecon", true, true];
			R_C8 setVariable ["isRecon", true, true];
R_C9 setVariable ["isRecon", true, true];
R_C10 setVariable ["isRecon", true, true];
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
			B_A1 setVariable ["isRecon", true, true]; 
			B_A2 setVariable ["isRecon", true, true];
			B_A3 setVariable ["isRecon", true, true];
			B_A4 setVariable ["isRecon", true, true];
			B_A5 setVariable ["isRecon", true, true];
			B_A6 setVariable ["isRecon", true, true];
			B_A7 setVariable ["isRecon", true, true];
			B_A8 setVariable ["isRecon", true, true];
			B_A9 setVariable ["isRecon", true, true];
			B_A10 setVariable ["isRecon", true, true];

		};
		if (Mixed_B) then {
			B_B1 setVariable ["isRecon", true, true]; 
			B_B2 setVariable ["isRecon", true, true];
			B_B3 setVariable ["isRecon", true, true];
			B_B4 setVariable ["isRecon", true, true];
			B_B5 setVariable ["isRecon", true, true];
			B_B6 setVariable ["isRecon", true, true];
			B_B7 setVariable ["isRecon", true, true];
			B_B8 setVariable ["isRecon", true, true];
			B_B9 setVariable ["isRecon", true, true];
			B_B10 setVariable ["isRecon", true, true];

		};
		if (Mixed_C) then {
			B_C1 setVariable ["isRecon", true, true]; 
			B_C2 setVariable ["isRecon", true, true];
			B_C3 setVariable ["isRecon", true, true];
			B_C4 setVariable ["isRecon", true, true];
			B_C5 setVariable ["isRecon", true, true];
			B_C6 setVariable ["isRecon", true, true];
			B_C7 setVariable ["isRecon", true, true];
			B_C8 setVariable ["isRecon", true, true];
			B_C9 setVariable ["isRecon", true, true];
			B_C10 setVariable ["isRecon", true, true];

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
