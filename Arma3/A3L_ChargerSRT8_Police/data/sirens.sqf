diag_log "SIRENS WORKING";
private["_vcl"];

_vcl = _this;


while {alive _vcl} do {


	if ((isEngineOn _vcl) && _vcl animationPhase "ani_siren" > 0 && getdammage _vcl < 0.7 && _vcl animationPhase "ani_lightbar" > 0) then {			
		_phase = _vcl animationPhase "ani_siren";
		_phase = _phase * 10;
		_phase = round _phase;
		
		switch (_phase) do {
			case (2): {
				_vcl say3D "Siren1";
				sleep 5.964;
			};
			
			case (4): {
				_vcl say3D "Siren2";
				sleep 5.191;
			};
		
			case (6): {
				_vcl say3D "Siren3";
				sleep 3.668;
			};
		};
		
	} else {
		waitUntil {sleep 2;(isEngineOn _vcl) && (_vcl animationPhase "ani_siren" > 0 && getdammage _vcl < 0.7 && _vcl animationPhase "ani_lightbar" > 0)};
	};	
};

exit;