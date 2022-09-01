private ["_admin", "_unit", "_display", "_lb", "_pos"];

_display = ctrlParent (_this select 0);
_lb = _display displayCtrl 1699;
_name = _lb lnbText [(lnbCurSelRow _lb), 2];
_unit = objNull;
_admin = player;
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

if (_admin call TOUR_AC_fn_availableVehicle) then
{
	[_unit, vehicle _admin] remoteExec ["moveInCargo", owner _unit];
}
else
{
	if (vehicle _admin != _admin && speed vehicle _admin > 10) then
	{
		hint "Your vehicle does not have any available seats for that player and youre going to fast!";
	}
	else
	{
		private ["_vehicle", "_dir", "_bb", "_bbX", "_offset", "_posNear"];
		_vehicle = vehicle _admin;
		_dir = getDir _vehicle + 90;
		_bb = boundingBox _vehicle select 1;
		_bbX = _bb select 0;
		_offset = _bbX + 0.5;
		_posNear = _vehicle getpos [_offset, _dir];
		_posNear set [2, (getPosASL _vehicle) select 2];
		
		_unit setPosASL _posNear;
		_unit setVelocity [0,0,0];
	};
};

[format ["[ADMIN CONSOLE] %1 executed command: Teleported %2 to %1", name player, name _unit]]remoteExecCall["diag_log", 2, false];