
	 _nomeclasse = typeOf player;
	 _class = [configfile >> "CfgVehicles" >> _nomeclasse >> "displayName"] call BIS_fnc_getCfgData;
	//private _recon = 0; (vedere quante variabili tenere nell'init in editor)
	
	switch (_class) do
	{
		case ("str_a3_cfgvehicles_b_soldier_f0" call BIS_fnc_localize):
		{
			_class = "Rifleman";
		};
		
		case ("str_b_soldier_gl_f0" call BIS_fnc_localize):
		{
			_class = "Grenadier";
		};
		
		case ("str_b_soldier_lat_f0" call BIS_fnc_localize):
		{
			_class = "RiflemanAT";
		};
		
		case ("str_b_soldier_at_f0" call BIS_fnc_localize):
		{
			_class = "ATSpecialist";
		};
		
		case ("str_b_soldier_aa_f0" call BIS_fnc_localize):
		{
			_class = "AASpecialist";
		};
		
		case ("str_a3_cfgvehicles_o_heavygunner_f0" call BIS_fnc_localize):
		{
			_class = "Machinegunner";
		};
	
		case ("str_b_soldier_m_f0" call BIS_fnc_localize):
		{
			_class = "DesignatedMarksman";
		};
		
		case ("str_a3_cfgvehicles_o_sharpshooter_f0" call BIS_fnc_localize):
		{
			_class = "Sniper";
		};
		
		case ("str_B_officer_f0" call BIS_fnc_Localize):
		{
			_class = "Spotter";
		};
		
		case ("str_b_medic_f0" call BIS_fnc_localize):
		{
			_class = "Medic";
		};
		
		case ("str_b_helipilot_f0" call BIS_fnc_localize):
		{
			_class = "Pilot";
		};
		
		case ("str_b_engineer_f0" call BIS_fnc_localize):
		{
			_class = "Engineer";
		};
		
		case ("str_b_support_mort_f0" call BIS_fnc_localize):
		{
			_class = "Mortarman";
		};
		
		case ("str_b_crew_f0" call BIS_fnc_localize):
		{
			_class = "Crewman";
		};
		
		case ("str_b_soldier_tl_f0" call BIS_fnc_localize):
		{
			_class = "Teamleader";
		};
		
		case ("str_b_officer_f0" call BIS_fnc_localize):
		{
			_class = "Commander";
		};
		
		default
		{
			["The editor placed unit isn't right! Player: %1 , Classname: %2", player,_nomeclasse] call BIS_fnc_error;
		};

	};
	
	switch (side player) do
	{
		case west:
		{
			_class = [_class,"B"] joinString "";
			player setVariable ["class",_class,false];
		};
		
		case east:
		{
			_class = [_class,"R"] joinString "";
			player setVariable ["class",_class,false];
		};
		
	};
	
	
