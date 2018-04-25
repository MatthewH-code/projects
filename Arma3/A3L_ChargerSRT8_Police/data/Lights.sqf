
private["_NRDcar"];
_NRDcar = _this;

while {alive _NRDcar} do {
		if (_NRDcar animationPhase "ani_lightbar" == 0.1 && getdammage _NRDcar < 0.9) then {
	_int = 1.01;
	
	if ((daytime > 7) && (daytime < 11)) then {
	_int = 1.01;
	};
	if (daytime > 17) then {
	_int = 1.01;
	};
	if (daytime > 17.2) then {
	_int = 1.01;
	};
	if ((daytime > 17.5) OR (daytime > 0 && daytime < 7)) then {
	_int = 1.01;
	};
		if (cameraOn == _NRDcar && cameraView == "Internal") then
	{
	_int = 0;
	};
	

	
		_NRDcar setObjectTexture [8,"#(argb,8,8,3)color(0,0,1,1.0,CO)"];
		_NRDcar setObjectTexture [9,""];
		_NRDcar setObjectTexture [10,""];
		_NRDcar setObjectTexture [11,"#(argb,8,8,3)color(1,1,1,1.0,CO)"];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 1];
		_Blue = "#lightpoint" createVehicleLocal getpos _NRDcar;
		_Blue lightAttachObject [ _NRDcar, [ 0.54, -0.26, 1.57 ] ];
		_Blue setLightAmbient[ 0, 0, 1.0];
		_Blue setlightColor[ 0, 0, 1.0];
		_Blue setLightIntensity _int;

		
		sleep 0.0425;


		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 0];
		
		sleep 0.0425;


		_NRDcar setObjectTextureGlobal [8,"#(argb,8,8,3)color(0,0,1,1.0,CO)"];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,"#(argb,8,8,3)color(1,1,1,1.0,CO)"];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 1];
		
		
		sleep 0.0425;
		DeleteVehicle _Blue;

		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 0];
		


		sleep 0.0425;
		
		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,"#(argb,8,8,3)color(1,0,0,1.0,co)"];
		_NRDcar setObjectTextureGlobal [10,"#(argb,8,8,3)color(1,1,1,1.0,CO)"];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setHit ["Light_L", 1];
		_NRDcar setHit ["Light_R", 0];
		_Blue = "#lightpoint" createVehicleLocal getpos _NRDcar;
		_Blue lightAttachObject [ _NRDcar, [ 0.54, -0.26, 1.57 ] ];
		_Blue setLightAmbient[ 1.0, 0, 0];
		_Blue setlightColor[ 1.0, 0, 0];
		_Blue setLightIntensity _int;
		
		sleep 0.0425;


		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 0];
		
		sleep 0.0425;

		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,"#(argb,8,8,3)color(1,0,0,1.0,co)"];
		_NRDcar setObjectTextureGlobal [10,"#(argb,8,8,3)color(1,1,1,1.0,CO)"];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setHit ["Light_L", 1];
		_NRDcar setHit ["Light_R", 0];
		
		sleep 0.0425;
		
		DeleteVehicle _Blue;
		
		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 0];
		
		} else {
		waitUntil {(_NRDcar animationPhase "ani_lightbar" == 0.1 && getdammage _NRDcar < 0.9)};
	};
};

exit;