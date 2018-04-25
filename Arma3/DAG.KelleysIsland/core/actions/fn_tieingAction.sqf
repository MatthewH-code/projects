/*
	File: fn_restrainAction.sqf
	Author: Bryan Tonic Boardwine
	
	Description:
	Retrains the target.
*/

private["_unit"];
_unit = cursorTarget;

if(life_inv_tierope < 1) exitWith {
	hint "You need to buy rope from the market to do this..";
};

if((life_action_inUse) || (player getVariable "tied") || (player getVariable "restrained")) exitWith {      
titleText["You can not do that.","PLAIN"];
titleFadeOut 5;
}; 
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "tied")) exitWith {};

if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!

life_action_inUse = true;
hint "Restraining!";

playSound3D ["dag_soimtx\sounds\tieup.ogg", player, false, getPosASL player, 1, 1, 125];
_jerkoff = 3;
_num = 1;
_myposy = getPos player;
while {_jerkoff > _num} do {
_jerkoff = _jerkoff - 1;
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
sleep 1;
};
	_unit setVariable["tied",true,true];
	life_karma = life_karma - 10;
	[[player], "life_fnc_tieing", _unit, false] spawn life_fnc_MP;
	life_rope = 1;

life_action_inUse = false;
