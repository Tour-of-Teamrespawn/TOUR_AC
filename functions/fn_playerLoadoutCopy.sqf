private ["_admin", "_unit", "_display", "_lb"];
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

TOUR_AC_unitLoadout = getUnitLoadout _unit;

[format ["[ADMIN CONSOLE] %1 executed command: Copied loadout of %2", name player, name _unit]]remoteExecCall["diag_log", 2, false];