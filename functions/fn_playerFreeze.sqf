private ["_admin", "_unit", "_display", "_lb", "_pos", "_ctrl_btn_playerFreeze"];
_display = ctrlParent (_this select 0);
_lb = _display displayCtrl 1699;
_ctrl_btn_playerFreeze = _display displayCtrl 1615;
_name = _lb lnbText [(lnbCurSelRow _lb), 2];

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
	hint format ["%1 Frozen", _unit];
	_ctrl_btn_playerFreeze ctrlSetText "Unfreeze player";
	[format ["[ADMIN CONSOLE] %1 executed command: Disable simulation for %2", name player, name _unit]]remoteExecCall["diag_log", 2, false];
}else 
{
	hint format ["%1 Unfrozen", _unit];
	_ctrl_btn_playerFreeze ctrlSetText "Freeze player";
	[format ["[ADMIN CONSOLE] %1 executed command: Enable simulation for %2", name player, name _unit]]remoteExecCall["diag_log", 2, false];
};

[[_unit],
{
	if (simulationEnabled (_this select 0)) then 
	{
		(_this select 0) enableSimulationGlobal false;
	}else 
	{
		(_this select 0) enableSimulationGlobal true;
	};
}] remoteExecCall ["BIS_fnc_spawn", 2, false];