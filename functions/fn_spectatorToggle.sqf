private ["_ctrl_btn_spectatorToggle","_unit", "_display", "_lb", "_name"];
_ctrl_btn_spectatorToggle = _this select 0;
_display = ctrlParent (_this select 0);
_lb = _display displayCtrl 1699;
_name = _lb lnbText [(lnbCurSelRow _lb), 2];

_unit = objNull;
{
	if (_name == name _x) then
	{
		_unit = _x;
	};
} forEach (allPlayers + (playableUnits - allPlayers) + (switchableUnits - allPlayers));

if (isNull _unit) then
{
	_unit = player;
};

if (["IsInitialized"] call BIS_fnc_EGSpectator) then 
{
	["Terminate"] call BIS_fnc_EGSpectator;
	_ctrl_btn_spectatorToggle ctrlSetText "Enable Spectator";
	[format ["[ADMIN CONSOLE] %1 executed command: Spectator mode off", name player, name _unit]]remoteExecCall["diag_log", 2, false];
}else 
{
	["Initialize",[_unit, [], true, true, true, true, true, true, true, true]] call BIS_fnc_EGSpectator;
	_ctrl_btn_spectatorToggle ctrlSetText "Disable Spectator";
	[format ["[ADMIN CONSOLE] %1 executed command: Spectator mode on", name player, name _unit]]remoteExecCall["diag_log", 2, false];
	closeDialog 0;
};