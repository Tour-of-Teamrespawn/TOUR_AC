private ["_unit", "_display", "_lb", "_lb2", "_rank"];
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

_lb2 = _display displayCtrl 2100;
_rank = _lb2 lbText (lbCurSel _lb2);
_unit setUnitRank _rank;

[format ["[ADMIN CONSOLE] %1 executed command: %2 assigned new rank of %3", name player, name _unit, _rank]]remoteExecCall["diag_log", 2, false];