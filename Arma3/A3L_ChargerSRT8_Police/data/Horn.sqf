private['_handled'];
_handled = false;
switch (_this select 1) do
{
	//F key
	case 33: 
	{
		playSound3D ["A3L_ChargerSRT8_Police\Sounds\dodge\snds\AIRHORN.wav", player, false, getPosASL player, 1, 1, 0]
		_handled = true;
	};
};
_handled;