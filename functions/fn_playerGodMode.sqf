private ["_unit", "_display", "_lb"];
_display = ctrlParent (_this select 0);
_lb = _display displayCtrl 1699;
_name = _lb lnbText [(lnbCurSelRow _lb), 2];
_ctrl_btn_playerGodMode = _display displayCtrl 1618;
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

if (!isNil {_unit getVariable "TOUR_AC_godMode"}) then 
{
	_unit setVariable ["TOUR_AC_godMode", nil, true];
	_ctrl_btn_playerGodMode ctrlSetText "Set Player Invunerable";
	hint format ["%1 Is Vunerable", name _unit];
	[format ["[ADMIN CONSOLE] %1 executed command: Make %2 vunerable", name player, name _unit]]remoteExecCall["diag_log", 2, false];
}else 
{
	_ctrl_btn_playerGodMode ctrlSetText "Reset Player Invunerable";
	hint format ["%1 Is Invunerable", name _unit];
	[format ["[ADMIN CONSOLE] %1 executed command: Make %2 invunerable", name player, name _unit]]remoteExecCall["diag_log", 2, false];
	[_unit, 
	{
		private _unit = _this;
		_unit setVariable ["TOUR_AC_godMode", true, true];
		while {!isNull _unit && (!isNil {(_unit getVariable "TOUR_AC_godMode")})} do
		{
			_unit allowDamage false;
			_unit enableStamina false;
			sleep 1;
		};
		if (!isNull _unit) then 
		{
			_unit allowDamage true;
			_unit enableStamina true;
		};
	}] remoteExecCall ["spawn", 0];
};