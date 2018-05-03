/**
* Vehicle restrictions
* this setVariable ["atc_vehicleRestrictionsClasses", ["Commander"], false]
  	[
        string Unit class,
        [
        	string Vehicle class name,
        	array Allowed vehicle role
        ]
    ]
* string Vehicle class name - Use Debug console to get it (https://community.bistudio.com/wiki/Mission_Editor:_Debug_Console_(Arma_3)), sit in vehicle and type "typeOf vehicle player" in one of Watch field
* array Allowed vehicle role - ex. [["driver"], ["turret"], ["cargo"]];
	Use Debug console to get it, sit in vehicle and type "assignedVehicleRole vehicle player" in one of Watch field;
	- ["driver"] - Allowed to sit on the driver's seat;
	- ["turret"] - Allowed to sit on any gunner's and commaner's seats,
		or use ["turret", [[0], [1]]] if you want restrict gunner's seats,
		ex. to allow sit on commader seat type this ["turret", [[0, 0]]];
	- ["cargo"] - Allowed to sit on any passenger's seats		
		or use ["cargo", [[0], [1]]] if you want restrict gunner's seats;

*/

[
	[
		"Soldier",
		[        
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["ATC_MRAP_GMG", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["driver"],["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["ATC_IFRIT_GMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["driver"],["Cargo"]]],
            
            //Truck
            ["B_Truck_01_transport_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_covered_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_fuel_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_ammo_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_medical_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_transport_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_covered_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_fuel_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_ammo_F", [["driver"], ["Cargo"]]],
            ["O_Truck_03_medical_F", [["driver"], ["Cargo"]]],
            
            //Repair
            ["B_Truck_01_Repair_F", [["Cargo"]]],
            ["O_Truck_03_repair_F", [["Cargo"]]],
            
            //Static
			["B_HMG_01_high_F", [["Turret"]]],
            ["B_HMG_01_F", [["Turret"]]],
            ["O_HMG_01_high_F", [["Turret"]]],
            ["O_HMG_01_F", [["Turret"]]],
            
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["Cargo"]]],

            //tank
            ["B_APC_Wheeled_01_cannon_F", [["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["turret"], ["cargo"]]],
            ["B_MBT_01_TUSK_F", [["cargo"]]],
            //["B_APC_Tracked_01_CRV_F"], [["turret"], ["cargo"]]],
            ["BWA3_Puma_Fleck", [["turret"], ["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["turret"], ["cargo"]]],
            
            //heli
            ["B_Heli_Transport_01_camo_F", [["turret"], ["cargo"]]],
            ["B_Heli_Transport_03_F", [["turret"], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["cargo"]]],
            ["O_Heli_Transport_04_covered_F", [["cargo"]]],
            ["O_Heli_Transport_04_F", [["cargo"]]]
		]
	],
	
	[
		"Tank",
		[
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["ATC_MRAP_GMG", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["driver"],["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["ATC_IFRIT_GMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["driver"],["Cargo"]]],
            
            //Truck
            ["B_Truck_01_transport_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_covered_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_fuel_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_ammo_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_medical_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_transport_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_covered_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_fuel_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_ammo_F", [["driver"], ["Cargo"]]],
            ["O_Truck_03_medical_F", [["driver"], ["Cargo"]]],
            
            //Repair
            ["B_Truck_01_Repair_F", [["Cargo"]]],
            ["O_Truck_03_repair_F", [["Cargo"]]],
            
            //Static
			["B_HMG_01_high_F", [["Turret"]]],
            ["B_HMG_01_F", [["Turret"]]],
            ["O_HMG_01_high_F", [["Turret"]]],
            ["O_HMG_01_F", [["Turret"]]],
            
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["Cargo"]]],
            
            //tank
            ["B_APC_Wheeled_01_cannon_F", [["driver"], ["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["driver"], ["turret"], ["cargo"]]],
            //["B_APC_Tracked_01_CRV_F"], [["driver"], ["turret"], ["cargo"]]],
            ["B_MBT_01_TUSK_F", [["driver"], ["cargo"]]],
            ["BWA3_Puma_Fleck", [["driver"], ["turret"], ["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["driver"], ["turret"], ["cargo"]]],
            ["O_MBT_02_cannon_F", [["driver"], ["cargo"]]],
            
            //heli
            ["B_Heli_Transport_01_camo_F", [["turret"], ["cargo"]]],
            ["B_Heli_Transport_03_F", [["turret"], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["cargo"]]],
            ["O_Heli_Transport_04_covered_F", [["cargo"]]],
            ["O_Heli_Transport_04_F", [["cargo"]]]
		]
	],
	
    [
		"TankGunner",
		[
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["ATC_MRAP_GMG", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["driver"],["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["ATC_IFRIT_GMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["driver"],["Cargo"]]],
            
            //Truck
            ["B_Truck_01_transport_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_covered_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_fuel_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_ammo_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_medical_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_transport_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_covered_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_fuel_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_ammo_F", [["driver"], ["Cargo"]]],
            ["O_Truck_03_medical_F", [["driver"], ["Cargo"]]],
            
            //Repair
            ["B_Truck_01_Repair_F", [["Cargo"]]],
            ["O_Truck_03_repair_F", [["Cargo"]]],
            
            //Static
			["B_HMG_01_high_F", [["Turret"]]],
            ["B_HMG_01_F", [["Turret"]]],
            ["O_HMG_01_high_F", [["Turret"]]],
            ["O_HMG_01_F", [["Turret"]]],
            
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["Cargo"]]],
            
            //tank
            ["B_APC_Wheeled_01_cannon_F", [["driver"], ["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["driver"], ["turret"], ["cargo"]]],
            //["B_APC_Tracked_01_CRV_F"], [["driver"], ["turret"], ["cargo"]]],
            ["B_MBT_01_TUSK_F", [["driver"], ["turret", [[0]]], ["cargo"]]],
            ["BWA3_Puma_Fleck", [["driver"], ["turret"], ["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["driver"], ["turret"], ["cargo"]]],
            ["O_MBT_02_cannon_F", [["driver"], ["turret", [[0]]], ["cargo"]]],
            
            //heli
            ["B_Heli_Transport_01_camo_F", [["turret"], ["cargo"]]],
            ["B_Heli_Transport_03_F", [["turret"], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["cargo"]]],
            ["O_Heli_Transport_04_covered_F", [["cargo"]]],
            ["O_Heli_Transport_04_F", [["cargo"]]]
		]
	],
    
    [
		"TankCommander",
		[
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["ATC_MRAP_GMG", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["driver"],["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["ATC_IFRIT_GMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["driver"],["Cargo"]]],
            
            //Truck
            ["B_Truck_01_transport_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_covered_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_fuel_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_ammo_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_medical_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_transport_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_covered_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_fuel_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_ammo_F", [["driver"], ["Cargo"]]],
            ["O_Truck_03_medical_F", [["driver"], ["Cargo"]]],
            
            //Repair
            ["B_Truck_01_Repair_F", [["Cargo"]]],
            ["O_Truck_03_repair_F", [["Cargo"]]],
            
            //Static
			["B_HMG_01_high_F", [["Turret"]]],
            ["B_HMG_01_F", [["Turret"]]],
            ["O_HMG_01_high_F", [["Turret"]]],
            ["O_HMG_01_F", [["Turret"]]],
            
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["Cargo"]]],
            
            //tank
            ["B_APC_Wheeled_01_cannon_F", [["driver"], ["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["driver"], ["turret"], ["cargo"]]],
            //["B_APC_Tracked_01_CRV_F"], [["driver"], ["turret"], ["cargo"]]],
            ["B_MBT_01_TUSK_F", [["driver"], ["turret", [[0, 0]]], ["cargo"]]],
            ["BWA3_Puma_Fleck", [["driver"], ["turret"], ["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["driver"], ["turret"], ["cargo"]]],
            ["O_MBT_02_cannon_F", [["driver"], ["turret", [[0, 0]]], ["cargo"]]],
            
            //heli
            ["B_Heli_Transport_01_camo_F", [["turret"], ["cargo"]]],
            ["B_Heli_Transport_03_F", [["turret"], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["cargo"]]],
            ["O_Heli_Transport_04_covered_F", [["cargo"]]],
            ["O_Heli_Transport_04_F", [["cargo"]]]
		]
	],
	[
		"Engineer",
		[
        
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["ATC_MRAP_GMG", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["driver"],["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["ATC_IFRIT_GMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["driver"],["Cargo"]]],
            
            //Truck
            ["B_Truck_01_transport_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_covered_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_fuel_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_ammo_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_medical_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_transport_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_covered_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_fuel_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_ammo_F", [["driver"], ["Cargo"]]],
            ["O_Truck_03_medical_F", [["driver"], ["Cargo"]]],
            
            //Repair
            ["B_Truck_01_Repair_F", [["driver"],["Cargo"]]],
            ["O_Truck_03_repair_F", [["driver"],["Cargo"]]],
            
            //Static
			["B_HMG_01_high_F", [["Turret"]]],
            ["B_HMG_01_F", [["Turret"]]],
            ["O_HMG_01_high_F", [["Turret"]]],
            ["O_HMG_01_F", [["Turret"]]],
            
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["Cargo"]]],
            
            //tank
            ["B_APC_Wheeled_01_cannon_F", [["driver"], ["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["driver"], ["turret"], ["cargo"]]],
            ["B_MBT_01_TUSK_F", [["cargo"]]],
            //["B_APC_Tracked_01_CRV_F"], [["driver"], ["turret"], ["cargo"]]],
            ["BWA3_Puma_Fleck", [["driver"], ["turret"], ["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["driver"], ["turret"], ["cargo"]]],
            
            //heli
            ["B_Heli_Transport_01_camo_F", [["turret"], ["cargo"]]],
            ["B_Heli_Transport_03_F", [["turret"], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["cargo"]]],
            ["O_Heli_Transport_04_covered_F", [["cargo"]]],
            ["O_Heli_Transport_04_F", [["cargo"]]]
		]
	],	

	[
		"Pilot",
		[
            
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["ATC_MRAP_GMG", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["driver"],["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["ATC_IFRIT_GMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["driver"],["Cargo"]]],
            
            //Truck
            ["B_Truck_01_transport_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_covered_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_fuel_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_ammo_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_medical_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_transport_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_covered_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_fuel_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_ammo_F", [["driver"], ["Cargo"]]],
            ["O_Truck_03_medical_F", [["driver"], ["Cargo"]]],
            
            //Repair
            ["B_Truck_01_Repair_F", [["Cargo"]]],
            ["O_Truck_03_repair_F", [["Cargo"]]],
            
            //Static
			["B_HMG_01_high_F", [["Turret"]]],
            ["B_HMG_01_F", [["Turret"]]],
            ["O_HMG_01_high_F", [["Turret"]]],
            ["O_HMG_01_F", [["Turret"]]],
            
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["Cargo"]]],
            
            //tank
            ["B_APC_Wheeled_01_cannon_F", [["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["turret"], ["cargo"]]],
            ["B_MBT_01_TUSK_F", [["cargo"]]],
            //["B_APC_Tracked_01_CRV_F"], [["turret"], ["cargo"]]],
            ["BWA3_Puma_Fleck", [["turret"], ["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["turret"], ["cargo"]]],
            
            //heli
            ["B_Heli_Transport_01_camo_F", [["driver"], ["turret"], ["cargo"]]],
            ["B_Heli_Transport_03_F", [["driver"], ["turret"], ["cargo"]]],
            ["ATC_HELI_ATTACK_B", [["driver"], ["turret"], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["driver"], ["turret"], ["cargo"]]],
            ["O_Heli_Transport_04_covered_F", [["driver"], ["turret"], ["cargo"]]],
            ["ATC_HELI_ATTACK_O", [["driver"], ["turret"], ["cargo"]]],
            ["O_Heli_Transport_04_F", [["driver"], ["turret"], ["cargo"]]]
		]
	],
    [
		"SpecialForce",
		[        
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["ATC_MRAP_GMG", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["driver"],["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["ATC_IFRIT_GMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["driver"],["Cargo"]]],
            
            //Truck
            ["B_Truck_01_transport_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_covered_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_fuel_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_ammo_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_medical_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_transport_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_covered_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_fuel_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_ammo_F", [["driver"], ["Cargo"]]],
            ["O_Truck_03_medical_F", [["driver"], ["Cargo"]]],
            
            //Repair
            ["B_Truck_01_Repair_F", [["Cargo"]]],
            ["O_Truck_03_repair_F", [["Cargo"]]],
            
            //Static
			["B_HMG_01_high_F", [["Turret"]]],
            ["B_HMG_01_F", [["Turret"]]],
            ["O_HMG_01_high_F", [["Turret"]]],
            ["O_HMG_01_F", [["Turret"]]],
            
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_SDV_01_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["O_SDV_01_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["driver"], ["Turret"], ["Cargo"]]],

            //tank
            ["B_APC_Wheeled_01_cannon_F", [["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["turret"], ["cargo"]]],
            ["B_MBT_01_TUSK_F", [["cargo"]]],
            //["B_APC_Tracked_01_CRV_F"], [["turret"], ["cargo"]]],
            ["BWA3_Puma_Fleck", [["turret"], ["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["turret"], ["cargo"]]],
            
            //heli
            ["B_Heli_Transport_01_camo_F", [["turret"], ["cargo"]]],
            ["B_Heli_Transport_03_F", [["turret"], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["cargo"]]],
            ["O_Heli_Transport_04_covered_F", [["cargo"]]],
            ["O_Heli_Transport_04_F", [["cargo"]]]
		]
	],
    
    [
		"Mortar",
		[        
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["ATC_MRAP_GMG", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["driver"],["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["ATC_IFRIT_GMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["driver"],["Cargo"]]],
            
            //Truck
            ["B_Truck_01_transport_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_covered_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_fuel_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_ammo_F", [["driver"], ["Cargo"]]],
			["B_Truck_01_medical_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_transport_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_covered_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_fuel_F", [["driver"], ["Cargo"]]],
			["O_Truck_03_ammo_F", [["driver"], ["Cargo"]]],
            ["O_Truck_03_medical_F", [["driver"], ["Cargo"]]],
            
            //Repair
            ["B_Truck_01_Repair_F", [["Cargo"]]],
            ["O_Truck_03_repair_F", [["Cargo"]]],
            
            //Static
			["B_HMG_01_high_F", [["Turret"]]],
            ["B_HMG_01_F", [["Turret"]]],
            ["O_HMG_01_high_F", [["Turret"]]],
            ["O_HMG_01_F", [["Turret"]]],
            
            //Mortar
            ["B_Mortar_01_F", [["Turret"]]],
            ["O_Mortar_01_F", [["Turret"]]],
            
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["Cargo"]]],

            //tank
            ["B_APC_Wheeled_01_cannon_F", [["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["turret"], ["cargo"]]],
            ["B_MBT_01_TUSK_F", [["cargo"]]],
            //["B_APC_Tracked_01_CRV_F"], [["turret"], ["cargo"]]],
            ["BWA3_Puma_Fleck", [["turret"], ["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["turret"], ["cargo"]]],
            
            //heli
            ["B_Heli_Transport_01_camo_F", [["turret"], ["cargo"]]],
            ["B_Heli_Transport_03_F", [["turret"], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["cargo"]]],
            ["O_Heli_Transport_04_covered_F", [["cargo"]]],
            ["O_Heli_Transport_04_F", [["cargo"]]]
		]
	]
]