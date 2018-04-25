if (isServer) then {exit};
private["_car"];
_car = _this select 0;

_car execVM "\A3L_ChargerSRT8_Police\data\Lights2.sqf";
_car execVM "\A3L_ChargerSRT8_Police\data\directional.sqf";
_car execVM "\A3L_ChargerSRT8_Police\data\sirens.sqf";
_car execVM "\A3L_ChargerSRT8_Police\data\DamageHandeler.sqf";

waitUntil {!(alive _car)};
_car setObjectTexture [0,"\A3L_ChargerSRT8_Police\data\vehicle_destoryed.paa"];
_car setObjectMaterial [0,"\A3L_ChargerSRT8_Police\rvmats\BodyDestoryed.rvmat"];

exit;
