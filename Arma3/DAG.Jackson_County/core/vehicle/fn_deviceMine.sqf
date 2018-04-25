/*
	Author: Bryan Tonic Boardwine
	
	Description:
	Starts automated mining of resource from the tempest device. 
*/
private["_vehicle","_resourceZones","_zone","_weight","_item","_vInv","_itemIndex"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {}; //Null was passed?
if(!isNil {_vehicle getVariable "mining"}) exitWith {hint localize "STR_NOTF_DeviceIsMining";}; //Mining is already in process..
closeDialog 0; //Close the interaction menu.
life_action_inUse = true; //Lock out the interaction menu for a bit..
_weight = [_vehicle] call life_fnc_vehicleWeight;
if((_weight select 1) >= (_weight select 0)) exitWith {hint localize "STR_NOTF_DeviceFull"; life_action_inUse = false;};
_resourceZones = ["wheat_1","wheat_2","wheat_3","sunflower_1","sunflower_2","sunflower_3","coke_3","coke_2","MDMA_1","coke_1","corn_1","corn_3","bean_1","opium_1","cotton_1","cotton_3","olive_1","heroin_1","cocaine_1","weed_1","lead_1","iron_1","meth_1","salt_1","sand_1","diamond_1","cannabis_1","cannabis_2","oil_1","oil_2","rock_1"];
_zone = "";

//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 150) exitWith {_zone = _x;}; 
} foreach _resourceZones;

if(_zone == "") exitWith {
	hint localize "STR_NOTF_notNearResource";
	life_action_inUse = false;
};

//Get the resource that will be gathered from the zone name...
_item = switch(true) do {
	case (_zone in ["wheat_1","wheat_2","wheat_3"]): {"wheat"};
	case (_zone in ["sunflower_1","sunflower_2","sunflower_3"]): {"sunflower"};
	case (_zone in ["corn_1","corn_2","corn_3"]): {"corn"};
	case (_zone in ["bean_1"]): {"bean"};
	case (_zone in ["cotton_1","cotton_2"]): {"cotton"};
	case (_zone in ["olive_1"]): {"olive"};
	case (_zone in ["opium_1"]): {"heroinu"};
	case (_zone in ["coke_1"]): {"cocaine"};
	case (_zone in ["coke_2"]): {"cocaine"};
	case (_zone in ["coke_3"]): {"cocaine"};	
	case (_zone in ["cannabis_1"]): {"cannabis"};
	case (_zone in ["cannabis_2"]): {"cannabis"};	
	case (_zone in ["lead_1"]): {"copperore"};
	case (_zone in ["iron_1"]): {"ironore"};
	case (_zone in ["salt_1"]): {"salt"};
	case (_zone in ["sand_1"]): {"sand"};
	case (_zone in ["diamond_1"]): {"diamond"};
	case (_zone in ["oil_1","oil_2"]): {"oilu"};
	case (_zone in ["rock_1"]): {"rock"};
	case (_zone in ["meth_1"]): {"meth"};
	case (_zone in ["MDMA_1"]): {"MDMA"};	
	default {""};
};

if(_item == "") exitWith {hint "Bad Resource?"; life_action_inUse = false;};
_vehicle setVariable ["mining",true,true]; //Lock the device
[_vehicle,"life_fnc_soundDevice",true,false] spawn life_fnc_MP; //Broadcast the 'mining' sound of the device for nearby units.

life_action_inUse = false; //Unlock it since it's going to do it's own thing...

while {true} do {
	if(!alive _vehicle OR isNull _vehicle) exitWith {};
	if(isEngineOn _vehicle) exitWith {titleText[localize "STR_NOTF_MiningStopped","PLAIN"];};
	titleText[localize "STR_NOTF_DeviceMining","PLAIN"];
	_time = time + 27;
	
	//Wait for 27 seconds with a 'delta-time' wait.
	waitUntil {
		if(isEngineOn _vehicle) exitWith {titleText[localize "STR_NOTF_MiningStopped","PLAIN"]; true};
		if(round(_time - time) < 1) exitWith {true};
		sleep 0.2;
		false
	};
	if(isEngineOn _vehicle) exitWith {titleText[localize "STR_NOTF_MiningStopped","PLAIN"];};
	_vInv = _vehicle getVariable ["Trunk",[[],0]];
	_items = _vInv select 0;
	_space = _vInv select 1;
	_itemIndex = [_item,_items] call fnc_index;
	_weight = [_vehicle] call life_fnc_vehicleWeight;
	_sum = [_item,15,_weight select 1,_weight select 0] call life_fnc_calWeightDiff; //Get a sum base of the remaining weight.. 
	if(_sum < 1) exitWith {titleText[localize "STR_NOTF_DeviceFull","PLAIN"];};
	_itemWeight = ([_item] call life_fnc_itemWeight) * _sum;
	if(_itemIndex == -1) then {
		_items pushBack [_item,_sum];
	} else {
		_val = _items select _itemIndex select 1;
		_items set[_itemIndex,[_item,_val + _sum]];
	};
	
	if(fuel _vehicle == 0) exitWith {titleText[localize "STR_NOTF_OutOfFuel","PLAIN"];};
	
	//Locality checks...
	if(local _vehicle) then {
		_vehicle setFuel (fuel _vehicle)-0.045;
	} else {
		[[_vehicle,(fuel _vehicle)-0.04],"life_fnc_setFuel",_vehicle,false] spawn life_fnc_MP;
	};
	
	if(fuel _vehicle == 0) exitWith {titleText[localize "STR_NOTF_OutOfFuel","PLAIN"];};
	titleText[format[localize "STR_NOTF_DeviceMined",_sum],"PLAIN"];
	_vehicle setVariable["Trunk",[_items,_space + _itemWeight],true];
	_weight = [_vehicle] call life_fnc_vehicleWeight;
	_sum = [_item,15,_weight select 1,_weight select 0] call life_fnc_calWeightDiff; //Get a sum base of the remaining weight.. 
	if(_sum < 1) exitWith {titleText[localize "STR_NOTF_DeviceFull","PLAIN"];};
	sleep 2;
};

_vehicle setVariable["mining",nil,true];