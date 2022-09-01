private ["_admin", "_unit", "_display", "_lb", "_pos"];
_display = ctrlParent (_this select 0);
_ctrl_btn_zeusToggleObjects  = _this select 0;
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

if !(isNil {missionNameSpace getVariable (format ["TOUR_AC_zeusModule_%1", name _unit])}) then
{
	[[_unit],
	{
		private _unit = _this select 0;
		(missionNameSpace getVariable (format ["TOUR_AC_zeusModule_%1", name _unit])) addCuratorEditableObjects [allMissionObjects "",true];
	}] remoteExecCall ["BIS_fnc_spawn", 2, false];
	hint "All Objects On Map Have Been Added To Zeus";
	[format ["[ADMIN CONSOLE] %1 executed command: Added all objects to Zeus for %2", name player, name _unit]]remoteExecCall["diag_log", 2, false];
}else 
{
	hint "No Zeus Module Exists";
};