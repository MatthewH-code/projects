#include <macro.h>
/*
	Author: IMCHRIS
	
	Description:
	EVENT MENU V1
*/
private["_message"];
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; hint "You need to be an Admin to use this function.";};
//if(life_event) exitWith {closeDialog 0; hint "There is already a server event under-way.";};
//life_event = true;
_message = "EVENT STARTED";[[_message,name player,7],"clientMessage",true,false] spawn life_fnc_MP;

sleep 70;

sleep 180;
sleep 180;
sleep 180; //For some reason, anything over 250 wouldn't work, so i split them up.
sleep 180;
sleep 180;

sleep 180;
sleep 180;
sleep 180;
sleep 120;

sleep 150;
sleep 150;
_message = "EVENT ENDED";[[_message,name player,7],"clientMessage",true,false] spawn life_fnc_MP;
//life_event = false;