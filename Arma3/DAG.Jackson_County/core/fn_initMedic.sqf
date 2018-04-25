#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan Tonic Boardwine
	
	Description:
	Initializes the medic..
*/

// TFR Variables API
tf_no_auto_long_range_radio = true; 



private["_end"];

player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_medicLevel)) < 1) exitWith {
	disableUserInput true;
	["MedicWhitelist",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
	disableUserInput false;
};


player setVariable["rank",(__GETC__(life_medicLevel)),true];
player setVariable ["copLevel",1,true];
[] call life_fnc_medicLoadout; 
[] call life_fnc_spawnMenu;

waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.


