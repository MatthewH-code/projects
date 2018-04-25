/*    Script file made by: Maximum    Idea based off: Liemans script - did way to much to achieve the same thing.    Description: Lets a officer request backup VIA scroll menu, made for AltisLifeRPG.com*/
if(!life_callBackup) exitWith hint format ["Sorry 1% You're not able to make a new call again so fast!",name _player];
_backupTime = 60;
[[player,_backupTime],"life_fnc_backupCall",west,false] call life_fnc_MP;
life_callBackup = false;
sleep _backupTime + 320;
life_callBackup = true;
hint format ["%1 You can now call for backup again",name player];