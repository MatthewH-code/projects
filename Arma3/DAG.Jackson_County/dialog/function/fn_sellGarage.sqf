#include <macro.h>
/*
	File: fn_sellGarage.sqf
	Author: Bryan Tonic Boardwine
	
	Description:
	Sells a vehicle from the garage.
*/
if((EAL_slowDownSon != 0) && ((time - EAL_slowDownSon) < 0.3)) exitWith {EAL_autoClickAmount = EAL_autoClickAmount +1; [[profileName,format["Auto Clicker Detected in ::->sellGarage.sqf. Number of click bursts detected: %1",EAL_autoClickAmount]],"SPY_fnc_tellAdmins",true,false] call BIS_fnc_MP;};EAL_slowDownSon = time;if(EAL_autoClickAmount >= 5) then { diag_log format["EAL AUTO CLICK DETECTION LOG ***CLICK BURSTS***:%1:      ***HACKER*** ",EAL_autoClickAmount]; };
private["_vehicle","_vid","_pid","_unit","_price"];
disableSerialization;
if(lbCurSel 2802 == -1) exitWith {hint localize "STR_Global_NoSelection"};
_vehicle = lbData[2802,(lbCurSel 2802)];
_vehicle = (call compile format["%1",_vehicle]) select 0;
_vid = lbValue[2802,(lbCurSel 2802)];
_pid = getPlayerUID player;
_unit = player;

if(isNil "_vehicle") exitWith {hint localize "STR_Garage_Selection_Error"};

_price = [_vehicle,__GETC__(life_garage_sell)] call fnc_index;
if(_price == -1) then {_price = 1000;} else {_price = (__GETC__(life_garage_sell) select _price) select 1;};
[[_vid,_pid,_price,player,life_garage_type],"TON_fnc_vehicleDelete",false,false] spawn life_fnc_MP;

closeDialog 0;