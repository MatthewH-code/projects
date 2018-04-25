/*
	File: fn_axeUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for wood cutting.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val"];
switch (true) do
{
	case (player distance (getMarkerPos "wood_1") < 40): {_mine = "wood"; _val= 5;};
	case (player distance (getMarkerPos "wood_2") < 40): {_mine = "wood"; _val= 5;};
	case (player distance (getMarkerPos "wood_3") < 40): {_mine = "wood"; _val= 5;};
	case (player distance (getMarkerPos "wood_4") < 40): {_mine = "wood"; _val= 5;};	
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {hint localize "STR_ISTR_Pick_NotNear"};
if(vehicle player != player) exitWith {hint localize "STR_ISTR_Pick_MineVeh";};

if(life_action_inUse) exitWith {};

_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_inUse = true;
playSound "axe";
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_ISTR_Pick_Success",_itemName,_diff],"PLAIN"];
};

life_action_inUse = false;