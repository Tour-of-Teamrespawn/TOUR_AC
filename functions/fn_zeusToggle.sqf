private ["_ctrl_btn_zeusToggle", "_admin", "_unit", "_display", "_lb", "_pos"];
_ctrl_btn_zeusToggle  = _this select 0;
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

if (isNil {missionNameSpace getVariable (format ["TOUR_AC_zeusModule_%1", name _unit])}) then
{
	hint ("Zeus Module Created");
	[[_unit],
	{
		private _unit = _this select 0;
		TOUR_AC_zeusModule = (createGroup sideLogic) createUnit ["ModuleCurator_F", [0,0,0], [],0,"NONE"]; 
		missionNamespace setVariable [(format ["TOUR_AC_zeusModule_%1", name _unit]), TOUR_AC_zeusModule, true];
		_Addons = []; 
		{_Addons set [count _Addons, _x]} forEach ((configfile >> "CfgPatches") call BIS_fnc_getCfgSubClasses);
		TOUR_AC_zeusModule addCuratorAddons _Addons;
		_unit assignCurator TOUR_AC_zeusModule; 
	}] remoteExecCall ["BIS_fnc_spawn", 2, false];
	 _ctrl_btn_zeusToggle ctrlSetText "Remove Zeus Module";
	[format ["[ADMIN CONSOLE] %1 executed command: Enabled Zeus for %2", name player, name _unit]]remoteExecCall["diag_log", 2, false];
}else 
{
	hint "Zeus Module Removed";
	deleteVehicle (missionNameSpace getVariable (format ["TOUR_AC_zeusModule_%1", name _unit]));
	missionNamespace setVariable [(format ["TOUR_AC_zeusModule_%1", name _unit]), nil, true];
	 _ctrl_btn_zeusToggle ctrlSetText "Create Zeus Module";
	[format ["[ADMIN CONSOLE] %1 executed command: Disabled Zeus for%2", name player, name _unit]]remoteExecCall["diag_log", 2, false];
};