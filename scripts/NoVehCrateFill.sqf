//Crates clear-and-fill-again script by {BDR}*Armilio*© for ATC7
//Heavily edited for ATC8 by {BDR}*Armilio*©
//edited by Nemesi for ATC9
{
	if ((typeOf _x != "Box_FIA_Wps_F") && (typeOf _x != "Box_FIA_Ammo_F")) then {
		clearMagazineCargoGlobal _x; 
		clearWeaponCargoGlobal _x; 
		clearItemCargoGlobal _x; 
		clearbackpackCargoGlobal _x;
	};	
} foreach vehicles;

//BxC additemcargoglobal ["NVGoggles",4]; 
//BxC additemcargoglobal ["NVGoggles_OPFOR",4];
BxC addweaponcargoglobal ["ATC_TITAN_AA_starter",1];
//BxC addmagazinecargoglobal ["Titan_AA",2];
BxC addmagazinecargoglobal ["ATC_MAG_Titan_AA",2];

BxC addmagazinecargoglobal["ATC_APERSTripMine_Wire_Mag", 1];
BxC addmagazinecargoglobal ["ATC_APERSMine_Range_Mag", 2];
BxC addmagazinecargoglobal ["ATC_ATMine_Range_Mag", 1];
BxC addmagazinecargoglobal ["ATC_DemoCharge_Remote_Mag", 1];

BxC addmagazinecargoglobal ["ATC_SatchelCharge_Remote_Mag", 1]; 
BxC addmagazinecargoglobal ["ATC_SLAMDirectionalMine_Wire_Mag", 1]; 
BxC addItemCargoGlobal ["ACE_Clacker", 10];

//BxB additemcargoglobal ["NVGoggles",4];
//BxB additemcargoglobal ["NVGoggles_OPFOR",4];
BxB addweaponcargoglobal ["ATC_TITAN_AA_starter",1];
BxB addmagazinecargoglobal ["ATC_MAG_Titan_AA",2];

//BxB addmagazinecargoglobal ["Titan_AA",2];
BxB addmagazinecargoglobal["ATC_APERSTripMine_Wire_Mag", 1];
BxB addmagazinecargoglobal ["ATC_APERSMine_Range_Mag", 2];
BxB addmagazinecargoglobal ["ATC_ATMine_Range_Mag", 1];
BxB addmagazinecargoglobal ["ATC_DemoCharge_Remote_Mag", 1];

BxB addmagazinecargoglobal ["ATC_SatchelCharge_Remote_Mag", 1]; 
BxB addmagazinecargoglobal ["ATC_SLAMDirectionalMine_Wire_Mag", 1]; 
BxB addItemCargoGlobal ["ACE_Clacker", 10];

//BxA additemcargoglobal ["NVGoggles",4]; 
//BxA additemcargoglobal ["NVGoggles_OPFOR",4];
BxA addweaponcargoglobal ["ATC_TITAN_AA_starter",1];
BxA addmagazinecargoglobal ["ATC_MAG_Titan_AA",2];

//BxA addmagazinecargoglobal ["Titan_AA",2];
BxA addmagazinecargoglobal["ATC_APERSTripMine_Wire_Mag", 1];
BxA addmagazinecargoglobal ["ATC_APERSMine_Range_Mag", 2];
BxA addmagazinecargoglobal ["ATC_ATMine_Range_Mag", 1];
BxA addmagazinecargoglobal ["ATC_DemoCharge_Remote_Mag", 1];

BxA addmagazinecargoglobal ["ATC_SatchelCharge_Remote_Mag", 1]; 
BxA addmagazinecargoglobal ["ATC_SLAMDirectionalMine_Wire_Mag", 1];  
BxA addItemCargoGlobal ["ACE_Clacker", 10];

crateAntennaA addmagazinecargoglobal["ATC_APERSTripMine_Wire_Mag", 1]; 
crateAntennaA addmagazinecargoglobal ["ATC_APERSMine_Range_Mag", 2]; 
crateAntennaA addmagazinecargoglobal ["ATC_ATMine_Range_Mag", 1]; 
crateAntennaA addmagazinecargoglobal ["ATC_DemoCharge_Remote_Mag", 1]; 
crateAntennaA addmagazinecargoglobal ["ATC_SatchelCharge_Remote_Mag", 1]; 
crateAntennaA addmagazinecargoglobal ["ATC_SLAMDirectionalMine_Wire_Mag", 1];  
crateAntennaA addItemCargoGlobal ["ACE_Clacker", 4];

