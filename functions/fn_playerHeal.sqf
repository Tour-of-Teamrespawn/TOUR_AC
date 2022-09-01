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

if (isClass(configFile>>"CfgPatches">>"ace_medical")) then 
{
	[_unit] call ace_medical_treatment_fnc_fullHealLocal;
}else 
{
	if (isClass(configFile>>"CfgPatches">>"modules_f_vietnam")) then 
	{
		_unit setVariable ["vn_revive_bleeding",false,true]; 
		_unit setVariable ["vn_revive_incapacitated",false,true]; 
	};
};

_unit setDamage 0;
[format ["[ADMIN CONSOLE] %1 executed command: Heal %2", name player, name _unit]]remoteExecCall["diag_log", 2, false];