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
			["B_T_LSV_01_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_LSV_02_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["Cargo"]]],
            ["B_UGV_01_rcws_F",[["Cargo"]]],
			["O_UGV_01_rcws_F",[["Cargo"]]],
			
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
			["B_static_AA_F", [["Turret"]]],
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
		    ["O_Lifeboat", [["driver"],["Cargo"]]],
		    ["B_Lifeboat", [["driver"],["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["driver"], ["Turret"], ["Cargo"]]],
			["I_C_Boat_Transport_02_F", [["driver"], ["Turret"], ["Cargo"]]],
            //tank
            ["I_APC_Wheeled_03_cannon_F", [["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["turret"], ["cargo"]]],
            ["ATC_B_MBT_01_TUSK_F", [["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["turret"], ["cargo"]]],
            ["O_APC_Tracked_02_cannon_F", [["turret"], ["cargo"]]],
            ["O_APC_Tracked_02_AA_F",[["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Tracked_01_AA_F",[["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Wheeled_01_cannon_F", [["turret"], ["cargo"]]],
		    //parachute
		    //["Steerable_Parachute_F", [["driver"]]],

            //heli
            ["B_Heli_Transport_03_F", [["cargo"],["turret"]]],
            ["ATC_HELI_LIGHT_B", [["cargo"]]],
            ["B_Heli_Transport_01_camo_F", [["turret", [[1], [2]]], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["cargo"]]],
            ["ATC_HELI_LIGHT_2_O", [["cargo"]]],
			["ATC_HELI_ATTACK_O", [["cargo"]]],
            ["O_Heli_Transport_04_covered_F", [["cargo"],["Turret",[1]]]],
			["B_T_VTOL_01_vehicle_F", [["cargo"]]],
			["B_T_VTOL_01_infantry_F", [["cargo"]]]
		]
	],
	[
		"Commander",
		[        
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["B_T_LSV_01_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_LSV_02_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["Cargo"]]],
            ["B_UGV_01_rcws_F",[["Cargo"]]],
			["O_UGV_01_rcws_F",[["Cargo"]]],
			
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
			["B_static_AA_F", [["Turret"]]],
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
		    ["O_Lifeboat", [["driver"],["Cargo"]]],
		    ["B_Lifeboat", [["driver"],["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["driver"], ["Turret"], ["Cargo"]]],
			["I_C_Boat_Transport_02_F", [["driver"], ["Turret"], ["Cargo"]]],
            //tank
            ["I_APC_Wheeled_03_cannon_F", [["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["turret"], ["cargo"]]],
            ["ATC_B_MBT_01_TUSK_F", [["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["turret"], ["cargo"]]],
            ["O_APC_Tracked_02_cannon_F", [["turret"], ["cargo"]]],
            ["O_APC_Tracked_02_AA_F",[["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Tracked_01_AA_F",[["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Wheeled_01_cannon_F", [["turret"], ["cargo"]]],
			["ATC_B_MBT_01_TUSK_F", [["turret", [[0, 0]]], ["cargo"]]],
            ["O_MBT_02_cannon_F", [["turret", [[0, 0]]], ["cargo"]]],
		    //parachute
		    //["Steerable_Parachute_F", [["driver"]]],

            //heli
            ["B_Heli_Transport_03_F", [["cargo"],["turret"]]],
            ["ATC_HELI_LIGHT_B", [["cargo"]]],
            ["B_Heli_Transport_01_camo_F", [["turret", [[1], [2]]], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["cargo"]]],
            ["ATC_HELI_LIGHT_2_O", [["cargo"]]],
			["ATC_HELI_ATTACK_O", [["cargo"]]],
            ["O_Heli_Transport_04_covered_F", [["cargo"],["Turret",[1]]]],
			["B_T_VTOL_01_vehicle_F", [["cargo"]]],
			["B_T_VTOL_01_infantry_F", [["cargo"]]]
 
		]
	],
	[
		"Para",
		[        
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["B_T_LSV_01_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_LSV_02_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["Cargo"]]],
            ["B_UGV_01_rcws_F",[["Cargo"]]],
			["O_UGV_01_rcws_F",[["Cargo"]]],
			
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
			["B_static_AA_F", [["Turret"]]],
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
		    ["O_Lifeboat", [["driver"],["Cargo"]]],
		    ["B_Lifeboat", [["driver"],["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["driver"], ["Turret"], ["Cargo"]]],
			["I_C_Boat_Transport_02_F", [["driver"], ["Turret"], ["Cargo"]]],
            //tank
            ["I_APC_Wheeled_03_cannon_F", [["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["turret"], ["cargo"]]],
            ["ATC_B_MBT_01_TUSK_F", [["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["turret"], ["cargo"]]],
            ["O_APC_Tracked_02_cannon_F", [["turret"], ["cargo"]]],
            ["O_APC_Tracked_02_AA_F",[["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Tracked_01_AA_F",[["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Wheeled_01_cannon_F", [["turret"], ["cargo"]]],
		    //parachute
		    ["Steerable_Parachute_F", [["driver"]]],

            //heli
            ["B_Heli_Transport_03_F", [["cargo"],["turret"]]],
            ["ATC_HELI_LIGHT_B", [["cargo"]]],
            ["B_Heli_Transport_01_camo_F", [["turret", [[1], [2]]], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["cargo"]]],
            ["ATC_HELI_LIGHT_2_O", [["cargo"]]],
			["ATC_HELI_ATTACK_O", [["cargo"]]],
            ["O_Heli_Transport_04_covered_F", [["cargo"],["Turret",[1]]]],
			["B_T_VTOL_01_vehicle_F", [["cargo"]]],
			["B_T_VTOL_01_infantry_F", [["cargo"]]]
		]
	],
	[
		"Tank",
		[
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["B_T_LSV_01_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_LSV_02_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["Cargo"]]],
            ["B_UGV_01_rcws_F",[["Cargo"]]],
			["O_UGV_01_rcws_F",[["Cargo"]]],
			
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
            ["B_static_AA_F", [["Turret"]]],
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
		    ["O_Lifeboat", [["driver"],["Cargo"]]],
		    ["B_Lifeboat", [["driver"],["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["driver"], ["Turret"], ["Cargo"]]],
			["I_C_Boat_Transport_02_F", [["driver"], ["Turret"], ["Cargo"]]],            
            //tank
            ["I_APC_Wheeled_03_cannon_F", [["driver"], ["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["driver"], ["turret"], ["cargo"]]],
            ["ATC_B_MBT_01_TUSK_F", [["driver"], ["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["driver"], ["turret"], ["cargo"]]],
            ["O_MBT_02_cannon_F", [["driver"], ["cargo"]]],
            ["O_APC_Tracked_02_cannon_F", [["driver"], ["turret"], ["cargo"]]],
            ["O_APC_Tracked_02_AA_F",[["driver"],["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Tracked_01_AA_F",[["driver"],["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Wheeled_01_cannon_F", [["driver"],["turret"], ["cargo"]]],
		    //parachute
		    //["Steerable_Parachute_F", [["driver"]]],

            //heli
            ["B_Heli_Transport_03_F", [["cargo"],["turret"]]],
            ["ATC_HELI_LIGHT_B", [["cargo"]]],
            ["B_Heli_Transport_01_camo_F", [["turret", [[1], [2]]], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["cargo"]]],
            ["ATC_HELI_LIGHT_2_O", [["cargo"]]],
			["ATC_HELI_ATTACK_O", [["cargo"]]],
            ["O_Heli_Transport_04_covered_F", [["cargo"],["Turret",[1]]]],
			["B_T_VTOL_01_vehicle_F", [["cargo"]]],
			["B_T_VTOL_01_infantry_F", [["cargo"]]]
		]
	],
	
    [
		"TankGunner",
		[
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["B_T_LSV_01_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_LSV_02_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["Cargo"]]],
            ["B_UGV_01_rcws_F",[["Cargo"]]],
			["O_UGV_01_rcws_F",[["Cargo"]]],            
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
            ["B_static_AA_F", [["Turret"]]],
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
		    ["O_Lifeboat", [["driver"],["Cargo"]]],
		    ["B_Lifeboat", [["driver"],["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["driver"], ["Turret"], ["Cargo"]]],
			["I_C_Boat_Transport_02_F", [["driver"], ["Turret"], ["Cargo"]]],            
            //tank
            ["I_APC_Wheeled_03_cannon_F", [["driver"], ["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["driver"], ["turret"], ["cargo"]]],
            ["ATC_B_MBT_01_TUSK_F", [["driver"], ["turret", [[0]]], ["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["driver"], ["turret"], ["cargo"]]],
            ["O_MBT_02_cannon_F", [["driver"], ["turret", [[0]]], ["cargo"]]],
            ["O_APC_Tracked_02_cannon_F", [["driver"], ["turret"], ["cargo"]]],
            ["O_APC_Tracked_02_AA_F",[["driver"],["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Tracked_01_AA_F",[["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Wheeled_01_cannon_F", [["driver"],["turret"], ["cargo"]]],
		   //parachute
		   //["Steerable_Parachute_F", [["driver"]]],

            //heli
            ["B_Heli_Transport_03_F", [["cargo"],["turret"]]],
            ["ATC_HELI_LIGHT_B", [["cargo"]]],
            ["B_Heli_Transport_01_camo_F", [["turret", [[1], [2]]], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["cargo"]]],
            ["ATC_HELI_LIGHT_2_O", [["cargo"]]],
			["ATC_HELI_ATTACK_O", [["cargo"]]],
			["B_T_VTOL_01_vehicle_F", [["cargo"]]],
			["B_T_VTOL_01_infantry_F", [["cargo"]]],
            ["O_Heli_Transport_04_covered_F", [["cargo"],["Turret",[1]]]]
		]
	],
    
    [
		"TankCommander",
		[
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["B_T_LSV_01_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_LSV_02_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["Cargo"]]],
            ["B_UGV_01_rcws_F",[["Cargo"]]],
			["O_UGV_01_rcws_F",[["Cargo"]]],            
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
            ["B_static_AA_F", [["Turret"]]],
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
		    ["O_Lifeboat", [["driver"],["Cargo"]]],
		    ["B_Lifeboat", [["driver"],["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["driver"], ["Turret"], ["Cargo"]]],
			["I_C_Boat_Transport_02_F", [["driver"], ["Turret"], ["Cargo"]]],            
            //tank
           ["I_APC_Wheeled_03_cannon_F", [["driver"], ["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["driver"], ["turret"], ["cargo"]]],
            ["ATC_B_MBT_01_TUSK_F", [["driver"], ["turret", [[0, 0]]], ["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["driver"], ["turret"], ["cargo"]]],
            ["O_MBT_02_cannon_F", [["driver"], ["turret", [[0, 0]]], ["cargo"]]],
            ["O_APC_Tracked_02_cannon_F", [["driver"], ["turret"], ["cargo"]]],
            ["O_APC_Tracked_02_AA_F",[["driver"],["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Tracked_01_AA_F",[["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Wheeled_01_cannon_F", [["driver"],["turret"], ["cargo"]]],
		   //parachute
		   //["Steerable_Parachute_F", [["driver"]]],

            //heli
            ["B_Heli_Transport_03_F", [["cargo"],["turret"]]],
            ["ATC_HELI_LIGHT_B", [["cargo"]]],
            ["B_Heli_Transport_01_camo_F", [["turret", [[1], [2]]], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["cargo"]]],
            ["ATC_HELI_LIGHT_2_O", [["cargo"]]],
			["ATC_HELI_ATTACK_O", [["cargo"]]],
			["B_T_VTOL_01_vehicle_F", [["cargo"]]],
			["B_T_VTOL_01_infantry_F", [["cargo"]]],		
            ["O_Heli_Transport_04_covered_F", [["cargo"],["Turret",[1]]]]
		]
	],
	
	[
		"Engineer",
		[
        
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["B_T_LSV_01_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_LSV_02_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["Cargo"]]],
            ["B_UGV_01_rcws_F",[["Cargo"]]],
			["O_UGV_01_rcws_F",[["Cargo"]]],            
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
            ["B_static_AA_F", [["Turret"]]],
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
		    ["O_Lifeboat", [["driver"],["Cargo"]]],
		    ["B_Lifeboat", [["driver"],["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["driver"], ["Turret"], ["Cargo"]]],
 			["I_C_Boat_Transport_02_F", [["driver"], ["Turret"], ["Cargo"]]],           
            //tank
            ["I_APC_Wheeled_03_cannon_F", [["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["turret"], ["cargo"]]],
            //["ATC_B_MBT_01_TUSK_F", [["cargo"]]],
            ["O_APC_Tracked_02_cannon_F", [["turret"], ["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["turret"], ["cargo"]]],
            ["O_APC_Tracked_02_AA_F",[["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Tracked_01_AA_F",[["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Wheeled_01_cannon_F", [["turret"], ["cargo"]]],
		    //parachute
		    //["Steerable_Parachute_F", [["driver"]]],
	
            //heli
            ["B_Heli_Transport_03_F", [["cargo"]]],
            ["ATC_HELI_LIGHT_B", [["cargo"]]],
            ["B_Heli_Transport_01_camo_F", [["turret", [[1], [2]]], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["cargo"]]],
            ["ATC_HELI_LIGHT_2_O", [["cargo"]]],
			["ATC_HELI_ATTACK_O", [["cargo"]]],
			["B_T_VTOL_01_vehicle_F", [["cargo"]]],
			["B_T_VTOL_01_infantry_F", [["cargo"]]],			
            ["O_Heli_Transport_04_covered_F", [["cargo"],["Turret",[1]]]]
		]
	],	
	[
		"Driver_IFV",
		[
        
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["B_T_LSV_01_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_LSV_02_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["Cargo"]]],
              ["B_UGV_01_rcws_F",[["Cargo"]]],
			["O_UGV_01_rcws_F",[["Cargo"]]],          
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
            ["B_static_AA_F", [["Turret"]]],
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
		    ["O_Lifeboat", [["driver"],["Cargo"]]],
		    ["B_Lifeboat", [["driver"],["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["driver"], ["Turret"], ["Cargo"]]],
 			["I_C_Boat_Transport_02_F", [["driver"], ["Turret"], ["Cargo"]]],           
            //tank
            ["I_APC_Wheeled_03_cannon_F", [["driver"], ["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["driver"], ["turret"], ["cargo"]]],
            ["ATC_B_MBT_01_TUSK_F", [["cargo"]]],
            ["O_APC_Tracked_02_cannon_F", [["driver"], ["turret"], ["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["driver"], ["turret"], ["cargo"]]],
             ["O_APC_Tracked_02_AA_F",[["driver"],["turret", [[0, 0]]], ["cargo"]]],
			 ["B_APC_Tracked_01_AA_F",[["driver"],["turret", [[0, 0]]], ["cargo"]]],
			 ["B_APC_Wheeled_01_cannon_F", [["driver"],["turret"], ["cargo"]]],
		    //parachute
		    //["Steerable_Parachute_F", [["driver"]]],
	
            //heli
            ["B_Heli_Transport_03_F", [["cargo"],["turret"]]],
            ["ATC_HELI_LIGHT_B", [["cargo"]]],
            ["B_Heli_Transport_01_camo_F", [["turret", [[1], [2]]], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["cargo"]]],
            ["ATC_HELI_LIGHT_2_O", [["cargo"]]],
			["ATC_HELI_ATTACK_O", [["cargo"]]],
			["B_T_VTOL_01_vehicle_F", [["cargo"]]],
			["B_T_VTOL_01_infantry_F", [["cargo"]]],			
            ["O_Heli_Transport_04_covered_F", [["cargo"],["Turret",[1]]]]
		]
	],
	[
		"Pilot",
		[
            
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["B_T_LSV_01_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_LSV_02_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["Cargo"]]],
            ["B_UGV_01_rcws_F",[["Cargo"]]],
			["O_UGV_01_rcws_F",[["Cargo"]]],            
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
            ["B_static_AA_F", [["Turret"]]],
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
		    ["O_Lifeboat", [["driver"],["Cargo"]]],
		    ["B_Lifeboat", [["driver"],["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["driver"], ["Turret"], ["Cargo"]]],
 			["I_C_Boat_Transport_02_F", [["driver"], ["Turret"], ["Cargo"]]],           
            //tank
            ["I_APC_Wheeled_03_cannon_F", [["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["turret"], ["cargo"]]],
            ["ATC_B_MBT_01_TUSK_F", [["cargo"]]],
            ["O_APC_Tracked_02_cannon_F", [["turret"], ["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["turret"], ["cargo"]]],
            ["O_APC_Tracked_02_AA_F",[["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Tracked_01_AA_F",[["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Wheeled_01_cannon_F", [["turret"], ["cargo"]]],
		    //parachute
		    ["Steerable_Parachute_F", [["driver"]]],

            //heli
            ["B_Heli_Transport_03_F", [["driver"], ["turret"], ["cargo"]]],
            ["ATC_HELI_LIGHT_B", [["driver"], ["cargo"]]],
            ["B_Heli_Transport_01_camo_F", [["driver"], ["turret"], ["cargo"]]],
            ["ATC_HELI_ATTACK_B", [["driver"], ["turret"], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["driver"], ["turret"], ["cargo"]]],
            ["ATC_HELI_LIGHT_2_O", [["driver"], ["turret"], ["cargo"]]],
            ["O_Heli_Transport_04_covered_F", [["driver"], ["turret"], ["cargo"]]],
            ["O_Heli_Transport_04_F", [["driver"], ["turret"], ["cargo"]]],
			["B_T_VTOL_01_vehicle_F", [["driver"], ["turret"],["cargo"]]],
			["B_T_VTOL_01_infantry_F", [["driver"], ["turret"],["cargo"]]],		
            ["ATC_HELI_ATTACK_O", [["driver"], ["turret"], ["cargo"]]]
		]
	],
    [
		"SpecialForce",
		[        
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Cargo"]]],
			["B_T_LSV_01_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["driver"],["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_LSV_02_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["driver"],["Cargo"]]],
            ["B_UGV_01_rcws_F",[["Cargo"]]],
			["O_UGV_01_rcws_F",[["Cargo"]]],
			["ACE_SpottingScopeObject",[["driver"], ["Turret"], ["Cargo"]]],	
			
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
            ["B_static_AA_F", [["Turret"]]],
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
		    ["O_Lifeboat", [["driver"],["Cargo"]]],
		    ["B_Lifeboat", [["driver"],["Cargo"]]],
            ["B_SDV_01_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["O_SDV_01_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["driver"], ["Turret"], ["Cargo"]]],
			["I_C_Boat_Transport_02_F", [["driver"], ["Turret"], ["Cargo"]]],
            //tank
            ["I_APC_Wheeled_03_cannon_F", [["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["turret"], ["cargo"]]],
            ["ATC_B_MBT_01_TUSK_F", [["cargo"]]],
            ["O_APC_Tracked_02_cannon_F", [["turret"], ["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["turret"], ["cargo"]]],
            ["O_APC_Tracked_02_AA_F",[["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Tracked_01_AA_F",[["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Wheeled_01_cannon_F", [["turret"], ["cargo"]]],
		   //parachute
		   ["Steerable_Parachute_F", [["driver"]]],

            //heli
            ["B_Heli_Transport_03_F", [["cargo"],["turret"]]],
            ["ATC_HELI_LIGHT_B", [["cargo"]]],
            ["B_Heli_Transport_01_camo_F", [["turret", [[1], [2]]], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["cargo"]]],
            ["ATC_HELI_LIGHT_2_O", [["cargo"]]],
			["ATC_HELI_ATTACK_O", [["cargo"]]],
			["B_T_VTOL_01_vehicle_F", [["cargo"]]],
			["B_T_VTOL_01_infantry_F", [["cargo"]]],
            ["O_Heli_Transport_04_covered_F", [["cargo"],["Turret",[1]]]]
		]
	],
    [
		"Antitank",
		[        
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Cargo"]]],
			["B_T_LSV_01_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["driver"],["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_LSV_02_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["driver"],["Cargo"]]],
            ["B_UGV_01_rcws_F",[["Cargo"]]],
			["O_UGV_01_rcws_F",[["Cargo"]]], 
			["ACE_SpottingScopeObject",[["driver"], ["Turret"], ["Cargo"]]],	
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
            ["B_static_AA_F", [["Turret"]]],
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
		    ["O_Lifeboat", [["driver"],["Cargo"]]],
		    ["B_Lifeboat", [["driver"],["Cargo"]]],
            ["B_SDV_01_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["O_SDV_01_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["driver"], ["Turret"], ["Cargo"]]],
			["I_C_Boat_Transport_02_F", [["driver"], ["Turret"], ["Cargo"]]],
            //tank
            ["I_APC_Wheeled_03_cannon_F", [["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["turret"], ["cargo"]]],
            ["ATC_B_MBT_01_TUSK_F", [["cargo"]]],
            ["O_APC_Tracked_02_cannon_F", [["turret"], ["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["turret"], ["cargo"]]],
            ["O_APC_Tracked_02_AA_F",[["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Tracked_01_AA_F",[["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Wheeled_01_cannon_F", [["turret"], ["cargo"]]],
		   //parachute
		   //["Steerable_Parachute_F", [["driver"]]],

            //heli
            ["B_Heli_Transport_03_F", [["cargo"],["turret"]]],
            ["ATC_HELI_LIGHT_B", [["cargo"]]],
            ["B_Heli_Transport_01_camo_F", [["turret", [[1], [2]]], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["cargo"]]],
            ["ATC_HELI_LIGHT_2_O", [["cargo"]]],
			["ATC_HELI_ATTACK_O", [["cargo"]]],
			["B_T_VTOL_01_vehicle_F", [["cargo"]]],
			["B_T_VTOL_01_infantry_F", [["cargo"]]],
            ["O_Heli_Transport_04_covered_F", [["cargo"],["Turret",[1]]]]
		]
	],
	[
		"Antiair",
		[        
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Cargo"]]],
			["B_T_LSV_01_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["driver"],["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_LSV_02_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["driver"],["Cargo"]]],
            ["B_UGV_01_rcws_F",[["Cargo"]]],
			["O_UGV_01_rcws_F",[["Cargo"]]],            
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
            ["B_static_AA_F", [["Turret"]]],
			
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
		    ["O_Lifeboat", [["driver"],["Cargo"]]],
		    ["B_Lifeboat", [["driver"],["Cargo"]]],
            ["B_SDV_01_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["O_SDV_01_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["driver"], ["Turret"], ["Cargo"]]],
			["I_C_Boat_Transport_02_F", [["driver"], ["Turret"], ["Cargo"]]],
            //tank
            ["I_APC_Wheeled_03_cannon_F", [["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["turret"], ["cargo"]]],
            ["ATC_B_MBT_01_TUSK_F", [["cargo"]]],
            ["O_APC_Tracked_02_cannon_F", [["turret"], ["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["turret"], ["cargo"]]],
            ["O_APC_Tracked_02_AA_F",[["turret"], ["cargo"]]],
			["B_APC_Tracked_01_AA_F",[["turret"], ["cargo"]]],
			["B_APC_Wheeled_01_cannon_F", [["turret"], ["cargo"]]],
		   //parachute
		   //["Steerable_Parachute_F", [["driver"]]],

            //heli
            ["B_Heli_Transport_03_F", [["cargo"],["turret"]]],
            ["ATC_HELI_LIGHT_B", [["cargo"]]],
            ["B_Heli_Transport_01_camo_F", [["turret", [[1], [2]]], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["cargo"]]],
            ["ATC_HELI_LIGHT_2_O", [["cargo"]]],
			["ATC_HELI_ATTACK_O", [["cargo"]]],
			["B_T_VTOL_01_vehicle_F", [["cargo"]]],
			["B_T_VTOL_01_infantry_F", [["cargo"]]],
            ["O_Heli_Transport_04_covered_F", [["cargo"],["Turret",[1]]]]
		]
	],
    [
		"Mortar",
		[        
            //Common
			["ATC_MRAP_HMG", [["driver"], ["Cargo"]]],
			["B_T_LSV_01_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["B_MRAP_01_F", [["driver"], ["Cargo"]]],
            ["B_Quadbike_01_F", [["driver"],["Cargo"]]],
            ["ATC_IFRIT_HMG", [["driver"], ["Turret"], ["Cargo"]]],
			["O_LSV_02_armed_F", [["driver"], ["Turret"], ["Cargo"]]],
			["O_MRAP_02_F", [["driver"], ["Cargo"]]],
            ["O_Quadbike_01_F", [["driver"],["Cargo"]]],
            ["B_UGV_01_rcws_F",[["Cargo"]]],
			["O_UGV_01_rcws_F",[["Cargo"]]],            
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
            ["B_static_AA_F", [["Turret"]]],
            //Boat
            ["O_Boat_Transport_01_F", [["driver"],["Cargo"]]],
            ["B_Boat_Transport_01_F", [["driver"],["Cargo"]]],
		    ["O_Lifeboat", [["driver"],["Cargo"]]],
		    ["B_Lifeboat", [["driver"],["Cargo"]]],
            ["B_SDV_01_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["O_SDV_01_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["B_Boat_Armed_01_minigun_F", [["driver"], ["Turret"], ["Cargo"]]],
            ["O_Boat_Armed_01_hmg_F", [["driver"], ["Turret"], ["Cargo"]]],
			["I_C_Boat_Transport_02_F", [["driver"], ["Turret"], ["Cargo"]]],
            //tank
            ["I_APC_Wheeled_03_cannon_F", [["turret"], ["cargo"]]],
            ["B_APC_Tracked_01_rcws_F", [["turret"], ["cargo"]]],
            ["ATC_B_MBT_01_TUSK_F", [["cargo"]]],
            ["O_APC_Tracked_02_cannon_F", [["turret"], ["cargo"]]],
            ["O_APC_Wheeled_02_rcws_F", [["turret"], ["cargo"]]],
            ["O_APC_Tracked_02_AA_F",[["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Tracked_01_AA_F",[["turret", [[0, 0]]], ["cargo"]]],
			["B_APC_Wheeled_01_cannon_F", [["turret"], ["cargo"]]],
		   //parachute
		   //["Steerable_Parachute_F", [["driver"]]],

            //heli
            ["B_Heli_Transport_03_F", [["cargo"],["turret"]]],
            ["ATC_HELI_LIGHT_B", [["cargo"]]],
            ["B_Heli_Transport_01_camo_F", [["turret", [[1], [2]]], ["cargo"]]],
            ["ATC_HELI_LIGHT_O", [["cargo"]]],
            ["ATC_HELI_LIGHT_2_O", [["cargo"]]],
			["ATC_HELI_ATTACK_O", [["cargo"]]],
			["B_T_VTOL_01_vehicle_F", [["cargo"]]],
			["B_T_VTOL_01_infantry_F", [["cargo"]]],
            ["O_Heli_Transport_04_covered_F", [["cargo"],["Turret",[1]]]],
            
            //Mortar
            ["B_Mortar_01_F", [["Turret"]]],
            ["O_Mortar_01_F", [["Turret"]]]
            
		]
	]
]