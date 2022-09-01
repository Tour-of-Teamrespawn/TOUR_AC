#include "BIS_AddonInfo.hpp"
class CfgPatches
{
	class TOUR_AC
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 2.00;
		requiredAddons[] = {};
	};
};

#include "hpp\admin.hpp"
class RscStandardDisplay;

class RscDisplayInterrupt : RscStandardDisplay
{
	class controlsBackground
	{
		class TOUR_AC_btn_SP : TOUR_AC_RscButton
		{
			idc = 2;
			text = "Admin Console";
			action = "[] execVM 'TOUR_AC\init.sqf'";
			x = "safeZoneX + (safeZoneW / 9.00)";
			y = "safeZoneY + (safeZoneH / 3.600)";
			w = "safeZoneW / 10";
			h = "safeZoneH / 20";
			default = 0;
		};
	};
};

class RscDisplayMPInterrupt : RscStandardDisplay
{
	class controlsBackground
	{
		class TOUR_AC_btn_MP : TOUR_AC_RscButton
		{
			idc = 2;
			text = "Admin Console";
			action = "[] execVM 'TOUR_AC\init.sqf'";
			x = "safeZoneX + (safeZoneW / 9.00)";
			y = "safeZoneY + (safeZoneH / 3.600)";
			w = "safeZoneW / 10";
			h = "safeZoneH / 20";
			default = 0;
		};
	};
};

class RscTitles {
	class infomessage2 {
	idd = 103;
	movingEnable=1;
	duration = 10000000;
	fadeIn=0;
	name="infomessage2";
	controlsBackground[] = {"platoontext"};
	onLoad = "uiNamespace setVariable ['TOUR_AC_disp_playerList', _this select 0];";
	onUnload = "uiNamespace setVariable ['TOUR_AC_disp_playerList', objNull];";
	class platoontext {
		idc = 104;
		type = 13;
		style = 0x00;
		x = safeZoneX;
		y = (safeZoneY + 0.03);
		w = safeZoneW;
		h = 1.5;
		size = 0.02;
		colorBackground[] = {0,0,0,0};
		colorText[] = {1,1,1,0.8};
		text ="";
		class Attributes {
			align = "left";
			vAlign = "middle";
			size = "1.5";
			shadow = true;
			shadowColor = "#2D2D2D";
		};
	};
};
};
