/*
	File: fn_knockoutAction.sqf
	Author: Bryan Tonic Boardwine
	
	Description:
	Knocks out the target.
*/
private["_target"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

//Error checks
if(isNull _target) exitWith {};
if(!isPlayer _target) exitWith {};
if(player distance _target > 3) exitWith {};




_degrees = getDir player; 
_degreesu = getDir _target;
_totald = _degrees - _degreesu;

if(_totald >= -45 && _totald < 1 || _totald <= 45 && _totald > -1 || _totald >= 315 || _totald <= -315) then {

life_knockout = true;

player attachTo [_target, [0, -0.4, 0.1] ]; 
detach player; 
_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL player); 
player switchmove "AmovPpneMstpSnonWnonDnon";
_obj setPosATL (getPosATL player);  
player attachTo [_obj,[0,-0.3,0.7]]; 
detach player;
[[_target,profileName],"life_fnc_CrashTackled",_target,false] spawn life_fnc_MP;
sleep 3;
life_knockout = false;


} else {
	hint "You must be behind your target to tackle them.";	
};






