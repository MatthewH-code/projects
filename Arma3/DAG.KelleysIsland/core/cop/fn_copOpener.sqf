/*
 police sender, open gates from inside the car (only for cops) 
 by Insane
 www.tdc-clan.eu
*/

{
	if (_x animationPhase "Gate" == 3.5) then {
		_x animate ["Gate", 0];
	} 
	else 
	{
		_x animate ["Gate", 3.5];
	};
	
} forEach (nearestObjects [player, ["A3L_Fence_Open"], 10]);    
