private ["_lnb","_arrAlivePlayersSorted"];
_lnb = _this;
_arrAlivePlayers = (playableUnits + switchableUnits);
_arrDeadPlayers = (allplayers - (playableUnits + switchAbleUnits));
_arrWithSortedString = [];
_arrWithSortedStringDead = [];
{
	_arrWithSortedString pushBack name _x; 
} forEach _arrAlivePlayers;
{
	_arrWithSortedStringDead pushBack name _x; 
} forEach _arrAlivePlayers;
_arrWithSortedString = _arrWithSortedString call BIS_fnc_sortAlphabetically;
_arrWithSortedStringDead = _arrWithSortedStringDead call BIS_fnc_sortAlphabetically;
_arrAlivePlayersSorted = [_arrAlivePlayers,[],{_arrWithSortedString find (name _x)},"ASCEND"] call BIS_fnc_sortBy;
_arrDeadPlayersSorted = [_arrDeadPlayers,[],{_arrWithSortedStringDead find (name _x)},"ASCEND"] call BIS_fnc_sortBy;
_arrayFinal = _arrAlivePlayersSorted + _arrDeadPlayersSorted;
lnbClear  _lnb;

{
	_player_name = name _x;
	_group_name = if (alive _x) then 
	{
		groupID (group _x)
	} else 
	{
		"SPECTATING"
	};
	_unit_class = getText (configFile >> "CfgVehicles" >> typeOf _x >> "displayName");
	_lnb lnbAddRow ["","", _player_name, _group_name];
	if ((leader (group _x)) == _x) then 
	{
		_lnb lnbSetPicture [[_foreachindex,0], gettext ( configfile >> "CfgRanks" >> "7" >> "texture")];
	};
	_lnb lnbSetPicture [[_foreachindex,1],gettext ( configfile >> "CfgRanks" >> (str rankId _x) >> "texture" )];
} forEach _arrayFinal;
sleep 1;