
	 _nomeclasse = typeOf player;
	 _class = [configfile >> "CfgVehicles" >> _nomeclasse >> "displayName"] call BIS_fnc_getCfgData;
	//private _recon = 0; (vedere quante variabili tenere nell'init in editor)
	
	switch (_class) do
	{
		case ("str_a3_cfgvehicles_b_soldier_f0" call BIS_fnc_localize):
		{
			//Fuciliere (NATO(uomini))
			_class = "Rifleman";
		};
		
		case ("str_b_soldier_gl_f0" call BIS_fnc_localize):
		{
			//Granatiere (NATO(uomini))
			_class = "Grenadier";
		};
		
		case ("str_b_soldier_lat_f0" call BIS_fnc_localize):
		{
			//Fuciliere (AC) (NATO(uomini))
			_class = "RiflemanAT";
		};
		
		case ("str_b_soldier_at_f0" call BIS_fnc_localize):
		{
			//Specialista Missili (AC) (NATO(Uomini))
			_class = "ATSpecialist";
		};
		
		case ("str_b_soldier_aa_f0" call BIS_fnc_localize):
		{
			//Specialista Missili (AA) (NATO(Uomini))
			_class = "AASpecialist";
		};
		
		case ("str_a3_cfgvehicles_o_heavygunner_f0" call BIS_fnc_localize):
		{
			//Artigliere pesante (NATO(uomini))
			_class = "Machinegunner";
		};
	
		case ("str_b_soldier_m_f0" call BIS_fnc_localize):
		{
			//Tiratore Scelto (NATO(Uomini))
			_class = "DM";
		};
		
		case ("str_a3_cfgvehicles_o_sharpshooter_f0" call BIS_fnc_localize):
		{
			//Cecchino (NATO(Uomini))
			_class = "Sniper";
		};
		
		case ("str_B_spotter_f0" call BIS_fnc_Localize):
		{
			//Osservatore (NATO(uomini (forze speciali)))
			_class = "Spotter";
		};
		
		case ("str_b_medic_f0" call BIS_fnc_localize):
		{
			//Medico (NATO(Uomini))
			_class = "Medic";
		};
		
		case ("str_b_helipilot_f0" call BIS_fnc_localize):
		{
			//Pilota (NATO(Uomini))
			_class = "Pilot";
		};
		
		case ("str_b_engineer_f0" call BIS_fnc_localize):
		{
			//Ingegnere (NATO(Uomini))
			_class = "Engineer";
		};
		
		case ("str_b_support_mort_f0" call BIS_fnc_localize):
		{
			//Artigliere (MK6) (NATO(Uomini))
			_class = "Mortarman";
		};
		
		case ("str_b_crew_f0" call BIS_fnc_localize):
		{
			//Membro equipaggio (NATO(Uomini))
			_class = "Crewman";
		};
		
		case ("str_b_soldier_sl_f0" call BIS_fnc_localize):
		{
			//Caposquadra (NATO(Uomini))
			_class = "Teamleader";
		};
		
		case ("str_b_officer_f0" call BIS_fnc_localize):
		{
			//Ufficiale (NATO(Uomini))
			_class = "Commander";
		};
		
		case ("str_B_recon_F0" call BIS_fnc_localize):
		{
			//Ricognitore esploratore (NATO(Uomini(Forze speciali))
			_class = "SF";
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
	
	
