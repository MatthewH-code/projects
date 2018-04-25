#define SAFETY_ZONES    [["safe1", 140],["safe2",50],["safe3",50],["safe4",100],["safe7",10],["safe10",35],["safe6",25]] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]
#define MESSAGE "Firing not Allowed in a safe zone!"
#define MESSAGE2 "you have 10 seconds to leave this zone!"
if (isDedicated) exitWith {};
waitUntil {!isNull player};



if (playerSide == west) then {  } else {

player addEventHandler ["Fired", {
    if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
    {
	
        deleteVehicle (_this select 6);
        titleText [MESSAGE, "PLAIN", 3];
		player action ["WeaponOnBack", player];
	    playSound "fail";
		
		
    };
}]; 


};

