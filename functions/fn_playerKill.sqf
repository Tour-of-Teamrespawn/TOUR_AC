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

if (vehicle _unit != _unit) then
{
	{
		if (_x == _unit) then
		{
			_unit setDamage 1;
		}
	}forEach crew vehicle _unit
}else
{
	_unit setDamage 1
};

[format ["[ADMIN CONSOLE] %1 executed command: Kill %2", name player, name _unit]]remoteExecCall["diag_log", 2, false];