crateAntennaB addmagazinecargoglobal["ATC_APERSTripMine_Wire_Mag", 1]; 
crateAntennaB addmagazinecargoglobal ["ATC_APERSMine_Range_Mag", 2]; 
crateAntennaB addmagazinecargoglobal ["ATC_ATMine_Range_Mag", 1]; 
crateAntennaB addmagazinecargoglobal ["ATC_DemoCharge_Remote_Mag", 1]; 
crateAntennaB addmagazinecargoglobal ["ATC_SatchelCharge_Remote_Mag", 1]; 
crateAntennaB addmagazinecargoglobal ["ATC_SLAMDirectionalMine_Wire_Mag", 1];  
crateAntennaB addItemCargoGlobal ["ACE_Clacker", 4];


/*
if ((ATC_DB_attSide == OPFOR) && (ATC_DB_defSide == BLUFOR)) then {


BxB addbackpackcargoglobal  ["B_AssaultPack_rgr",3];
BxC addbackpackcargoglobal  ["B_AssaultPack_rgr",3];
BxA addbackpackcargoglobal  ["B_AssaultPack_rgr",3];
};


 
	BxB addmagazinecargoglobal ["200Rnd_65x39_cased_Box",2];
	BxB addmagazinecargoglobal ["30Rnd_65x39_caseless_mag",8];
	BxB addmagazinecargoglobal ["1Rnd_HE_Grenade_shell",2];
	
	BxC addmagazinecargoglobal ["200Rnd_65x39_cased_Box",2];
	BxC addmagazinecargoglobal ["30Rnd_65x39_caseless_mag",8];
	BxC addmagazinecargoglobal ["1Rnd_HE_Grenade_shell",2];
	
	BxA addmagazinecargoglobal ["200Rnd_65x39_cased_Box",2];
	BxA addmagazinecargoglobal ["30Rnd_65x39_caseless_mag",8];
	BxA addmagazinecargoglobal ["1Rnd_HE_Grenade_shell",2];
};



if ((ATC_DB_attSide == BLUFOR) && (ATC_DB_defSide == OPFOR)) then {

BxB addbackpackcargoglobal  ["B_AssaultPack_cbr",3];
BxC addbackpackcargoglobal  ["B_AssaultPack_cbr",3];
BxA addbackpackcargoglobal  ["B_AssaultPack_cbr",3];
};	


	BxA addmagazinecargoglobal ["150Rnd_762x54_Box",2];
	BxA addmagazinecargoglobal ["100Rnd_580x42_Mag_F",2];
	BxA addmagazinecargoglobal ["20Rnd_650x39_Cased_Mag_F",4];
	BxA addmagazinecargoglobal ["30Rnd_65x39_caseless_green",4];
	BxA addmagazinecargoglobal ["1Rnd_HE_Grenade_shell",2];
	
	BxB addmagazinecargoglobal ["150Rnd_762x54_Box",2];
	BxB addmagazinecargoglobal ["100Rnd_580x42_Mag_F",2];
	BxB addmagazinecargoglobal ["20Rnd_650x39_Cased_Mag_F",4];
	BxB addmagazinecargoglobal ["30Rnd_65x39_caseless_green",4];
	BxB addmagazinecargoglobal ["1Rnd_HE_Grenade_shell",2];
	
	BxC addmagazinecargoglobal ["150Rnd_762x54_Box",2];
	BxC addmagazinecargoglobal ["100Rnd_580x42_Mag_F",2];
	BxC addmagazinecargoglobal ["20Rnd_650x39_Cased_Mag_F",4];
	BxC addmagazinecargoglobal ["30Rnd_65x39_caseless_green",4];
	BxC addmagazinecargoglobal ["1Rnd_HE_Grenade_shell",2];

};	
BoxSeaB additemCargoGlobal ["U_O_Wetsuit",20];
BoxSeaB additemCargoGlobal ["V_RebreatherIR",20];
BoxSeaA additemCargoGlobal ["U_O_Wetsuit",20];
BoxSeaA additemCargoGlobal ["V_RebreatherIR",20];
*/

clearMagazineCargoGlobal MortarBoxR1;
clearWeaponCargoGlobal MortarBoxR1;
clearItemCargoGlobal MortarBoxR1;
clearbackpackCargoGlobal MortarBoxR1;

