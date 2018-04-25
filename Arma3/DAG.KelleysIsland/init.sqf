// TFR Variables API
tf_no_auto_long_range_radio = true; 
tf_west_radio_code = "_alliance";
tf_east_radio_code = "_opfor";
tf_guer_radio_code = "_alliance";
tf_civ_radio_code = "_opfor";

// Different depending on server
tf_radio_channel_name = "TaskForceRadio";

enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};

life_versionInfo = "ArmA 3 Life 5.0.1";
[] execVM "briefing.sqf";
[] execVM "KRON_Strings.sqf";
[] execVM "scripts\szs.sqf";
[] execVM "scripts\monitor.sqf";
[] execVM "scripts\disableSnakes.sqf";
[] execVM "core\cop\fn_teargas.sqf";

StartProgress = true;

//Performance
setTerrainGrid 40;
setViewDistance 1000;
setObjectViewDistance [800,50];

 


 