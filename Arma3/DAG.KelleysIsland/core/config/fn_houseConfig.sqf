/*
	
	
	Description:
	Master config file for buyable houses?
*/
private["_house"];
_house = param [0,"",[""]];
if(_house == "") exitWith {[]};

/*
	Return Format:
	[price,# of containers allowed]
*/
switch (true) do {
	case (_house in ["Land_jbad_a_villa"]): {[1550000,4]};
	case (_house in ["Land_i_house_small_02_v2_f","Land_i_house_small_02_v3_f","Land_i_house_small_02_v1_f"]): {[450000,2]};
	case (_house in ["Land_i_house_big_01_v3_f","Land_i_house_big_01_v2_f","Land_i_house_big_01_v1_f"]): {[950000,4]};

	case (_house in ["Land_i_stone_housebig_v1_f"]): {[565000,2]};

	case (_house in ["Land_i_house_small_03_v3_f"]): {[450000,2]};

	case (_house in ["Land_i_house_small_01_v2_f","Land_i_house_small_01_v1_f"]): {[450000,2]};

	case (_house in ["Land_slum_house_01"]): {[180000,1]};

	case (_house in ["Land_mbg_ger_hus_2"]): {[5400000,2]};
	default {[]};
};