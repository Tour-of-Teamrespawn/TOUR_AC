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

if (!isNil {missionNameSpace getVariable (format ["TOUR_AC_zeusModule_%1", name _unit])}) then
{
		hint "ran skill code 0";
	{
			hint "ran skill code 1";
		_person = _x;
		{
			_person setSkill _x;
			hint "ran skill code 2";
		}forEach [["aimingShake",0.3],["aimingSpeed",0.35],["commanding",0.85],["courage",0.75],["reloadSpeed",1],["spotDistance",0.6],["spotTime",0.65],["aimingAccuracy", 0.2],["general", 1]];
	}forEach (curatorEditableObjects (missionNameSpace getVariable (format ["TOUR_AC_zeusModule_%1", name _unit])));
	[format ["[ADMIN CONSOLE] %1 executed command: Set server skill for each Zeus unit for %2", name player, name _unit]]remoteExecCall["diag_log", 2, false];
}else 
{
	hint "No Zeus Module Exists";
};