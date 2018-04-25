[] spawn  {
	private["_fnc_food","_fnc_water","_fnc_battery"];
	_fnc_food = 
	{
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
		else
		{
		life_hunger = life_hunger - 10;
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
		switch(life_hunger) do {
			case 30: {hint localize "STR_NOTF_EatMSG_1";};
			case 20: {hint localize "STR_NOTF_EatMSG_2";};
			case 10: {hint localize "STR_NOTF_EatMSG_3";player setFatigue 1;};
			};
		};
	};
	
	_fnc_water = 
	{
		if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}       
		else
		{
			life_thirst = life_thirst - 10;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
			switch(life_thirst) do 
			{
				case 30: {hint localize "STR_NOTF_DrinkMSG_1";};
				case 20: {hint localize "STR_NOTF_DrinkMSG_2"; player setFatigue 1;};
				case 10: {hint localize "STR_NOTF_DrinkMSG_3"; player setFatigue 1;};
			};
		};
	};
	_fnc_battery =
	{
		if(life_battery < 2) then {hintSilent "Your cellphone battery is empty";}
		else
		{
			life_battery = life_battery - 5;
			[] call life_fnc_hudUpdate;
			if(life_battery < 2) then {hintSilent "Your battery is empty.";};
			switch(life_battery) do 
			{
				case 30: {hintSilent "Your battery is at 30%";};
				case 20: {hintSilent "Your battery is at 20%";};
				case 10: {hintSilent "Your battery is at 10%";};
			};
		};
	};	
	
	while{true} do
	{
		uiSleep 600;
		[] call _fnc_water;
		uiSleep 10;
		[] call _fnc_battery;
		uiSleep 250;
		[] call _fnc_food;
	};
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		life_maxWeight = life_maxWeightT + _load;
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};

 
[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint localize "STR_NOTF_MaxWeight";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

/*[] spawn
{
	while{true} do
	{
		waitUntil {vehicle player != player};
		waitUntil {vehicle player == player};
		_n = 15;
		hint "You can not use your weapon for 1.5 seconds...";
		while {_n > 0} do {
			if (currentWeapon player != "") then {
				life_curWep_h = currentWeapon player;
				player action ["SwitchWeapon", player, player, 100];
				player switchcamera cameraView;
				[[player,"AmovPercMstpSnonWnonDnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				player switchMove "AmovPercMstpSnonWnonDnon";
			};
			sleep 0.1;
			_n = _n - 1;
		};
		hint "You can now unholster your weapon.";
		sleep 1;
	};
};*/


//Intox Start
private["_obj"];
[] spawn  
{
	while{true} do
	{
		sleep 60;
		if(life_intox > 0) then 
		{
			if(life_intox <= 0.02) then {life_intox = 0.00;} else {life_intox = life_intox - 0.07;};
			[] call life_fnc_hudUpdate;
			switch(true) do {
				case (life_intox == 0.00): {hint "You are completely sober.";};
				case (life_intox == 0.08): {hint "You can now legally drive.";};
			};
		};
	};
};

[] spawn  
{
	while{true} do
	{
		waitUntil {life_intox > 0.08};
		player setVariable["intoxicated",true,true];
		[[0,format["%1 seems intoxicated.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 50],false] spawn life_fnc_MP;
		while{life_intox > 0.08} do 
		{
			"dynamicBlur" ppEffectEnable true;
			"dynamicBlur" ppEffectAdjust [round ((1+(life_intox-.1))^10)];
			"dynamicBlur" ppEffectCommit 1;
			sleep 5;
		};
		"dynamicBlur" ppEffectEnable false;
		player setVariable["intoxicated",false,true];
	};
};

[] spawn  
{
	while{true} do
	{
		waitUntil {life_intox > 0.30};
		_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL player);
		_obj setPosATL (getPosATL player);
		[[player,"AinjPfalMstpSnonWnonDf_carried_fallwc"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player attachTo [_obj,[0,0,0]];
		[[0,format["%1 has passed out.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 100],false] spawn life_fnc_MP;
		while{life_intox > 0.30} do 
		{
			hint "Your intoxication level is above 0.30 and you are overdosing. Seek immediate treatment or find some stimulants! If you go above 0.40, you may die.";
			sleep 60;
		};
		detach player;
		[[player,"amovppnemstpsraswrfldnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
	};
};

[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		sleep 0.5;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};
[] spawn
{
	private["_theveh","_unitveh","_myveh","_side","_radius","_nearestunits","_nearestunitofside","_unit"];
	while{true} do
	{
		waitUntil {!isNull (findDisplay 3500)};
		life_action_inuse = true;

		if(cursorTarget isKindOf "House_F") then {
			player setVariable["vehopen",2,true];
			_radius = 40;
		} else {
			_cuid = cursorTarget getVariable "vehicle_info_owners";
			player setVariable["vehopen",_cuid,true];
			_radius = 8;
		};
		_myveh = player getVariable "vehopen";

		while{!isNull (findDisplay 3500)} do
		{
			_side = civilian;
			_nearestunits = nearestObjects [player,["Man"],_radius];

			if(_side countSide _nearestunits > 0) then
			{
				{
					_unit = _x;
					if ( isPlayer _unit && player != _unit ) then 
					{
						_unitveh = _unit getVariable "vehopen";

						if(_unitveh isEqualTo _myveh) exitWith {
								life_action_inuse = false;		
								hint "Someone is using a virtual inventory near you. Please wait.";
								closeDialog 0;
						};
					};
				} foreach _nearestunits;
			};
			sleep 0.25;
		};
		closeDialog 0;	
		life_action_inuse = false;		
		player setVariable["vehopen",0,true];
	};
};

[] spawn
{
	if(side player != civilian) exitWith {};
	while{true} do
	{
		_vehicle = vehicle player;
		if(vehicle player != player && driver (vehicle player) == player && ((_vehicle isKindOf "Car") || (_vehicle isKindOf "Motorcycle") || (_vehicle isKindOf "Bicycle") || (_vehicle isKindOf "Motorbike") || (_vehicle isKindOf "A3L_Tahoe_Base"))) then {

			if((player distance (getMarkerPos "speed_cam_1")) < 20 || (player distance (getMarkerPos "speed_cam_2")) < 20 || (player distance (getMarkerPos "speed_cam_3")) < 20 || (player distance (getMarkerPos "speed_cam_4")) < 20 || (player distance (getMarkerPos "speed_cam_10")) < 20 ) then {
				_vel = speed player; 
				if(_vel > 90 && _vel < 140) then {
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;
					uiSleep 0.1;
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;	

					["You have been fined $100 for speeding in the city.", false];
					if(life_cash > 100) then {
						["bank","take",100] call life_atmcash; 
					};
				};
				
				if(_vel > 139 && _vel < 200) then {
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;
					uiSleep 0.1;
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;		

					["You have been fined $210 for excessive speed in the city.", false];
					if(life_cash > 210) then {
						["bank","take",210] call life_atmcash;
					};
				};	
				if(_vel > 199) then {
					["You have been fined $2000, lost your license for very excessive speeds in a city.", false];
					if(life_cash > 2000) then {
						["bank","take", 2000] call life_atmcash;
					};
					player setVariable["defect_vehicle",true,true];

					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;
					uiSleep 0.1;
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;	

					if(license_civ_driver OR license_civ_truck OR license_civ_boat) then {
						license_civ_driver = false;
						license_civ_truck = false;
						license_civ_boat = false;
						[2] call SOCK_fnc_updatePartial;
					};
				};		
				uiSleep 30;
			};
			if((player distance (getMarkerPos "speed_cam_5")) < 30 || (player distance (getMarkerPos "speed_cam_6")) < 30 || (player distance (getMarkerPos "speed_cam_7")) < 30 || (player distance (getMarkerPos "speed_cam_8")) < 30 || (player distance (getMarkerPos "speed_cam_9")) < 30 || (player distance (getMarkerPos "speed_cam_11")) < 30 || (player distance (getMarkerPos "speed_cam_12")) < 30 || (player distance (getMarkerPos "speed_cam_13")) < 30 || (player distance (getMarkerPos "speed_cam_14")) < 30 || (player distance (getMarkerPos "speed_cam_15")) < 30 || (player distance (getMarkerPos "speed_cam_16")) < 30 || (player distance (getMarkerPos "speed_cam_17")) < 30 || (player distance (getMarkerPos "speed_cam_18")) < 30) then {
				_vel = speed player; 
				if(_vel > 140 && _vel < 160) then {
					["You have been fined $100 for speeding.", false];
					if(life_cash > 100) then {
						["bank","take",100] call life_atmcash; 
					};

					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;
					uiSleep 0.1;
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;	

				};
				if(_vel > 159 && _vel < 224) then {
					["You have been fined $350 for excessive speed.", false];
					if(life_cash > 350) then {
						["bank","take",350] call life_atmcash;
					};

					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;
					uiSleep 0.1;
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;	

				};	
				if(_vel > 225) then {
					["You have been fined $1000, lost your license for very excessive speeds.", false];
					if(life_cash > 1000) then {
						["bank","take", 1000] call life_atmcash;
					};
					player setVariable["defect_vehicle",true,true];

					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;
					uiSleep 0.1;
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;						

					if(license_civ_driver OR license_civ_truck OR license_civ_boat) then {
						license_civ_driver = false;
						license_civ_truck = false;
						license_civ_boat = false;
					};
				};
				uiSleep 30;	
			};
			uiSleep 0.5;
		} else {
			uiSleep 5;
		};
	};
};
[] spawn
{
	while {true} do
	{
		if(isNull objectParent player) then
		{
			if(life_seatwarn) then {
				life_seatwarn = false;
			};
			if(life_seatbelt) then {
				uiSleep 3;
				life_seatbelt = false;
			};
			uiSleep 5;
		};
		if(vehicle player != player && !(player getVariable ["Escorting", false]) && !(player getVariable ["restrained", false]) && (vehicle player isKindOf "LandVehicle")) then
		{
			if(speed vehicle player > 90 && !life_seatbelt) then
			{
				oldVehVelocity = velocity (vehicle player);
				uiSleep 0.3;
				if(speed vehicle player < 1) then
				{
					playSound "glassbreak";
					moveOut player;
					player setVelocity [(oldVehVelocity select 0) * 0.4,(oldVehVelocity select 1) * 0.4,((oldVehVelocity select 2) * 0.4) + 5];
					uiSleep 2;
					player switchmove "";
				};
			} else {
				if(!life_seatwarn) then {
					uiSleep 1;
					if(!life_seatwarn) then {
						["Remember your Seatbelt!", false];
					};
					playSound "seatwarn";
					life_seatwarn = true;
				};
				uiSleep 1;
			};
		};
	};
};
[] spawn {
	while {true} do
	{
		enableSentences false;
		sleep 20;
	};
};