private ["_unit", "_display", "_lb", "_groupID", "_group", "_cb"];
_display = ctrlParent (_this select 0);
_cb = _display displayCtrl 2101;
_lb = _display displayCtrl 1699;
_groupID = _cb lbText (lbCurSel _cb);
_name = _lb lnbText [(lnbCurSelRow _lb), 2];
_unit = objNull;
_group = grpNull;

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

if !(alive _unit) exitWith 
{
	hint "Not Possible - The Unit Is Dead";
};

{
	if (groupID _x == _groupID) then
	{
		_group = _x;
	};
} forEach allGroups;

if (!isNull _group) then 
{
	hint str (name _unit + " Joined " + _groupID);
	_unit joinAsSilent [_group, count units _group];
	[format ["[ADMIN CONSOLE] %1 executed command: %2 joined group %3", name player, name _unit, _group]]remoteExecCall["diag_log", 2, false];
}else 
{
	hint "there is no group";
};