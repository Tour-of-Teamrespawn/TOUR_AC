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

if !(alive _unit) exitWith 
{
	hint "Not Possible - The Unit Is Dead";
};

if ((animationState _unit == "Acts_Dance_01")or(animationState _unit == "Acts_Dance_02")) then 
{
	[[_unit],{(_this select 0) switchMove "stand";}] remoteExecCall ["BIS_fnc_spawn", 0, false];
	[format ["[ADMIN CONSOLE] %1 executed command: %2 perform stand", name player, name _unit]]remoteExecCall["diag_log", 2, false];
}else 
{
	if (random 2 > 1) then 
	{
		[[_unit],{(_this select 0) switchMove "Acts_Dance_01";}] remoteExecCall ["BIS_fnc_spawn", 0, false];
	}else 
	{
		[[_unit],{(_this select 0) switchMove "Acts_Dance_02";}] remoteExecCall ["BIS_fnc_spawn", 0, false];
	};
	[format ["[ADMIN CONSOLE] %1 executed command: %2 perform dance", name player, name _unit]]remoteExecCall["diag_log", 2, false];
}


