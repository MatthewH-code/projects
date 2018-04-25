#define ST_RIGHT 0x01
class osefStatusBar {
    idd = -1;
    onLoad = "uiNamespace setVariable ['osefStatusBar', _this select 0]";
    onUnload = "uiNamespace setVariable ['osefStatusBar', objNull]";
    onDestroy = "uiNamespace setVariable ['osefStatusBar', objNull]";
    fadein = 0;
    fadeout = 0;
    duration = 10e10;
    movingEnable = 0;
    controlsBackground[] = {};
    objects[] = {};
    class controls {
        class statusBarText {
        idc = 555556;
	x = safezoneX;
	y = safezoneY + safezoneH - 0.053;
	w = safezoneW;
	h = 0.06;
        shadow = 2;
	colorBackground[] = { 0, 0, 0, 0.5 };
	font = "PuristaSemibold";
	size = 0.03;
	type = 13;
	style = 1;
	text="";
	class Attributes {
	align="left";
	color = "#CCCCCC";//#5fe60c
            };
        };
    };
};