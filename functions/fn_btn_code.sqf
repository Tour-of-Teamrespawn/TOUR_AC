private ["_admin", "_unit", "_display", "_lb", "_targetName", "_debugConsole", "_cmdTarget", "_code"];
_display = ctrlParent (_this select 0);
_debugConsole = _display displayCtrl 1400;
_lb = _display displayCtrl 2102;
_targetName = _lb lbText (lbCurSel _lb);
_code = ctrlText 1400;

switch (_targetName) do
{
	case "SERVER" : { _cmdTarget = 2 };
	case "GLOBAL" : { _cmdTarget = 0 };
	case "LOCAL"  : { _cmdTarget = player };
	default 
	{
		{
			if ( _targetName == name _x) then { _cmdTarget = _x };
		} forEach (allPlayers + (playableUnits - allPlayers) + (switchableUnits - allPlayers));
	};
};

if (isNil "_cmdTarget" ) exitWith {hint "You need to select a target first!"};
if (_code == "") exitWith {hint "There is no code to execute!"};

_command = compile (ctrlText _debugConsole);
[[],_command]remoteExecCall["spawn", _cmdTarget, false];
[format ["[ADMIN CONSOLE] %1 executed code on %3 : %2", name player, _command, _targetName]]remoteExecCall["diag_log", 2, false];

if (count TOUR_AC_debugCode > 0) then 
{
	if (_code != (TOUR_AC_debugCode select ((count TOUR_AC_debugCode) - 1))) then 
	{
		if (count TOUR_AC_debugCode >= 30) then 
		{
			_deleted = TOUR_AC_debugCode select 0;
			TOUR_AC_debugCode = TOUR_AC_debugCode - [_deleted];
		};
		TOUR_AC_debugCode pushBack _code;
	};
}else 
{
	TOUR_AC_debugCode pushBack _code;
};
TOUR_AC_debugIndex = ((count TOUR_AC_debugCode) - 1);
TOUR_AC_debugExecuted = true;
