/*
	File: fn_gatherMeth.sqf
	
	Description:
	Gathers cocaine?
*/
private["_sum"];
_sum = ["methu",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	titleText[format[localize "STR_NOTF_Gathering",localize "STR_Item_Meth"],"PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 3;
	
	if(([true,"methu",1] call life_fnc_handleInv)) then
	{
		titleText[format[localize "STR_NOTF_Collected",localize "STR_Item_Meth"],"PLAIN"];   
	};
}
else
{
hint localize "STR_NOTF_InvFull";
};

life_action_inUse = false;