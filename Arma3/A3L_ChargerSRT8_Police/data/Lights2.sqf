
private["_NRDcar"];
_NRDcar = _this;
_LBRED = "#(argb,8,8,3)color(1,0,0,1.0,CO)";
_LBBLUE = "#(argb,8,8,3)color(0,0,1,1.0,CO)";
_LBWHITE = "#(argb,8,8,3)color(1,1,1,1.0,co)";

while {alive _NRDcar} do {
	waitUntil {(_NRDcar animationPhase "ani_lightbar" == 0.1 && getdammage _NRDcar < 0.9)};
	_int = 5.5;

		_NRDcar setObjectTextureGlobal [8,_LBRED];
		_NRDcar setObjectTextureGlobal [9,_LBRED];
		_NRDcar setObjectTextureGlobal [10,_LBRED];
		_NRDcar setObjectTextureGlobal [11,_LBRED];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,_LBWHITE];
		_NRDcar setHit ["Light_L", 1];
		_NRDcar setHit ["Light_R", 0];
		_Blue = "#lightpoint" createVehicleLocal getpos _NRDcar;
		_Blue lightAttachObject [ _NRDcar, [ 0.54, -0.26, 1.57 ] ];
		_Blue setLightAmbient[ 1.0, 0, 0];
		_Blue setlightColor[ 1.0, 0, 0];
		_Blue setLightIntensity _int;

		sleep .1;

		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,""];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 0];

		sleep .1;

		_NRDcar setObjectTextureGlobal [8,_LBRED];
		_NRDcar setObjectTextureGlobal [9,_LBRED];
		_NRDcar setObjectTextureGlobal [10,_LBRED];
		_NRDcar setObjectTextureGlobal [11,_LBRED];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,_LBWHITE];
		_NRDcar setObjectTextureGlobal [17,""];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 1];

		sleep .1;

		DeleteVehicle _Blue;
		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 0];

		sleep .1;

		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,_LBBLUE];
		_NRDcar setObjectTextureGlobal [13,_LBBLUE];
		_NRDcar setObjectTextureGlobal [14,_LBBLUE];
		_NRDcar setObjectTextureGlobal [15,_LBBLUE];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,_LBWHITE];
		_NRDcar setHit ["Light_L", 1];
		_NRDcar setHit ["Light_R", 0];
		_Blue = "#lightpoint" createVehicleLocal getpos _NRDcar;
		_Blue lightAttachObject [ _NRDcar, [ 0.54, -0.26, 1.57 ] ];
		_Blue setLightAmbient[ 0, 0, 1.0];
		_Blue setlightColor[ 0, 0, 1.0];
		_Blue setLightIntensity _int;

		sleep .1;

		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,""];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 0];

		sleep .1;

		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,_LBBLUE];
		_NRDcar setObjectTextureGlobal [13,_LBBLUE];
		_NRDcar setObjectTextureGlobal [14,_LBBLUE];
		_NRDcar setObjectTextureGlobal [15,_LBBLUE];
		_NRDcar setObjectTextureGlobal [16,_LBWHITE];
		_NRDcar setObjectTextureGlobal [17,""];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 1];

		sleep .1;

		DeleteVehicle _Blue;
		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,_LBWHITE];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 0];

		sleep .1;

		_NRDcar setObjectTextureGlobal [8,_LBRED];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,_LBRED];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,_LBBLUE];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,_LBBLUE];
		_NRDcar setObjectTextureGlobal [16,_LBWHITE];
		_NRDcar setObjectTextureGlobal [17,""];
		_NRDcar setHit ["Light_L", 1];
		_NRDcar setHit ["Light_R", 0];
		_Blue = "#lightpoint" createVehicleLocal getpos _NRDcar;
		_Blue lightAttachObject [ _NRDcar, [ 0.54, -0.26, 1.57 ] ];
		_Blue setLightAmbient[ 1.0, 0, 0];
		_Blue setlightColor[ 1.0, 0, 0];
		_Blue setLightIntensity _int;

		sleep .1;

		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,""];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 0];

		sleep .1;

		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,_LBRED];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,_LBRED];
		_NRDcar setObjectTextureGlobal [12,_LBBLUE];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,_LBBLUE];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,_LBWHITE];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 1];

		sleep .1;

		DeleteVehicle _Blue;
		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,""];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 0];

		sleep .1;

		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,_LBRED];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,_LBBLUE];
		_NRDcar setObjectTextureGlobal [16,_LBWHITE];
		_NRDcar setObjectTextureGlobal [17,""];
		_NRDcar setHit ["Light_L", 1];
		_NRDcar setHit ["Light_R", 0];
		_Blue = "#lightpoint" createVehicleLocal getpos _NRDcar;
		_Blue lightAttachObject [ _NRDcar, [ 0.54, -0.26, 1.57 ] ];
		_Blue setLightAmbient[ 0, 0, 1.0];
		_Blue setlightColor[ 0, 0, 1.0];
		_Blue setLightIntensity _int;

		sleep .1;
		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,""];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 0];

		sleep .1;

		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,_LBRED];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,_LBBLUE];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,_LBWHITE];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 1];

		sleep .1;

		DeleteVehicle _Blue;
		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,""];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 0];

		sleep .1;

		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,_LBRED];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,_LBBLUE];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,_LBWHITE];
		_NRDcar setObjectTextureGlobal [17,""];
		_NRDcar setHit ["Light_L", 1];
		_NRDcar setHit ["Light_R", 0];
		_Blue = "#lightpoint" createVehicleLocal getpos _NRDcar;
		_Blue lightAttachObject [ _NRDcar, [ 0.54, -0.26, 1.57 ] ];
		_Blue setLightAmbient[ 1.0, 0, 0];
		_Blue setlightColor[ 1.0, 0, 0];
		_Blue setLightIntensity _int;

		sleep .1;

		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,""];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 0];

		sleep .1;

		_NRDcar setObjectTextureGlobal [8,_LBRED];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,_LBBLUE];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,_LBWHITE];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 1];

		sleep .1;

		DeleteVehicle _Blue;
		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,""];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 0];

		sleep .1;

		_NRDcar setObjectTextureGlobal [8,_LBRED];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,_LBBLUE];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,_LBWHITE];
		_NRDcar setObjectTextureGlobal [17,""];
		_NRDcar setHit ["Light_L", 1];
		_NRDcar setHit ["Light_R", 0];
		_Blue = "#lightpoint" createVehicleLocal getpos _NRDcar;
		_Blue lightAttachObject [ _NRDcar, [ 0.54, -0.26, 1.57 ] ];
		_Blue setLightAmbient[ 0, 0, 1.0];
		_Blue setlightColor[ 0, 0, 1.0];
		_Blue setLightIntensity _int;

		sleep .1;

		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,""];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 0];

		sleep .1;

		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,_LBRED];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,_LBBLUE];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,_LBWHITE];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 1];

		sleep .1;

		DeleteVehicle _Blue;
		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,""];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 0];

		sleep .1;

		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,_LBRED];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,_LBBLUE];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,_LBWHITE];
		_NRDcar setObjectTextureGlobal [17,""];
		_NRDcar setHit ["Light_L", 1];
		_NRDcar setHit ["Light_R", 0];
		_Blue = "#lightpoint" createVehicleLocal getpos _NRDcar;
		_Blue lightAttachObject [ _NRDcar, [ 0.54, -0.26, 1.57 ] ];
		_Blue setLightAmbient[ 1.0, 0, 0];
		_Blue setlightColor[ 1.0, 0, 0];
		_Blue setLightIntensity _int;

		sleep .1;

		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,""];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 0];

		sleep .1;

		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,_LBRED];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,_LBBLUE];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,_LBWHITE];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 1];

		sleep .1;

		DeleteVehicle _Blue;
		_NRDcar setObjectTextureGlobal [8,""];
		_NRDcar setObjectTextureGlobal [9,""];
		_NRDcar setObjectTextureGlobal [10,""];
		_NRDcar setObjectTextureGlobal [11,""];
		_NRDcar setObjectTextureGlobal [12,""];
		_NRDcar setObjectTextureGlobal [13,""];
		_NRDcar setObjectTextureGlobal [14,""];
		_NRDcar setObjectTextureGlobal [15,""];
		_NRDcar setObjectTextureGlobal [16,""];
		_NRDcar setObjectTextureGlobal [17,""];
		_NRDcar setHit ["Light_L", 0];
		_NRDcar setHit ["Light_R", 0];
};

exit;