/*
	File: fn_useCoke.sqf
	@Deo	
	Description:
	Use Coke Effect
*/

#include <macro.h>
 

if (vehicle player != player) then 
{
player playMove "AmovPercMstpSnonWnonDnon_Scared2";
waitUntil{animationState player != "AmovPercMstpSnonWnonDnon_Scared2";};
};

[[0,format["%1 looks high on Cocaine!",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 25],false] spawn life_fnc_MP;
closeDialog 0;
life_hunger = 60;
life_thirst = 60;

"chromAberration" ppEffectAdjust [random 0.05,random 0.05,true];
"chromAberration" ppEffectCommit 4; 
life_redgull_effect = time;
titleText[localize "Yep, that hit the spot!","PLAIN"];
player enableFatigue false;
waitUntil {!alive player OR ((time - life_redgull_effect) > (15 * 60))};
player enableFatigue true;

hint "You are having cold sweats - your body needs a meal or more meth!";
"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;
life_thirst = 20;
life_hunger = 20;