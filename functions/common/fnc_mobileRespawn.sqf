//Init vehicle: this addAction ["", ""];

switch (playerSide) do {
    case ATC_sideA: {
    
		//Mobile respawn
		         
				 "respawn_west_1" setmarkerpos getpos respawn_vehicle_A; 
   
    };
    case ATC_sideB: {
	    
		//Mobile respawn
		         
				 "respawn_east_1" setmarkerpos getpos respawn_vehicle_B; 
    };
};