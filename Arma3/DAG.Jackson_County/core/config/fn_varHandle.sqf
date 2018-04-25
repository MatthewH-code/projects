/*
	File: fn_varHandle.sqf
	Author: Bryan Tonic Boardwine
	
	Description:
	Master handler for getting a variables name, short name, etc.
*/
private["_var","_mode"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_var == "" OR _mode == -1) exitWith {""};

switch (_mode) do
{
	case 0:
	{
		switch (_var) do
		{
		    case "cleankit": {"life_inv_cleankit"};
		    case "panicbutton": {"life_inv_panicbutton"};
		    case "mobilephone": {"life_inv_mobilephone"};
			case "battery": {"life_inv_battery"};
		    case "bec": {"life_inv_bec"};
			case "BigMac": {"life_inv_BigMac"};
		    case "Taco": {"life_inv_Taco"};			
			case "medkit": {"life_inv_medkit"};
		    case "methu": {"life_inv_methu"};
		    case "methp": {"life_inv_methp"};   // into case 0 field 
			case "cokeu": {"life_inv_cokeu"};
			case "cokep": {"life_inv_cokep"};
			case "MDMAu": {"life_inv_MDMAu"};
			case "MDMAp": {"life_inv_MDMAp"};
			case "speedbomb": {"life_inv_speedbomb"};
            case "nitro": {"life_inv_nitro"};
			case "tierope": {"life_inv_tierope"};
			case "wood": {"life_inv_wood"};
			case "laminate": {"life_inv_laminate"};
			case "axe": {"life_inv_axe"};			
			case "heroinu": {"life_inv_heroinu"};
			case "heroinp": {"life_inv_heroinp"};
			case "marijuana": {"life_inv_marijuana"};
			case "apple": {"life_inv_apple"};
			case "apple seeds": {"life_inv_appleseeds"};
			case "water": {"life_inv_water"};
			case "rabbit": {"life_inv_rabbit"};
			case "salema": {"life_inv_salema"};
			case "ornate": {"life_inv_ornate"};
			case "mackerel": {"life_inv_mackerel"};
			case "tuna": {"life_inv_tuna"};
			case "mullet": {"life_inv_mullet"};
			case "catshark": {"life_inv_catshark"};
			case "turtle": {"life_inv_turtle"};
			case "fishing": {"life_inv_fishingpoles"};
			case "coffee": {"life_inv_coffee"};
			case "turtlesoup": {"life_inv_turtlesoup"};
			case "donuts": {"life_inv_donuts"};
			case "fuelE": {"life_inv_fuelE"};
			case "fuelF": {"life_inv_fuelF"};
			case "money": {"life_cash"};
			case "pickaxe": {"life_inv_pickaxe"};


			case "oilu": {"life_inv_oilu"};
			case "oilp": {"life_inv_oilp"};
			case "copperore": {"life_inv_copperore"};
			case "ironore": {"life_inv_ironore"};
			case "iron_r": {"life_inv_ironr"};
			case "copper_r": {"life_inv_copperr"};
			case "salt": {"life_inv_salt"};
			case "salt_r": {"life_inv_saltr"};
			case "sand": {"life_inv_sand"};
			case "glass": {"life_inv_glass"};
			case "diamond": {"life_inv_diamond"};
			case "diamondc": {"life_inv_diamondr"};
			case "cement": {"life_inv_cement"};
			case "rock": {"life_inv_rock"};




			case "tbacon": {"life_inv_tbacon"};
			case "lockpick": {"life_inv_lockpick"};
			case "redgull": {"life_inv_redgull"};
			case "peach": {"life_inv_peach"};




			case "goldbar": {"life_inv_goldbar"};
			case "blastingcharge": {"life_inv_blastingcharge"};
			case "hackingtool": {"life_inv_hackingtool"};
			case "boltcutter": {"life_inv_boltcutter"};
			case "defusekit": {"life_inv_defusekit"};
			case "storagesmall": {"life_inv_storagesmall"};
			case "storagebig": {"life_inv_storagebig"};
			case "wheat": {"life_inv_wheat"};
			case "sunflower": {"life_inv_sunflower"};
			case "corn": {"life_inv_corn"};
			case "bean": {"life_inv_bean"};
			case "cotton": {"life_inv_cotton"};
			case "olive": {"life_inv_olive"};
			case "opium": {"life_inv_opium"};
			case "cannabis": {"life_inv_cannabis"};
			case "pumpkin": {"life_inv_pumpkin"};
			case "wheat seed": {"life_inv_wheatseeds"};
			case "sunflower seed": {"life_inv_sunflowerseeds"};
			case "corn seed": {"life_inv_cornseeds"};
			case "bean seed": {"life_inv_beanseeds"};
			case "cotton seed": {"life_inv_cottonseeds"};
			case "olive seed": {"life_inv_oliveseeds"};
			case "opium seed": {"life_inv_opiumseeds"};
			case "cannabis seed": {"life_inv_cannabisseeds"};
			case "pumpkin seed": {"life_inv_pumpkinseeds"};
			case "raw goat meat": {"life_inv_rawgoatmeat"};
			case "raw chicken": {"life_inv_rawchicken"};
			case "raw sheep meat": {"life_inv_rawsheepmeat"};
			case "raw rabbit": {"life_inv_rawrabbit"};
			case "cigarette": {"life_inv_cigarette"};



			case "spikeStrip": {"life_inv_spikeStrip"};
			case "RoadConeStripB": {"life_inv_RoadConeStripB"};
			case "RoadConeB": {"life_inv_RoadConeB"};
			case "RoadConeStrip": {"life_inv_RoadConeStrip"};
			case "RoadCone": {"life_inv_RoadCone"};
			case "RoadBlockWood": {"life_inv_RoadBlockWood"};
			case "RoadBlockConc": {"life_inv_RoadBlockConc"};
			case "RoadBlockRebel": {"life_inv_RoadBlockRebel"};
			case "BarGate": {"life_inv_BarGate"};


				//beer glass  wine glass
			case "zoobeer": {"life_inv_zoobeer"}; // Duff Beer
			case "zoobeer2": {"life_inv_zoobeer2"};
			case "jackdaniels": {"life_inv_jackdaniels"};
			case "vodka": {"life_inv_vodka"};
			case "jagerbomb": {"life_inv_jagerbomb"};
			case "absinthe": {"life_inv_absinthe"};
			case "redwine": {"life_inv_redwine"};
			case "whitewine": {"life_inv_whitewhine"};
			case "whiterussian": {"life_inv_whiterussian"};
			case "sexonthebeach": {"life_inv_sexonthebeach"};
			case "tequila": {"life_inv_tequila"};
			case "jackdanielsandcoke": {"life_inv_jackdanielsandcoke"};
			case "feedbackstears": {"life_inv_feedbackstears"};
		};
	};
	
	case 1:
	{
		switch (_var) do
		{
			case "life_inv_panicbutton": {"panicbutton"};
			case "life_inv_cleankit": {"cleankit"};
			case "life_inv_mobilephone": {"mobilephone"};
			case "life_inv_battery": {"battery"};	
			case "life_inv_speedbomb": {"speedbomb"};
			case "life_inv_tierope": {"tierope"};
			case "life_inv_medkit": {"medkit"};			
			case "life_inv_MDMAu": {"MDMAu"};
			case "life_inv_MDMAp": {"MDMAp"}; // in the case 1 field 
			case "life_inv_bec": {"bec"};
			case "life_inv_BigMac": {"BigMac"};
			case "life_inv_Taco": {"Taco"};			
			case "life_inv_methu": {"methu"};
			case "life_inv_methp": {"methp"}; // in the case 1 field 
			case "life_inv_cokeu": {"cokeu"};
			case "life_inv_cokep": {"cokep"}; // in the case 1 field 
			case "life_inv_oilu": {"oilu"};
			case "life_inv_oilp": {"oilp"};
			case "life_inv_heroinu": {"heroinu"};
			case "life_inv_heroinp": {"heroinp"};
			case "life_inv_cannabis": {"cannabis"};
			case "life_inv_marijuana": {"marijuana"};
			case "life_inv_apple": {"apple"};
			case "life_inv_water": {"water"};
			case "life_inv_rabbit": {"rabbit"};
			case "life_inv_salema": {"salema"};
			case "life_inv_ornate": {"ornate"};
			case "life_inv_mackerel": {"mackerel"};
			case "life_inv_tuna": {"tuna"};
			case "life_inv_mullet": {"mullet"};
			case "life_inv_catshark": {"catshark"};
			case "life_inv_turtle": {"turtle"};
			case "life_inv_fishingpoles": {"fishing"};
			case "life_inv_coffee": {"coffee"};
			case "life_inv_turtlesoup": {"turtlesoup"};
			case "life_inv_donuts": {"donuts"};
			case "life_inv_fuelE": {"fuelE"};
			case "life_inv_fuelF": {"fuelF"};
			case "life_cash": {"money"};
			case "life_inv_pickaxe": {"pickaxe"};
			case "life_inv_copperore": {"copperore"};
			case "life_inv_ironore": {"ironore"};
			case "life_inv_ironr": {"iron_r"};
			case "life_inv_copperr": {"copper_r"};
			case "life_inv_sand": {"sand"};
			case "life_inv_salt": {"salt"};
			case "life_inv_nitro": {"nitro"};
			case "life_inv_glass": {"glass"};
			case "life_inv_redgull": {"redgull"};
			case "life_inv_lockpick": {"lockpick"};
			case "life_inv_tbacon": {"tbacon"};
			case "life_inv_peach": {"peach"};
			case "life_inv_diamond": {"diamond"};
			case "life_inv_diamondr": {"diamondc"};
			case "life_inv_saltr": {"salt_r"};
			case "life_inv_coke": {"cocaine"};
			case "life_inv_cokep": {"cocainep"};
			case "life_inv_spikeStrip": {"spikeStrip"};
			case "life_inv_cement": {"cement"};
			case "life_inv_rock": {"rock"};
			case "life_inv_goldbar": {"goldbar"};
			case "life_inv_blastingcharge": {"blastingcharge"};
			case "life_inv_boltcutter": {"boltcutter"};
			case "life_inv_defusekit": {"defusekit"};
			case "life_inv_storagesmall": {"storagesmall"};
			case "life_inv_storagebig": {"storagebig"};
			case "life_inv_wheat": {"wheat"};
			case "life_inv_sunflower": {"sunflower"};
			case "life_inv_corn": {"corn"};
			case "life_inv_bean": {"bean"};
			case "life_inv_cotton": {"cotton"};
			case "life_inv_olive": {"olive"};
			case "life_inv_opium": {"opium"};
			case "life_inv_cannabis": {"cannabis"};
			case "life_inv_pumpkin": {"pumpkin"};
			case "life_inv_wheatseeds": {"wheat seed"};
			case "life_inv_sunflowerseeds": {"sunflower seed"};
			case "life_inv_cornseeds": {"corn seed"};
			case "life_inv_beanseeds": {"bean seed"};
			case "life_inv_cottonseeds": {"cotton seed"};
			case "life_inv_oliveseeds": {"olive seed"};
			case "life_inv_opiumseeds": {"opium seed"};
			case "life_inv_cannabisseeds": {"cannabis seed"};
			case "life_inv_pumpkinseeds": {"pumpkin seed"};
			case "life_inv_rawgoatmeat": {"raw goat meat"};
			case "life_inv_rawchicken": {"raw chicken"};
			case "life_inv_rawsheepmeat": {"raw sheep meat"};
			case "life_inv_rawrabbit": {"raw rabbit"};
			case "life_inv_zoobeer": {"zoobeer"};


			case "life_inv_zoobeer2": {"zoobeer2"};
			case "life_inv_jackdaniels": {"jackdaniels"};
			case "life_inv_vodka": {"vodka"};
			case "life_inv_jagerbomb": {"jagerbomb"};
			case "life_inv_absinthe": {"absinthe"};
			case "life_inv_redwine": {"redwine"};
			case "life_inv_whitewine": {"whitewine"};
			case "life_inv_whiterussian": {"whiterussian"};
			case "life_inv_sexonthebeach": {"sexonthebeach"};
			case "life_inv_tequila": {"tequila"};
			case "life_inv_jackdanielsandcoke": {"jackdanielsandcoke"};
			case "life_inv_laminate": {"laminate"};
			case "life_inv_wood": {"wood"};
			case "life_inv_axe": {"axe"};			

			case "zoobeer2": {"life_inv_zoobeer2"};
			case "jackdaniels": {"life_inv_jackdaniels"};
			case "vodka": {"life_inv_vodka"};
			case "jagerbomb": {"life_inv_jagerbomb"};
			case "absinthe": {"life_inv_absinthe"};
			case "redwine": {"life_inv_redwine"};
			case "whitewine": {"life_inv_whitewhine"};
			case "whiterussian": {"life_inv_whiterussian"};
			case "sexonthebeach": {"life_inv_sexonthebeach"};
			case "tequila": {"life_inv_tequila"};
			case "jackdanielsandcoke": {"life_inv_jackdanielsandcoke"};


			case "life_inv_RoadConeStripB": {"RoadConeStripB"};
			case "life_inv_RoadConeB": {"RoadConeB"};
			case "life_inv_RoadConeStrip": {"RoadConeStrip"};
			case "life_inv_RoadCone": {"RoadCone"};
			case "life_inv_RoadBlockWood": {"RoadBlockWood"};
			case "life_inv_RoadBlockConc": {"RoadBlockConc"};
			case "life_inv_RoadBlockRebel": {"RoadBlockRebel"};
			case "life_inv_BarGate": {"BarGate"};
			case "life_inv_cigarette": {"cigarette"};
			case "life_inv_feedbackstears": {"feedbackstears"};
		};
	};
};