clearMagazineCargoGlobal MortarBoxR2;
clearWeaponCargoGlobal MortarBoxR2;
clearItemCargoGlobal MortarBoxR2;
clearbackpackCargoGlobal MortarBoxR2;

clearMagazineCargoGlobal MortarBoxB1;
clearWeaponCargoGlobal MortarBoxB1;
clearItemCargoGlobal MortarBoxB1;
clearbackpackCargoGlobal MortarBoxB1;

clearMagazineCargoGlobal MortarBoxB2;
clearWeaponCargoGlobal MortarBoxB2;
clearItemCargoGlobal MortarBoxB2;
clearbackpackCargoGlobal MortarBoxB2;

	
/*
[BoxammoBheli, 1200] call ace_rearm_fnc_setSupplyCount;
[BoxammoBtank, 500] call ace_rearm_fnc_setSupplyCount;
[truckammoB1, 300] call ace_rearm_fnc_setSupplyCount;
[truckammoB2, 300] call ace_rearm_fnc_setSupplyCount;
[cargoammoB, 300] call ace_rearm_fnc_setSupplyCount;

[BoxammoBtank, "ATC_B_MBT_01_TUSK_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[BoxammoBtank, "B_APC_Tracked_01_rcws_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[BoxammoBtank, "I_APC_Wheeled_03_cannon_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[BoxammoBtank, "B_APC_Tracked_01_AA_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[BoxammoBtank, "16Rnd_105mm_APFSDS_ATC_Red"]  call ace_rearm_fnc_addMagazineToSupply;

[truckammoB1, "ATC_B_MBT_01_TUSK_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[truckammoB1, "B_APC_Tracked_01_rcws_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[truckammoB1, "I_APC_Wheeled_03_cannon_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[truckammoB1, "B_APC_Tracked_01_AA_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[truckammoB1, "16Rnd_105mm_APFSDS_ATC_Red"]  call ace_rearm_fnc_addMagazineToSupply;

[truckammoB2, "ATC_B_MBT_01_TUSK_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[truckammoB2, "B_APC_Tracked_01_rcws_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[truckammoB2, "I_APC_Wheeled_03_cannon_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[truckammoB2, "B_APC_Tracked_01_AA_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[truckammoB2, "16Rnd_105mm_APFSDS_ATC_Red"]  call ace_rearm_fnc_addMagazineToSupply;

[cargoammoB, "ATC_B_MBT_01_TUSK_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[cargoammoB, "B_APC_Tracked_01_rcws_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[cargoammoB, "I_APC_Wheeled_03_cannon_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[cargoammoB, "B_APC_Tracked_01_AA_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;

[cargoammoB2, "ATC_B_MBT_01_TUSK_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[cargoammoB2, "B_APC_Tracked_01_rcws_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[cargoammoB2, "I_APC_Wheeled_03_cannon_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[cargoammoB2, "B_APC_Tracked_01_AA_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;

//[BoxammoBheli1, "ATC_HELI_ATTACK_B"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[BoxammoBheli2, "ATC_HELI_ATTACK_B"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[BoxammoBheli3, "ATC_HELI_ATTACK_B"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[BoxammoBheli4, "ATC_HELI_ATTACK_B"] call ace_rearm_fnc_addVehicleMagazinesToSupply;

//
//
[BoxammoRtank, "O_APC_Tracked_02_AA_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[BoxammoRtank, "O_APC_Tracked_02_cannon_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[BoxammoRtank, "O_APC_Wheeled_02_rcws_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[BoxammoRtank, "O_MBT_02_cannon_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[BoxammoRtank, "24Rnd_125mm_APFSDS_T_Green"] call ace_rearm_fnc_addVehicleMagazinesToSupply;

[truckammoR1, "O_APC_Tracked_02_AA_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[truckammoR1, "O_APC_Tracked_02_cannon_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[truckammoR1, "O_APC_Wheeled_02_rcws_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[truckammoR1, "O_MBT_02_cannon_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[truckammoR1, "24Rnd_125mm_APFSDS_T_Green"] call ace_rearm_fnc_addVehicleMagazinesToSupply;

[truckammoR2, "O_APC_Tracked_02_AA_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[truckammoR2, "O_APC_Tracked_02_cannon_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[truckammoR2, "O_APC_Wheeled_02_rcws_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[truckammoR2, "O_MBT_02_cannon_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[truckammoR2, "24Rnd_125mm_APFSDS_T_Green"] call ace_rearm_fnc_addVehicleMagazinesToSupply;

[cargoammoR, "O_APC_Tracked_02_AA_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[cargoammoR, "O_APC_Tracked_02_cannon_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[cargoammoR, "O_APC_Wheeled_02_rcws_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[cargoammoR, "O_MBT_02_cannon_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;

[cargoammoR2, "O_APC_Tracked_02_AA_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[cargoammoR2, "O_APC_Tracked_02_cannon_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[cargoammoR2, "O_APC_Wheeled_02_rcws_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[cargoammoR2, "O_MBT_02_cannon_F"] call ace_rearm_fnc_addVehicleMagazinesToSupply;

//[BoxammoRheli1, "ATC_HELI_ATTACK_O"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[BoxammoRheli2, "ATC_HELI_ATTACK_O"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[BoxammoRheli3, "ATC_HELI_ATTACK_O"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
[BoxammoRheli4, "ATC_HELI_ATTACK_O"] call ace_rearm_fnc_addVehicleMagazinesToSupply;
*/


