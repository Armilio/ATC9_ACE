class VehicleRestrictions
{
	class B_T_LSV_01_armed_F //Polaris DAGOR (XM312)
	{
		driver[] = {"CommonB","CommonR"};
		gunner[] = {"CommonB","CommonR"};
		commander[] = {"CommonB","CommonR"};
		cargo[] = {"CommonB","CommonR"};

	};
	class B_Truck_01_transport_F //Camion trasporto NATO scoperto
	{
		driver[] = {"CommonB","CommonR"};
		cargo[] = {"CommonB","CommonR"};
	};

class B_Truck_01_covered_F //Camion trasporto NATO coperto
	{
		driver[] = {"CommonB","CommonR"};
		cargo[] = {"CommonB","CommonR"};
	};
class O_Truck_03_transport_F //Camion trasporto CSAT scoperto
	{
		driver[] = {"CommonB","CommonR"};
		cargo[] = {"CommonB","CommonR"};
	};

class O_Truck_03_covered_F //Camion trasporto CSAT coperto
	{
		driver[] = {"CommonB","CommonR"};
		cargo[] = {"CommonB","CommonR"};
	};

	class B_MRAP_01_F //M-ATV
	{
		driver[] = {"CommonB","CommonR"};
		cargo[] = {"CommonB","CommonR"};
	};
	
	class B_Quadbike_01_F //Quad NATO
	{
		driver[] = {"SpecATB","SpecATR","SpecAAB","SpecAAR",
"SpecAssB","SpecAssR","SniperB","SniperR","SpotterB",
"SpotterR"};
		cargo[] = {"CommonB","CommonR"};
	};
	
	class O_LSV_02_armed_F //LSV Mk. II (M134)
	{
		driver[] = {"CommonB","CommonR"};
		gunner[] = {"CommonB","CommonR"};
		commander[] = {"CommonB","CommonR"};
		cargo[] = {"CommonB","CommonR"};
	};
	
	class O_MRAP_02_F //Karatel (IFRIT)
	{
		driver[] = {"CommonB","CommonR"};
		cargo[] = {"CommonB","CommonR"};
	};
	
	class O_Quadbike_01_F //Quad OPFOR
	{
		driver[] = {"SpecATB","SpecATR","SpecAAB","SpecAAR",
"SpecAssB","SpecAssR","SniperB","SniperR","SpotterB",
"SpotterR"};
		cargo[] = {"CommonB","CommonR"};
	};
	
	class ATC_B_LOGI //HEMTT Riparatore
	{
		driver[] = {"EngineerB","EngineerR"};
		cargo[] = {"CommonB","CommonR"};
	};
	
	class ATC_R_LOGI //Typhoon riparatore
	{
		driver[] = {"EngineerB","EngineerR"};
		cargo[] = {"CommonB","CommonR"};
	};
	
	class I_APC_Wheeled_03_cannon_F //Pandur II
	{
		driver[] = {"IFVDriverB", "IFVDriverR"};
		gunner[] = {"IFVDriverB", "IFVDriverR"};
		commander[] = {"CommonB","CommonR"};
		cargo[] = {"CommonB","CommonR"};
	};
	
	class B_APC_Tracked_01_rcws_F //Namer
	{
		driver[] = {"IFVDriverB", "IFVDriverR"};
		gunner[] = {"IFVDriverB", "IFVDriverR"};
		commander[] = {"CommonB","CommonR"};
		cargo[] = {"CommonB","CommonR"};
	};
	
	class B_MBT_01_TUSK_F //Merkava Mk IV LIC
	{
		driver[] = {"CrewmanB","CrewmanR"};
		gunner[] = {"CrewmanB","CrewmanR"};
		commander[] = {"CrewmanB","CrewmanR", "CommanderB", "CommanderR"};
		cargo[] = {"RiflemanB","RiflemanR","GrenadierB","GrenadierR","RiflemanATB","RiflemanATR","SpecATB","SpecATR","SpecAAB","SpecAAR","SpecAssB","SpecAssR","MachinegunnerB","MachinegunnerR","AutoriflemanB","AutoriflemanR","DMB","DMR","SniperB","SniperR","SpotterB","SpotterR","MedicB","MedicR","PilotB","PilotR","CrewmanB","CrewmanR","TeamleaderB","TeamleaderR","CommanderB","CommanderR","SFB","SFR","ParaGrenadierB","ParaGrenadierR","ParaTeamLeaderB","ParaTeamLeaderR","ParaAutoriflemanB","ParaAutoriflemanR","ParaRiflemanB","ParaRiflemanR","SpecExpB","SpecExpR"};
	};
	
	class O_MBT_04_cannon_F //T-14 Armata
	{
		driver[] = {"CrewmanB","CrewmanR"};
		gunner[] = {"CrewmanB","CrewmanR"};
		commander[] = {"CrewmanB","CrewmanR", "CommanderB", "CommanderR"};
	};
	
	class O_APC_Wheeled_02_rcws_v2_F //Otokar ARMA (Marid)
	{
		driver[] = {"IFVDriverB", "IFVDriverR"};
		gunner[] = {"IFVDriverB", "IFVDriverR"};
		cargo[] = {"CommonB","CommonR"};
	};
	
	class O_APC_Tracked_02_cannon_F //BM-2T Stalker (Kamysh)
	{
		driver[] = {"IFVDriverB", "IFVDriverR"};
		gunner[] = {"IFVDriverB", "IFVDriverR"};
		commander[] = {"CommonB","CommonR"};
		cargo[] = {"CommonB","CommonR"};
	};
	
	class O_APC_Tracked_02_AA_F //ZSU-35 Tigris
	{
		driver[] = {"SpecAssB", "SpecAssR"};
		gunner[] = {"SpecAAB", "SpecAAR"};
		commander[] = {"CommonB","CommonR"};

	};
	
	class B_APC_Tracked_01_AA_F //Bardelas
	{
		driver[] = {"SpecAssB", "SpecAssR"};
		gunner[] = {"SpecAAB", "SpecAAR"};
		commander[] = {"CommonB","CommonR"};

	};
	
	class B_Heli_Transport_03_F //CH-47I Chinook
	{
		driver[] = {"PilotB","PilotR"};
		gunner[] = {"CommonB","CommonR"};
		cargo[] = {"CommonB","CommonR"};
	};
	
	class B_Heli_Light_01_F //MH-6 Little Bird
	{
		driver[] = {"PilotB","PilotR"};
		gunner[] = {"PilotB","PilotR"};
		cargo[] = {"CommonB","CommonR"};
	};
	
	class O_Heli_Light_02_unarmed_F //Ka-60 Kasatka (diasrmato)
	{
		driver[] = {"PilotB","PilotR"};
		gunner[] = {"PilotB","PilotR"};
		cargo[] = {"CommonB","CommonR"};
	};
	
	class B_Heli_Transport_01_camo_F //UH-80 Ghost Hawk (mimetico)
	{
		driver[] = {"PilotB","PilotR"};
		copilot[] = {"PilotB","PilotR"};
		gunner[] = {"CommonB","CommonR"};
		cargo[] = {"CommonB","CommonR"};
	};
	
	class O_Heli_Attack_02_dynamicLoadout_F //Mi-48 Kajman
	{
		driver[] = {"PilotB","PilotR"};
		gunner[] = {"PilotB","PilotR"};
		cargo[] = {"RiflemanB","RiflemanR","GrenadierB","GrenadierR","RiflemanATB","RiflemanATR","SpecATB","SpecATR","SpecAAB","SpecAAR","SpecAssB","SpecAssR","MachinegunnerB","MachinegunnerR","AutoriflemanB","AutoriflemanR","DMB","DMR","SniperB","SniperR","SpotterB","SpotterR","MedicB","MedicR","PilotB","PilotR","CrewmanB","CrewmanR","TeamleaderB","TeamleaderR","CommanderB","CommanderR","SFB","SFR","ParaGrenadierB","ParaGrenadierR","ParaTeamLeaderB","ParaTeamLeaderR","ParaAutoriflemanB","ParaAutoriflemanR","ParaRiflemanB","ParaRiflemanR","SpecExpB","SpecExpR"};
	};
	
	class B_Heli_Attack_01_dynamicLoadout_F //RAH-66 Comanche
	{
		driver[] = {"PilotB","PilotR"};
		gunner[] = {"PilotB","PilotR"};
	};
	
	class O_Heli_Transport_04_covered_F //Mi-290 Taru (trasporto)
	{
		driver[] = {"PilotB","PilotR"};
		gunner[] = {"PilotB","PilotR"};
		commander[] ={"PilotB","PilotR"};
		cargo[] = {"CommonB","CommonR"};
	};
	
	class O_Heli_Transport_04_F //Mi-290 Taru
	{
		driver[] = {"PilotB","PilotR"};
		gunner[] = {"PilotB","PilotR"};
		commander[] = {"PilotB","PilotR"};
		cargo[] = {"CommonB","CommonR"};
	};

class B_AFV_Wheeled_01_cannon_F //Rhino (benefit)
	{
		driver[] = {"CrewmanB","CrewmanR"};
		gunner[] = {"CrewmanB","CrewmanR"};
		commander[] = {"CommonB","CommonR"};
			};

class I_LT_01_AT_F //Nyx (benefit)
	{
		driver[] = {"IFVDriverB", "IFVDriverR"};
		gunner[] = {"IFVDriverB", "IFVDriverR"};
			};

class B_LSV_01_AT_F //Polaris dagor Jeep AT (benefit)
	{
		driver[] = {"SpecAssB","SpecAssR"};
		gunner[] = {"SpecATB","SpecATR"};
		cargo[] = {"CommonB","CommonR"};
			};

class O_LSV_02_AT_F //LSV Mk2 Metis  Jeep AT (benefit)
	{
		driver[] = {"SpecAssB","SpecAssR"};
		gunner[] = {"SpecATB","SpecATR"};
		cargo[] = {"CommonB","CommonR"};
			};

	class Steerable_Parachute_F 
	{
	driver[] = {"SFB","SFR","ParaGrenadierB",
"ParaGrenadierR","ParaTeamLeaderB","ParaTeamLeaderR",
"ParaAutoriflemanB","ParaAutoriflemanR","ParaRiflemanB",
"ParaRiflemanR"};
	};

	class B_HMG_01_high_F
	{

		gunner[] = {"CommonB","CommonR"};

	};


      class B_HMG_01_F
	{

		gunner[] = {"CommonB","CommonR"};

	};


        class O_HMG_01_high_F
	{

		gunner[] = {"CommonB","CommonR"};

	};

           class O_HMG_01_F
	{

		gunner[] = {"CommonB","CommonR"};

	};

	class B_Mortar_01_F
	{

		gunner[] = {"CommonB","CommonR"};

	};

     class O_Mortar_01_F
	{

		gunner[] = {"CommonB","CommonR"};

	};


};		