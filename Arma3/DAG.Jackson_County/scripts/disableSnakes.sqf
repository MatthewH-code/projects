/*
	File: fn_disableSnakes.sqf
	Author: Unknown
	Description: Remove ambient snakes. 
*/

[] spawn {
    while {true} do {
        {
            if ((agent _x isKindOf "Snake_random_F") || (agent _x isKindOf "Rabbit_F") || (agent _x isKindof "Goat_random_F")) then { deleteVehicle agent _x; };   
        }forEach agents;
        sleep 2;
    };
};


 