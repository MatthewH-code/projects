/*
	COPY PASTE TIME
*/
if((EAL_slowDownSon != 0) && ((time - EAL_slowDownSon) < 0.3)) exitWith {EAL_autoClickAmount = EAL_autoClickAmount +1; [[profileName,format["Auto Clicker Detected in ::->bankWithdraw.sqf. Number of click bursts detected: %1",EAL_autoClickAmount]],"SPY_fnc_tellAdmins",true,false] call BIS_fnc_MP;};EAL_slowDownSon = time;if(EAL_autoClickAmount >= 5) then { diag_log format["EAL AUTO CLICK DETECTION LOG ***CLICK BURSTS***:%1:      ***HACKER*** ",EAL_autoClickAmount]; };
private["_val"];
_val = parseNumber(ctrlText 2702);
if(_val > 999999) exitWith {hint localize "STR_ATM_WithdrawMax";};
if(_val < 0) exitwith {};
if(!([str(_val)] call life_fnc_isnumeric)) exitWith {hint localize "STR_ATM_notnumeric"};
if(_val > life_atmcash) exitWith {hint localize "STR_ATM_NotEnoughFunds"};
if(_val < 100 && life_atmcash > 20000000) exitWith {hint localize "STR_ATM_WithdrawMin"}; //Temp fix for something.

life_cash = life_cash + _val;
life_atmcash = life_atmcash - _val;
hint format [localize "STR_ATM_WithdrawSuccess",[_val] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial; //Silent Sync
