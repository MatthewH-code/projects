/*
	File: fn_medicLoadout.sqf
	Author: Bryan Tonic Boardwine    
	
	Description:
	Loads the medic out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player forceaddUniform "U_I_HeliPilotCoveralls";
player addBackpack "AM_PoliceBelt";
player addItem "Medikit";
player addItem "Toolkit";
player addItem "Toolkit";
player addItem "Toolkit";
player addItem "FirstAidKit";
 
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "NVGoggles";
player assignItem "NVGoggles";
player addItem "H_Cap_red";
player assignItem "H_Cap_red";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";

player addItem "tf_anprc148jem";
player assignItem "tf_anprc148jem";
 
[[player,0,"textures\DAG_EMS_UNI.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;

[] call life_fnc_saveGear; 