
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
			_class = "Granadier";
		};
		
		case ("str_b_soldier_lat_f0" call BIS_fnc_localize):
		{
			_class = "Rifleman AT";
		};
		
		case ("str_b_soldier_at_f0" call BIS_fnc_localize):
		{
			_class = "Rifleman AT";
		};
		
		case ("str_b_soldier_aa_f0" call BIS_fnc_localize):
		{
			_class = "AA Specialist";
		};
		
		case ("str_a3_cfgvehicles_o_heavygunner_f0" call BIS_fnc_localize):
		{
			_class = "Machinegunner";
		};
	
		case ("str_b_soldier_m_f0" call BIS_fnc_localize):
		{
			_class = "Designated marksman";
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
	};
	
	switch (side player) do
	{
		case west:
		{
			_class = _class + "B";
			player setVariable ["class",_class,false];
		};
		
		case east:
		{
			_class = _class + "R";
			player setVariable ["class",_class,false];
		};
		
	};
	
	
