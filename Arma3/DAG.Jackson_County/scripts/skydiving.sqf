

_backpack = unitBackpack player; 
if (("B_Parachute" == typeof _backpack)) then {  hint "HOLD ON TIGHT!!";    
 sleep 1;
 hint "HOLD ON TIGHT!!";
  sleep 1;
 hint "5";
  sleep 1;
 hint "4";
  sleep 1;
 hint "3";
  sleep 1;
 hint "2";
  sleep 1;
 hint "1";
  sleep 1;
 hint "Liftoff!!!";

 player setVelocity [0, 0, 8000];} else {hint "Go Buy a Parachute"};


