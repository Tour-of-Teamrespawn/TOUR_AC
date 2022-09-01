TOUR_AC_Operational = true;

private _unit = player;
private _display = _this select 0;

//////////////////////////////////////////////////////////////////////////
//																		//
//                         CONTORL ITEMS								//
//																		//
//////////////////////////////////////////////////////////////////////////


//misc controls
private _ctrl_btn_Exit = _display displayCtrl 1600;
private _ctrl_list_players = _display displayCtrl 1699;
private _ctrl_edit_debug = _display displayCtrl 1400;
private _ctrl_map = _display displayCtrl 2301;

//control set 1
private _ctrl_btn_teleportAdmin = _display displayCtrl 1601;
private _ctrl_btn_teleportLeader = _display displayCtrl 1606;
private _ctrl_btn_playerEject = _display displayCtrl 1607;
private _ctrl_btn_serviceVehicle = _display displayCtrl 1608;
//private _ctrl_btn_FuelVehicle = _display displayCtrl 1605;
//private _ctrl_btn_Exit = _display displayCtrl 1605;
//private _ctrl_btn_Exit = _display displayCtrl 1605;
//private _ctrl_btn_Exit = _display displayCtrl 1605;

//control set 2
private _ctrl_btn_playerKick = _display displayCtrl 1602;
private _ctrl_btn_playerBan = _display displayCtrl 1613;
private _ctrl_btn_playerJoinInfo = _display displayCtrl 1614;
private _ctrl_btn_playerFreeze = _display displayCtrl 1615;
private _ctrl_btn_playerKill = _display displayCtrl 1616;
private _ctrl_btn_playerHeal = _display displayCtrl 1617;
private _ctrl_btn_playerGodMode = _display displayCtrl 1618;
private _ctrl_btn_playerArsenal = _display displayCtrl 1619;

//control set 2
private _ctrl_combo_rankSelect = _display displayCtrl 2100;
private _ctrl_btn_rankSet = _display displayCtrl 1620;
private _ctrl_btn_groupSelect = _display displayCtrl 2101;
private _ctrl_btn_groupJoin = _display displayCtrl 1622;
private _ctrl_btn_groupLeader = _display displayCtrl 1623;
private _ctrl_btn_playerLoadoutCopy = _display displayCtrl 1624;
private _ctrl_btn_playerLoadoutPaste = _display displayCtrl 1625;
private _ctrl_btn_playerArsenalAdmin = _display displayCtrl 1626;

//control set 3
private _ctrl_btn_playerPushups = _display displayCtrl 1604;
private _ctrl_btn_playerSquats = _display displayCtrl 1627;
private _ctrl_btn_playerDance = _display displayCtrl 1628;
//private _ctrl_btn_Exit = _display displayCtrl 1604;
//private _ctrl_btn_Exit = _display displayCtrl 1605;
//private _ctrl_btn_Exit = _display displayCtrl 1605;
//private _ctrl_btn_Exit = _display displayCtrl 1605;
private _ctrl_btn_debugPrevious = _display displayCtrl 1605;

//control set 4
private _ctrl_btn_zeusToggle = _display displayCtrl 1621;
private _ctrl_btn_zeusAddObjects = _display displayCtrl 1632;
private _ctrl_btn_zeusServerSkill = _display displayCtrl 1633;
//private _ctrl_btn_Exit = _display displayCtrl 1605;
//private _ctrl_btn_Exit = _display displayCtrl 1605;
//private _ctrl_btn_Exit = _display displayCtrl 1605;
//private _ctrl_btn_Exit = _display displayCtrl 1605;
private _ctrl_btn_debugNext = _display displayCtrl 1638;

//control set 5
private _ctrl_combo_code = _display displayCtrl 2102;
private _ctrl_btn_missionComplete = _display displayCtrl 1640;
private _ctrl_btn_spectatorToggle = _display displayCtrl 1644;


//control set 6
private _ctrl_btn_code = _display displayCtrl 1643;
private _ctrl_btn_missionFail = _display displayCtrl 1642;
private _ctrl_btn_respawnControl = _display displayCtrl 1641;


//////////////////////////////////////////////////////////////////////////
//																		//
//                         CONTROL EVENT HANDLERS						//
//																		//
//////////////////////////////////////////////////////////////////////////


//misc controls
_ctrl_btn_Exit ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_unLoad"];
_ctrl_map ctrlSetEventHandler ["MouseButtonDblClick", "_this call TOUR_AC_fn_onMapDoubleClick"];
_ctrl_list_players ctrlSetEventHandler ["lbSelChanged", "_this call TOUR_AC_fn_playerSelChanged"];

//control set 1
_ctrl_btn_teleportAdmin ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_teleportAdmin"];
_ctrl_btn_teleportLeader ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_teleportLeader"];
_ctrl_btn_playerEject ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_playerEject"];
_ctrl_btn_serviceVehicle ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_serviceVehicle"];

