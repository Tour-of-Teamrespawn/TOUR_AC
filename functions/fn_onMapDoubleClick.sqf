private ["_map", "_key", "_x", "_y", "_display", "_lb", "_pos"];
_map = _this select 0;
_key = _this select 1;
_x = _this select 2;
_y = _this select 3;
_display = ctrlParent _map;
_lb = _display displayCtrl 1699;
_name = _lb lnbText [(lnbCurSelRow _lb), 2];
_unit = objNull;
_pos = _map ctrlMapScreenToWorld [_x, _y];
_pos set [2, getTerrainHeightASL _pos];
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

_unit setPosASL _pos;
_unit setVelocity [0,0,0];
[format ["[ADMIN CONSOLE] %1 executed command: %1 move to position %3", name player, name _unit, str _pos]]remoteExecCall["diag_log", 2, false];