MortarBoxR1 addmagazinecargoglobal ["ACE_1Rnd_82mm_Mo_HE",15];
MortarBoxR1 addmagazinecargoglobal ["ACE_1Rnd_82mm_Mo_HE_LaserGuided",1];
MortarBoxR1 addmagazinecargoglobal ["ACE_1Rnd_82mm_Mo_Illum",20];
MortarBoxR1 addmagazinecargoglobal ["ACE_1Rnd_82mm_Mo_Smoke",30];

MortarBoxR2 addmagazinecargoglobal ["ACE_1Rnd_82mm_Mo_HE",15];
MortarBoxR2 addmagazinecargoglobal ["ACE_1Rnd_82mm_Mo_HE_LaserGuided",2];
MortarBoxR2 addmagazinecargoglobal ["ACE_1Rnd_82mm_Mo_Illum",20];
MortarBoxR2 addmagazinecargoglobal ["ACE_1Rnd_82mm_Mo_Smoke",30];

MortarBoxB1 addmagazinecargoglobal ["ACE_1Rnd_82mm_Mo_HE",15];
MortarBoxB1 addmagazinecargoglobal ["ACE_1Rnd_82mm_Mo_HE_LaserGuided",2];
MortarBoxB1 addmagazinecargoglobal ["ACE_1Rnd_82mm_Mo_Illum",20];
MortarBoxB1 addmagazinecargoglobal ["ACE_1Rnd_82mm_Mo_Smoke",30];

MortarBoxB2 addmagazinecargoglobal ["ACE_1Rnd_82mm_Mo_HE",15];
MortarBoxB2 addmagazinecargoglobal ["ACE_1Rnd_82mm_Mo_HE_LaserGuided",2];
MortarBoxB2 addmagazinecargoglobal ["ACE_1Rnd_82mm_Mo_Illum",20];
MortarBoxB2 addmagazinecargoglobal ["ACE_1Rnd_82mm_Mo_Smoke",30];

waituntil {time > 60*110};
	deletevehicle Mortarr1;
	deletevehicle Mortarr2;
	deletevehicle Mortarb1;
	deletevehicle Mortarb2;
/*
EqID1 = this addaction ["<t color='#ff0000'>Change type vtol</t>",  
"vtolname allowdamage false;
if (typeOf vtolname == 'B_T_VTOL_01_vehicle_F') then {  
  if (damage vtolname < 0.2 && vtolname inArea 'mrk_baseA' && ((getPosATL vtolname select 2)< 1)) then {  
   deletevehicle vtolname;  
   vtolname = 'B_T_VTOL_01_infantry_F' createVehicle (getmarkerpos 'vtolmarker');  
   vtolname setpos (getmarkerpos 'vtolmarker'); 
  };  
 }else {  
  if (damage vtolname < 0.2 && vtolname inArea 'mrk_baseA' && ((getPosATL vtolname select 2)< 1)) then {  
   deletevehicle vtolname;  
   vtolname = 'B_T_VTOL_01_vehicle_F' createVehicle (getmarkerpos 'vtolmarker');  
   vtolname setpos (getmarkerpos 'vtolmarker'); 
  };   
 };
 vtolname allowdamage true"  
 ];*/
 