//control set 2
_ctrl_btn_playerKick ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_playerKick"];
_ctrl_btn_playerBan ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_playerBan"];
_ctrl_btn_playerJoinInfo ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_playerJoinInfo"];
_ctrl_btn_playerFreeze ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_playerFreeze"];
_ctrl_btn_playerKill ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_playerKill"];
_ctrl_btn_playerHeal ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_playerHeal"];
_ctrl_btn_playerGodMode ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_playerGodMode"];
_ctrl_btn_playerArsenal ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_playerArsenal"];

//control set 2
//_ctrl_combo_rankSelect ctrlSetEventHandler ["lbSelChanged", "_this call TOUR_AC_fn_onRankSelChanged"];
_ctrl_btn_rankSet ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_rankSet"];
_ctrl_btn_groupSelect ctrlSetEventHandler ["lbSelChanged", "_this call TOUR_AC_fn_onGroupSelChanged"];
_ctrl_btn_groupJoin ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_groupJoin"];
_ctrl_btn_groupLeader ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_groupLeader"];
_ctrl_btn_playerLoadoutCopy ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_playerLoadoutCopy"];
_ctrl_btn_playerLoadoutPaste ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_playerLoadoutPaste"];
_ctrl_btn_playerArsenalAdmin ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_playerArsenalAdmin"];

//control set 3
_ctrl_btn_playerPushups ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_playerPushups"];
_ctrl_btn_playerSquats ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_playerSquats"];
_ctrl_btn_playerDance ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_playerDance"];
_ctrl_btn_debugPrevious ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_debugPrevious"];

//control set 4
_ctrl_btn_zeusToggle ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_zeusToggle"];
_ctrl_btn_zeusAddObjects ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_zeusAddObjects"];
_ctrl_btn_zeusServerSkill ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_zeusServerSkill"];
_ctrl_btn_debugNext ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_debugNext"];

//control set 5
_ctrl_btn_respawnControl ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_respawnControl"];
_ctrl_btn_missionComplete ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_missionComplete"];

//control set 6
_ctrl_btn_code ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_btn_code"];
_ctrl_btn_spectatorToggle ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_spectatorToggle"];
_ctrl_btn_missionFail ctrlSetEventHandler ["ButtonDown", "_this call TOUR_AC_fn_missionFail"];

if ((isNil "TOUR_RC_deadUIDs") && (!isNil {missionNameSpace getVariable "TOUR_RC_deadUIDs"})) then 
{
	_ctrl_btn_respawnControl ctrlEnable false;
};

if (!isNil "TOUR_AC_debugCode") then 
{
	if (count TOUR_AC_debugCode > 0) then 
	{
		_code = (TOUR_AC_debugCode select TOUR_AC_debugIndex);
		_ctrl_edit_debug ctrlSetText _code;
	};
}else
{
	TOUR_AC_debugCode = [];
	TOUR_AC_debugIndex = 0;
};

// DEBUG combo
[_ctrl_combo_code] spawn
{
	disableSerialization;
	
	params ["_lb"];
	{
		_lb lbAdd _x;
	} foreach ["GLOBAL","SERVER","LOCAL"];
	{
		_lb lbAdd (name _x);
	} foreach (allPlayers + (playableUnits - allPlayers) + (switchableUnits - allPlayers));
	_lb lbsetcursel 0;
};

// RANKS combo
[_ctrl_combo_rankSelect] spawn
{
	disableSerialization;
	
	params ["_lb"];
	{
		_lb lbAdd gettext (_x >> "displayName");
	} foreach ("isclass _x" configclasses (configfile >> "CfgRanks"));
	_lb lbsetcursel 0;
};

// GROUPS combo 
[_ctrl_btn_groupSelect] spawn
{
	disableSerialization;
	
	params ["_lb"];
	private ["_list"];
	waitUntil 
	{
		_list = [];
		{
			_list pushBackUnique (groupID (group _x));
		}forEach (allPlayers + (playableUnits - allPlayers) + (switchableUnits - allPlayers));
		_list call BIS_fnc_sortAlphabetically;
		lbClear _lb;
		{
			_lb lbAdd _x;
		}forEach _list;
		if (lbcursel _lb == -1) then 
		{
			_lb lbSetCurSel 0;
		};
		sleep 1;
		isNil "TOUR_AC_Operational"
	};
};

//update players
[_ctrl_list_players] spawn
{
	disableSerialization;
	
	params ["_lb"];
	waitUntil 
	{
		_lb call TOUR_AC_fn_playerRefresh;
		isNil "TOUR_AC_Operational"
	};
};

[] spawn
{
	disableSerialization;
	TOUR_AC_playerMarkers = [];
	waitUntil 
	{
		[] call TOUR_AC_fn_playerMarker;
		isNil "TOUR_AC_Operational"
	};

	{
		deleteMarkerLocal _x;
	}forEach TOUR_AC_playerMarkers;
};

// set specator toggle text
if (["IsInitialized"] call BIS_fnc_EGSpectator) then 
{
	_ctrl_btn_spectatorToggle ctrlSetText "Disable Spectator";
}else 
{
	_ctrl_btn_spectatorToggle ctrlSetText "Enable Spectator";
};