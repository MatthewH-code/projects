class DeathScreen
{
	idd = 7300;
	name = "Life_Death_Screen";
	movingEnabled = false;
	enableSimulation = true;
	
	class Controls
	{
				controls[]=
		{
			dag_ds_bg1,
			MedicsOnline,
			MedicsNearby,
			RespawnBtn,
			MedicBtn,
			respawnTime
		};
		class dag_ds_bg1: RscText
		{
			idc = 7337;
			text = "Well... You've died";
			x = 0.380547 * safezoneW + safezoneX;
			y = 0.00697734 * safezoneH + safezoneY;
			w = 0.278724 * safezoneW;
			h = 0.0340016 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.9};
			
		};
		class MedicsOnline: RscText
		{
			idc = 7304;
			text = "Medics Online: 1";
			x = 0.380547 * safezoneW + safezoneX;
			y = 0.0409789 * safezoneH + safezoneY;
			w = 0.278724 * safezoneW;
			h = 0.0340016 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.7};
		};
		class MedicsNearby: RscText
		{
			idc = 7305;
			text = "Medics Nearby: No";
			x = 0.380547 * safezoneW + safezoneX;
			y = 0.0749805 * safezoneH + safezoneY;
			w = 0.278724 * safezoneW;
			h = 0.0340016 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.7};
		};
		class RespawnBtn: life_RscButtonMenu
		{
			idc = 7302;
			text = "Respawn";
			x = 0.380547 * safezoneW + safezoneX;
			y = 0.142984 * safezoneH + safezoneY;
			w = 0.278724 * safezoneW;
			h = 0.0340016 * safezoneH;
			onButtonClick = "closeDialog 0; life_respawned = true; [] call life_fnc_spawnMenu;";
			colorBackground[] = {-1,-1,-1,0.7};
		};
		class MedicBtn: life_RscButtonMenu
		{
			idc = 7303;
			text = "Request Medic";
			x = 0.380547 * safezoneW + safezoneX;
			y = 0.108982 * safezoneH + safezoneY;
			w = 0.278724 * safezoneW;
			h = 0.0340016 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.7};
			onButtonClick = "[] call life_fnc_requestMedic;";
		};
		class respawnTime: RscText
		{
			idc = 7301;
			text = " ";
			x = 0.380547 * safezoneW + safezoneX;
			y = 0.142984 * safezoneH + safezoneY;
			w = 0.278724 * safezoneW;
			h = 0.0340016 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.7};

		};
	};
};