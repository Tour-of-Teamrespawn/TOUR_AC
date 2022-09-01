private ["_admin", "_unit", "_display", "_lb", "_pos", "_ctrl_btn_playerFreeze", "_ctrl_btn_playerGodMode"];
_display = ctrlParent (_this select 0);
_lb = _display displayCtrl 1699;
_name = _lb lnbText [(lnbCurSelRow _lb), 2];
_ctrl_btn_playerFreeze = _display displayCtrl 1615;
_ctrl_btn_playerGodMode = _display displayCtrl 1618;
_ctrl_btn_zeusToggle = _display displayCtrl 1621;
_unit = objNull;

{
	if (_name == name _x) then
	{
		_unit = _x;
	};
} forEach (allPlayers + (playableUnits - allPlayers) + (switchableUnits - allPlayers));

if (isNull _unit) exitWith 
{
	hint "You Need To Select A Unit First";
};

if (simulationEnabled _unit) then 
{
	_ctrl_btn_playerFreeze ctrlSetText "Freeze Player";
}else 
{
	_ctrl_btn_playerFreeze ctrlSetText "Unfreeze Player";
};

if (!isNil {_unit getVariable "TOUR_AC_godMode"}) then 
{
	_ctrl_btn_playerGodMode ctrlSetText "Reset Player Invunerable";
}else 
{
	_ctrl_btn_playerGodMode ctrlSetText "Set Player Invunerable";
};

if (isNil {missionNameSpace getVariable (format ["TOUR_AC_zeusModule_%1", name _unit])}) then
{
	_ctrl_btn_zeusToggle ctrlSetText "Create Zeus Module";
}else 
{
	_ctrl_btn_zeusToggle ctrlSetText "Remove Zeus Module";
};