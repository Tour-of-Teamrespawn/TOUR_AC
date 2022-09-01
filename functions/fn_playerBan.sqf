private ["_admin", "_unit", "_display", "_lb", "_pos"];
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

if (isNull _unit) exitWith 
{
	hint "You Need To Select A Unit First";
};

if (serverCommandAvailable "#ban") then 
{
	serverCommand format ["#ban %1", name _unit];
	[format ["[ADMIN CONSOLE] %1 executed command: %2 banned", name player, name _unit]]remoteExecCall["diag_log", 2, false];
}else 
{
	hint format ["Ban Request Sent For %1", toUpper (name _unit)];
	[[player, _unit],
	{
		if ((serverCommandAvailable "#ban") or !isMultiplayer) then 
		{
			systemChat format ["%1 ADMIN REQUEST: Please Ban %2 From The Server Immediately", toUpper (name (_this select 0)), name (_this select 1)];
			copyToClipboard format ["#ban %1", getPlayerUID (_this select 1)];
		};
	}] remoteExecCall ["BIS_fnc_Spawn", 0, false];
	[format ["[ADMIN CONSOLE] %1 executed command: Request ban for %2", name player, name _unit]]remoteExecCall["diag_log", 2, false];
};