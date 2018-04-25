/*
	fn_seatBelt.sqf
*/
playSound "seatbelt";
if(!life_seatbelt) then {
	["Your seatbelt is ON", false];
	life_seatbelt = true;
} else {
	["Your seatbelt is OFF", false];
	life_seatbelt = false;
};