private["_NRDcar"];
_NRDcar = _this;

while {alive _NRDcar} do
{	
	_phasedirectional = _NRDcar animationPhase "ani_directional";

    switch (_phasedirectional) do {
	
	case (0.1): { // Warning = Flash lights 18 and 22 twice each
	
		//Turn on the 18
		_NRDcar setObjectTexture [18,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [19,""];
		_NRDcar setObjectTexture [20,""];
		_NRDcar setObjectTexture [21,""];
		_NRDcar setObjectTexture [22,""];

		
		sleep 0.1;
		
		//Turn off the 18
		_NRDcar setObjectTexture [18,""];
		_NRDcar setObjectTexture [19,""];
		_NRDcar setObjectTexture [20,""];
		_NRDcar setObjectTexture [21,""];
		_NRDcar setObjectTexture [22,""];
	
		
		sleep 0.1;
		
		//Turn on the 18
		_NRDcar setObjectTexture [18,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [19,""];
		_NRDcar setObjectTexture [20,""];
		_NRDcar setObjectTexture [21,""];
		_NRDcar setObjectTexture [22,""];	
	

        sleep 0.2;
			
		//Turn on the 22
		_NRDcar setObjectTexture [18,""];
		_NRDcar setObjectTexture [19,""];
		_NRDcar setObjectTexture [20,""];
		_NRDcar setObjectTexture [21,""];
		_NRDcar setObjectTexture [22,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		

		sleep 0.1;
		
		//Turn off the 22
		_NRDcar setObjectTexture [18,""];
		_NRDcar setObjectTexture [19,""];
		_NRDcar setObjectTexture [20,""];
		_NRDcar setObjectTexture [21,""];
		_NRDcar setObjectTexture [22,""];
	

		sleep 0.1;
		
		//Turn on the 22
		_NRDcar setObjectTexture [18,""];
		_NRDcar setObjectTexture [19,""];
		_NRDcar setObjectTexture [20,""];
		_NRDcar setObjectTexture [21,""];
		
		
		sleep 0.2;
		 
		 
		
    };
	
	case (0.2): { // Flashing -> Alternating 18+20+22 with 19+21+22
	
		//Turn on the 18+20+22 and off the others
		_NRDcar setObjectTexture [18,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [19,""];
		_NRDcar setObjectTexture [20,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [21,""];
		_NRDcar setObjectTexture [22,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		

        sleep 0.3;
	
		//Turn on the 19+21 and off the others
		_NRDcar setObjectTexture [18,""];
		_NRDcar setObjectTexture [19,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [20,""];
		_NRDcar setObjectTexture [21,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [22,""];	
	
		
		 sleep 0.3;
	
	};
	case (0.3): {
	

		_NRDcar setObjectTexture [18,""];
		_NRDcar setObjectTexture [19,""];
		_NRDcar setObjectTexture [20,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [21,""];
		_NRDcar setObjectTexture [22,""];
	

        sleep 0.3;
	

		_NRDcar setObjectTexture [18,""];
		_NRDcar setObjectTexture [19,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [20,""];
		_NRDcar setObjectTexture [21,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [22,""];
		
		
		 sleep 0.3;

		_NRDcar setObjectTexture [18,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [19,""];
		_NRDcar setObjectTexture [20,""];
		_NRDcar setObjectTexture [21,""];
		_NRDcar setObjectTexture [22,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];		

		 sleep 0.3;
	
	};

	case (0.4): {
	

		_NRDcar setObjectTexture [18,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [19,""];
		_NRDcar setObjectTexture [20,""];
		_NRDcar setObjectTexture [21,""];
		_NRDcar setObjectTexture [22,""];	
	

        sleep 0.3;
	

		_NRDcar setObjectTexture [18,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [19,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [20,""];
		_NRDcar setObjectTexture [21,""];
		_NRDcar setObjectTexture [22,""];	
	
		
		 sleep 0.3;

		_NRDcar setObjectTexture [18,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [19,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [20,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [21,""];
		_NRDcar setObjectTexture [22,""];
			
		
		 sleep 0.3;

		_NRDcar setObjectTexture [18,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [19,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [20,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [21,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [22,""];	
		
		
		 sleep 0.3;

		_NRDcar setObjectTexture [18,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [19,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [20,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [21,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [22,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		
		
		 sleep 0.3;
	
	};

	case (0.5): {
	

		_NRDcar setObjectTexture [18,""];
		_NRDcar setObjectTexture [19,""];
		_NRDcar setObjectTexture [20,""];
		_NRDcar setObjectTexture [21,""];
		_NRDcar setObjectTexture [22,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
			

        sleep 0.3;
	

		_NRDcar setObjectTexture [18,""];
		_NRDcar setObjectTexture [19,""];
		_NRDcar setObjectTexture [20,""];
		_NRDcar setObjectTexture [21,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [22,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];	
		
		 sleep 0.3;

		_NRDcar setObjectTexture [18,""];
		_NRDcar setObjectTexture [19,""];
		_NRDcar setObjectTexture [20,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [21,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [22,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];	
		
		 sleep 0.3;

		_NRDcar setObjectTexture [18,""];
		_NRDcar setObjectTexture [19,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [20,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [21,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [22,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		
		 sleep 0.3;

		_NRDcar setObjectTexture [18,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [19,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [20,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [21,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		_NRDcar setObjectTexture [22,"#(argb,8,8,3)color(1,0.501961,0,1.0,co)"];
		
		
		 sleep 0.3;
	
	};


// color #(argb,8,8,3)color(1,0.501961,0,1.0,co)
		
	case (0): { // All Off
	
		// Check if directional is using lightbar and release it
	
		_NRDcar setObjectTexture [18,""];
		_NRDcar setObjectTexture [19,""];
		_NRDcar setObjectTexture [20,""];
		_NRDcar setObjectTexture [21,""];
		_NRDcar setObjectTexture [22,""];

		
        waitUntil {_NRDcar animationPhase "ani_directional" != 0};
    };

	}; //END SWITCH
	sleep 0.01;
}; // END WHILE
exit;