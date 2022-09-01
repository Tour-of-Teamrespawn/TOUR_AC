private ["_unit", "_display", "_lb"];
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

[_unit, 
{
	private _unit = _this;
	vehicle _unit setDamage 0;
	vehicle _unit setFuel 1;
	vehicle _unit setVehicleAmmo 1;
}] remoteExecCall ["spawn", _unit];

[format ["[ADMIN CONSOLE] %1 executed command: %2 vehicle service", name player, name _unit]]remoteExecCall["diag_log", 2, false];