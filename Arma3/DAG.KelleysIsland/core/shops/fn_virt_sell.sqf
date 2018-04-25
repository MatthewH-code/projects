#include <macro.h>
/*
	File: fn_virt_sell.sqf
	Author: Bryan Tonic Boardwine
	
	Description:
	Sell a virtual item to the store / shop
*/
if(EAL_sellSpamTries >= 3) then {  [[profileName,format["DANGEROUS AUTO CLICK FILE ACCESS IN::->fn_virt_sell.sqf. --- Number Of Times Accessed While On a Half Second Cool Down: %1",EAL_sellSpamTries]],"SPY_fnc_tellAdmins",true,false] call BIS_fnc_MP; };if(!EAL_canSell) exitWith {EAL_sellSpamTries = EAL_sellSpamTries +1; hint "You are trying to sell items more than once per half second!"; closeDialog 0;};if(EAL_canSell) then {    EAL_canSell = false;    [] spawn { sleep 0.4; EAL_canSell = true; EAL_sellSpamTries = 0;};};
private["_type","_index","_price","_var","_amount","_name"];
if((lbCurSel 2402) == -1) exitWith {};
_type = lbData[2402,(lbCurSel 2402)];
_index = [_type,__GETC__(sell_array)] call fnc_index;
if(_index == -1) exitWith {};
_price = (__GETC__(sell_array) select _index) select 1;
_var = [_type,0] call life_fnc_varHandle;

_amount = ctrlText 2405;
if(!([_amount] call fnc_isnumber)) exitWith {hint localize "STR_Shop_Virt_NoNum";};
_amount = parseNumber (_amount);
if(_amount > (missionNameSpace getVariable _var)) exitWith {hint localize "STR_Shop_Virt_NotEnough"};

_price = (_price * _amount);
_name = [_var] call life_fnc_vartostr;
if(([false,_type,_amount] call life_fnc_handleInv)) then
{
	hint format[localize "STR_Shop_Virt_SellItem",_amount,_name,[_price] call life_fnc_numberText];
	life_cash = life_cash + _price;
	[] call life_fnc_virt_update;
	
};

if(life_shop_type == "heroin") then
{
	private["_array","_ind","_val"];
	_array = life_shop_npc getVariable["sellers",[]];
	_ind = [getPlayerUID player,_array] call fnc_index;
	if(_ind != -1) then
	{
		_val = (_array select _ind) select 2;
		_val = _val + _price;
		_array set[_ind,[getPlayerUID player,profileName,_val]];
		life_shop_npc setVariable["sellers",_array,true];
	}
		else
	{
		_array pushBack [getPlayerUID player,profileName,_price];
		life_shop_npc setVariable["sellers",_array,true];
	};
};

[0] call SOCK_fnc_updatePartial;