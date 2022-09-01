////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Mr.Ben, v1.063, #Wifibi)
////////////////////////////////////////////////////////

#include "\a3\ui_f\hpp\definecommongrids.inc"
#include "defines.hpp"
#include "common.hpp"

class TOUR_AC_dlg
{
	idd = 181600;
	movingEnable = 0;
	onLoad = "_this call TOUR_AC_fn_onLoad";
	onUnload = "_this call TOUR_AC_fn_unLoad";

	class controlsBackground
	{
		class TOUR_AC_adlg_background: TOUR_AC_RscBackground
		{
			idc = -1;
			x = 3 * GUI_GRID_W + GUI_GRID_X;
			y = -18 * GUI_GRID_H + GUI_GRID_Y;
			w = 75 * GUI_GRID_W;
			h = 40 * GUI_GRID_H;
			colorBackground[] = {0.26,0.36,0.51,0.8};//{0.5,0.5,0.6,0.8};
			text = "";
			moving = 0;
		};
		class TOUR_AC_dlg_mapBackdrop: TOUR_AC_RscBackground
		{
			idc = -1;
			x = 22 * GUI_GRID_W + GUI_GRID_X;
			y = -1 * GUI_GRID_H + GUI_GRID_Y;
			w = 32 * GUI_GRID_W;
			h = 20.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,1};
			text = "";
			moving = 0;
		};
		class TOUR_AC_dlg_titleText: TOUR_AC_RscText
		{
			idc = -1;
			text = "ADMIN CONSOLE"; //--- ToDo: Localize;
			x = 9 * GUI_GRID_W + GUI_GRID_X;
			y = -17.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 30 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
			sizeEx = 3 * GUI_GRID_H;
			class Attributes 
			{ 
				font = "puristaMedium"; 
				color = "#C0C0C0"; 
				align = "left"; 
				valign = "middle"; 
				shadow = true; 
				shadowColor = "#000000";
				size = "3"; 
			};
		};
		class TOUR_AC_dlg_logo : TOUR_AC_RscBackground
		{
			idc = -1;
			style = ST_PICTURE;
			x = 5 * GUI_GRID_W + GUI_GRID_X;
			y = -17.75 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 4 * GUI_GRID_H;
			sizeEx = 3 * GUI_GRID_H;
			text = "TOUR_AC\img\squadLogo.paa";
		};
	};
	class controls
	{
		class TOUR_AC_dlg_btn_cancel: TOUR_AC_RscButton
		{
			idc = 1600;
			text = "X"; //--- ToDo: Localize;
			x = 72 * GUI_GRID_W + GUI_GRID_X;
			y = -17 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
			sizeEx = 2 * GUI_GRID_H;

		};

/*
		class TOUR_AC_dlg_list_playerList: TOUR_AC_RscListBox
		{
			idc = 1699;
			text = "X"; //--- ToDo: Localize;
			x = 5 * GUI_GRID_W + GUI_GRID_X;
			y = -13.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 33 * GUI_GRID_H;
			sizeEx = 0.75 * GUI_GRID_H;
		};
*/
		class TOUR_AC_dlg_list_playerList: TOUR_AC_RscListBox2
		{
			idc = 1699;
			text = "";
			columns[] = {0.05, 0.125, 0.2, 0.7};
			rowHeight = "0.035";
			x = 5 * GUI_GRID_W + GUI_GRID_X;
			y = -13.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 33 * GUI_GRID_H;
			tooltip = "Active Players"; 
			sizeEx = 1 * GUI_GRID_H;
		};


		class TOUR_AC_dlg_btn_TeleportAdmin: TOUR_AC_RscButton
		{
			idc = 1601;
			text = "Teleport To Me"; //--- ToDo: Localize;
			x = 22 * GUI_GRID_W + GUI_GRID_X;
			y = -13.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_playerKick: TOUR_AC_RscButton
		{
			idc = 1602;
			text = "Kick Player"; //--- ToDo: Localize;
			x = 33 * GUI_GRID_W + GUI_GRID_X;
			y = -13.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_playerPushups: TOUR_AC_RscButton
		{
			idc = 1604;
			text = "Pushups"; //--- ToDo: Localize;
			x = 55 * GUI_GRID_W + GUI_GRID_X;
			y = -13.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_TeleportLead: TOUR_AC_RscButton
		{
			idc = 1606;
			text = "Teleport To Leader"; //--- ToDo: Localize;
			x = 22 * GUI_GRID_W + GUI_GRID_X;
			y = -12 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_1607: TOUR_AC_RscButton
		{
			idc = 1607;
			text = "Eject From Vehicle"; //--- ToDo: Localize;
			x = 22 * GUI_GRID_W + GUI_GRID_X;
			y = -10.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_vehicleService: TOUR_AC_RscButton
		{
			idc = 1608;
			text = "Refuel Repair Rearm"; //--- ToDo: Localize;
			x = 22 * GUI_GRID_W + GUI_GRID_X;
			y = -9 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_1609: TOUR_AC_RscButton
		{
			idc = 1609;
			text = "Spare"; //--- ToDo: Localize;
			x = 22 * GUI_GRID_W + GUI_GRID_X;
			y = -7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_1610: TOUR_AC_RscButton
		{
			idc = 1610;
			text = "Spare"; //--- ToDo: Localize;
			x = 22 * GUI_GRID_W + GUI_GRID_X;
			y = -6 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_1611: TOUR_AC_RscButton
		{
			idc = 1611;
			text = "Spare"; //--- ToDo: Localize;
			x = 22 * GUI_GRID_W + GUI_GRID_X;
			y = -4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_1612: TOUR_AC_RscButton
		{
			idc = 1612;
			text = "Spare"; //--- ToDo: Localize;
			x = 22 * GUI_GRID_W + GUI_GRID_X;
			y = -3 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_playerBan: TOUR_AC_RscButton
		{
			idc = 1613;
			text = "Ban Player"; //--- ToDo: Localize;
			x = 33 * GUI_GRID_W + GUI_GRID_X;
			y = -12 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_joinInfo: TOUR_AC_RscButton
		{
			idc = 1614;
			text = "Player Join Info"; //--- ToDo: Localize;
			x = 33 * GUI_GRID_W + GUI_GRID_X;
			y = -10.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_playerFreeze: TOUR_AC_RscButton
		{
			idc = 1615;
			text = "Freeze Player"; //--- ToDo: Localize;
			x = 33 * GUI_GRID_W + GUI_GRID_X;
			y = -9 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_playerKill: TOUR_AC_RscButton
		{
			idc = 1616;
			text = "Kill Player"; //--- ToDo: Localize;
			x = 33 * GUI_GRID_W + GUI_GRID_X;
			y = -7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_playerHeal: TOUR_AC_RscButton
		{
			idc = 1617;
			text = "Heal Player"; //--- ToDo: Localize;
			x = 33 * GUI_GRID_W + GUI_GRID_X;
			y = -6 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_playerGodMode: TOUR_AC_RscButton
		{
			idc = 1618;
			text = "Set Player Invunerable"; //--- ToDo: Localize;
			x = 33 * GUI_GRID_W + GUI_GRID_X;
			y = -4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_playerArsenal: TOUR_AC_RscButton
		{
			idc = 1619;
			text = "Open Arsenal For Player"; //--- ToDo: Localize;
			x = 33 * GUI_GRID_W + GUI_GRID_X;
			y = -3 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_RankSet: TOUR_AC_RscButton
		{
			idc = 1620;
			text = "Set Rank"; //--- ToDo: Localize;
			x = 44 * GUI_GRID_W + GUI_GRID_X;
			y = -12 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_groupJoin: TOUR_AC_RscButton
		{
			idc = 1622;
			text = "Join Selected Group"; //--- ToDo: Localize;
			x = 44 * GUI_GRID_W + GUI_GRID_X;
			y = -9 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_1623: TOUR_AC_RscButton
		{
			idc = 1623;
			text = "Promote To Group Leader"; //--- ToDo: Localize;
			x = 44 * GUI_GRID_W + GUI_GRID_X;
			y = -7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_1624: TOUR_AC_RscButton
		{
			idc = 1624;
			text = "Copy Unit Loadout"; //--- ToDo: Localize;
			x = 44 * GUI_GRID_W + GUI_GRID_X;
			y = -6 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_1625: TOUR_AC_RscButton
		{
			idc = 1625;
			text = "Give Unit Loadout"; //--- ToDo: Localize;
			x = 44 * GUI_GRID_W + GUI_GRID_X;
			y = -4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_1626: TOUR_AC_RscButton
		{
			idc = 1626;
			text = "Open Arsenal For Admin"; //--- ToDo: Localize;
			x = 44 * GUI_GRID_W + GUI_GRID_X;
			y = -3 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_combo_rankSelect: TOUR_AC_RscCombo
		{
			idc = 2100;
			text = "Select Rank"; //--- ToDo: Localize;
			x = 44 * GUI_GRID_W + GUI_GRID_X;
			y = -13.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_combo_groupSelect: TOUR_AC_RscCombo
		{
			idc = 2101;
			text = "Group Names"; //--- ToDo: Localize;
			x = 44 * GUI_GRID_W + GUI_GRID_X;
			y = -10.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_playerSquats: TOUR_AC_RscButton
		{
			idc = 1627;
			text = "Squats"; //--- ToDo: Localize;
			x = 55 * GUI_GRID_W + GUI_GRID_X;
			y = -12 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_1628: TOUR_AC_RscButton
		{
			idc = 1628;
			text = "Dance"; //--- ToDo: Localize;
			x = 55 * GUI_GRID_W + GUI_GRID_X;
			y = -10.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_1629: TOUR_AC_RscButton
		{
			idc = 1629;
			text = "Spare"; //--- ToDo: Localize;
			x = 55 * GUI_GRID_W + GUI_GRID_X;
			y = -9 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_1630: TOUR_AC_RscButton
		{
			idc = 1630;
			text = "Spare"; //--- ToDo: Localize;
			x = 55 * GUI_GRID_W + GUI_GRID_X;
			y = -7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_1631: TOUR_AC_RscButton
		{
			idc = 1631;
			text = "Spare"; //--- ToDo: Localize;
			x = 55 * GUI_GRID_W + GUI_GRID_X;
			y = -6 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_1603: TOUR_AC_RscButton
		{
			idc = 1603;
			text = "Spare"; //--- ToDo: Localize;
			x = 55 * GUI_GRID_W + GUI_GRID_X;
			y = -4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_1605: TOUR_AC_RscButton
		{
			idc = 1605;
			text = "Previous Code"; //--- ToDo: Localize;
			x = 55 * GUI_GRID_W + GUI_GRID_X;
			y = -3 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_zeusToggle: TOUR_AC_RscButton
		{
			idc = 1621;
			text = "Toggle Zeus Module"; //--- ToDo: Localize;
			x = 66 * GUI_GRID_W + GUI_GRID_X;
			y = -13.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_zeusObjects: TOUR_AC_RscButton
		{
			idc = 1632;
			text = "Add Current Objects"; //--- ToDo: Localize;
			x = 66 * GUI_GRID_W + GUI_GRID_X;
			y = -12 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_zeusSkill: TOUR_AC_RscButton
		{
			idc = 1633;
			text = "Set Standard Skill"; //--- ToDo: Localize;
			x = 66 * GUI_GRID_W + GUI_GRID_X;
			y = -10.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_spare_1634: TOUR_AC_RscButton
		{
			idc = 1634;
			text = "Spare"; //--- ToDo: Localize;
			x = 66 * GUI_GRID_W + GUI_GRID_X;
			y = -9 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_spare_1635: TOUR_AC_RscButton
		{
			idc = 1635;
			text = "Spare"; //--- ToDo: Localize;
			x = 66 * GUI_GRID_W + GUI_GRID_X;
			y = -7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_spare_1636: TOUR_AC_RscButton
		{
			idc = 1636;
			text = "Spare"; //--- ToDo: Localize;
			x = 66 * GUI_GRID_W + GUI_GRID_X;
			y = -6 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_1637: TOUR_AC_RscButton
		{
			idc = 1637;
			text = "Spare"; //--- ToDo: Localize;
			x = 66 * GUI_GRID_W + GUI_GRID_X;
			y = -4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_1638: TOUR_AC_RscButton
		{
			idc = 1638;
			text = "Next Code"; //--- ToDo: Localize;
			x = 66 * GUI_GRID_W + GUI_GRID_X;
			y = -3 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		
		class TOUR_AC_dlg_edit_dialog: TOUR_AC_RscEdit
		{
			idc = 1400;
			style = ST_LEFT + ST_UP + ST_MULTI;
			x = 55 * GUI_GRID_W + GUI_GRID_X;
			y = -1 * GUI_GRID_H + GUI_GRID_Y;
			w = 21 * GUI_GRID_W;
			h = 15.5 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,1};
			colorActive[] = {0,0,0,1};
		};
		class TOUR_AC_dlg_controls_map: TOUR_AC_RscMap
		{
			idc = 2301;
			x = 22 * GUI_GRID_W + GUI_GRID_X;
			y = -1 * GUI_GRID_H + GUI_GRID_Y;
			w = 32 * GUI_GRID_W;
			h = 20.5 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_completeMission: TOUR_AC_RscButton
		{
			idc = 1640;
			text = "Complete Mission"; //--- ToDo: Localize;
			x = 55 * GUI_GRID_W + GUI_GRID_X;
			y = 17 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_RC: TOUR_AC_RscButton
		{
			idc = 1641;
			text = "Respawn Control"; //--- ToDo: Localize;
			x = 55 * GUI_GRID_W + GUI_GRID_X;
			y = 18.5 * GUI_GRID_H + GUI_GRID_Y; //29
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_RscButton_failMission: TOUR_AC_RscButton
		{
			idc = 1642;
			text = "Fail Mission"; //--- ToDo: Localize;
			x = 66 * GUI_GRID_W + GUI_GRID_X;
			y = 17 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_code: TOUR_AC_RscButton
		{
			idc = 1643;
			text = "Execute Code"; //--- ToDo: Localize;
			x = 66 * GUI_GRID_W + GUI_GRID_X;
			y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_btn_SpectatorToggle: TOUR_AC_RscButton
		{
			idc = 1644;
			text = "Enable Spectator"; //--- ToDo: Localize;
			x = 66 * GUI_GRID_W + GUI_GRID_X;
			y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
			colorActive[] = {0,0,0,0.5};
			sizeEx = 1 * GUI_GRID_H;
		};
		class TOUR_AC_dlg_combo_code: TOUR_AC_RscCombo
		{
			idc = 2102;
			x = 55 * GUI_GRID_W + GUI_GRID_X;
			y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
	};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
