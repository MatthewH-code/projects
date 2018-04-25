/*
	Name: Radar_new
	Description: Radar Script For the Police vehicles.
	Author: #A3LCarDevTeam
*/

if (isDedicated) exitwith {};
_veh = _this select 0;

[_veh] spawn {
_veh = _this select 0;
// HiddenSelection numbers
_lock1 = 35;
_lock2 = 36;
_lock3 = 37;
_lockarr = [_lock1,_lock2,_lock3];
_target1 = 32;
_target2 = 33;
_target3 = 34;
_targetarr = [_target1,_target2,_target3];
_patrol1 = 38;
_patrol2 = 39;
_patrol3 = 40;
_patrolarr = [_patrol1,_patrol2,_patrol3];

while {alive _veh} do {

if ((isEngineOn _veh) && (player IN _veh) && (cameraView == "INTERNAL")) then {
_myspeed = speed _veh;
if (_myspeed > 999) exitwith {hint "Nice Hax m8...";};
_myspeed = round _myspeed;
_myspeed = format ["%1",_myspeed];
_myspeed = toarray _myspeed;

if (45 IN _myspeed) then {
_myspeed = _myspeed - [45]; // Take - out of array
};

if (count _myspeed == 1) then {
_myspeed = [0,0,(_myspeed select 0)];
};

if (count _myspeed == 2) then {
_myspeed = [0,(_myspeed select 0),(_myspeed select 1)];
};

{
_pic = "\A3L_ChargerSRT8_Police\Radar\G\0.paa";
if (_x == 48) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\G\0.paa";
};
if (_x == 49) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\G\1.paa";
};
if (_x == 50) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\G\2.paa";
};
if (_x == 51) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\G\3.paa";
};
if (_x == 52) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\G\4.paa";
};
if (_x == 53) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\G\5.paa";
};
if (_x == 54) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\G\6.paa";
};
if (_x == 55) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\G\7.paa";
};
if (_x == 56) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\G\8.paa";
};
if (_x == 57) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\G\9.paa";
};
_myspeed set [_forEachIndex,_pic];
} foreach _myspeed;

{
_veh setObjectTexture [_x,(_myspeed select _forEachIndex)];
} forEach _patrolarr;


_target = cursortarget;
if (!(_target isKindOf "LandVehicle")) exitwith {};
_targetspeed = speed _target;
if (isNil "Prevspeed") then {
Prevspeed = 0;
};
_curtargetspeed = _targetspeed;

_targetspeed = round _targetspeed;
_targetspeed = format ["%1",_targetspeed];
_targetspeed = toarray _targetspeed;

if (45 IN _targetspeed) then {
_targetspeed = _targetspeed - [45]; // Take - out of array
};

if (count _targetspeed == 1) then {
_targetspeed = [0,0,(_targetspeed select 0)];
};

if (count _targetspeed == 2) then {
_targetspeed = [0,(_targetspeed select 0),(_targetspeed select 1)];
};

{
_pic = "\A3L_ChargerSRT8_Police\Radar\Y\0.paa";
if (_x == 48) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\Y\0.paa";
};
if (_x == 49) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\Y\1.paa";
};
if (_x == 50) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\Y\2.paa";
};
if (_x == 51) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\Y\3.paa";
};
if (_x == 52) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\Y\4.paa";
};
if (_x == 53) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\Y\5.paa";
};
if (_x == 54) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\Y\6.paa";
};
if (_x == 55) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\Y\7.paa";
};
if (_x == 56) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\Y\8.paa";
};
if (_x == 57) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\Y\9.paa";
};
_targetspeed set [_forEachIndex,_pic];
} foreach _targetspeed;

{
_veh setObjectTexture [_x,(_targetspeed select _forEachIndex)];
} forEach _targetarr;

if (_curtargetspeed > Prevspeed) then {

_curtargetspeed2 = _curtargetspeed;
_curtargetspeed = round _curtargetspeed;
_curtargetspeed = format ["%1",_curtargetspeed];
_curtargetspeed = toarray _curtargetspeed;

if (45 IN _curtargetspeed) then {
_curtargetspeed = _curtargetspeed - [45]; // Take - out of array
};

if (count _curtargetspeed == 1) then {
_curtargetspeed = [0,0,(_curtargetspeed select 0)];
};

if (count _curtargetspeed == 2) then {
_curtargetspeed = [0,(_curtargetspeed select 0),(_curtargetspeed select 1)];
};


{
_pic = "\A3L_ChargerSRT8_Police\Radar\pic0.paa";
if (_x == 48) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\pic0.paa";
};
if (_x == 49) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\pic1.paa";
};
if (_x == 50) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\pic2.paa";
};
if (_x == 51) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\pic3.paa";
};
if (_x == 52) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\pic4.paa";
};
if (_x == 53) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\pic5.paa";
};
if (_x == 54) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\pic6.paa";
};
if (_x == 55) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\pic7.paa";
};
if (_x == 56) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\pic8.paa";
};
if (_x == 57) then {
_pic = "\A3L_ChargerSRT8_Police\Radar\pic9.paa";
};
_curtargetspeed set [_forEachIndex,_pic];
} foreach _curtargetspeed;

{
_veh setObjectTexture [_x,(_curtargetspeed select _forEachIndex)];
} forEach _lockarr;


Prevspeed = _curtargetspeed2;
};



};
Sleep 0.01;
};
};