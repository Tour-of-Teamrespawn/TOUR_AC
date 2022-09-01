private ["_unit", "_name", "_mkr"];

{
	_unit = _x;
	if (!isNull _x ) then 
	{
		_name = name _x;

		if (str (getMarkerPos (format ["TOUR_AC_playerMarker_%1", _name])) == "[0,0,0]") then 
		{
			TOUR_AC_playerMarkers pushBackUnique (format ["TOUR_AC_playerMarker_%1", _name]);
			_mkr = createMarkerLocal [format ["TOUR_AC_playerMarker_%1", _name], getPosATL vehicle _unit];
			_mkr setMarkerTextLocal format ["%1", _name];
		}else 
		{
			_mkr = (format ["TOUR_AC_playerMarker_%1", _name]);
		};

		if (alive _x) then 
		{
			_mkr setMarkerColorLocal "ColorGreen";
			_mkr setMarkerTypeLocal "mil_arrow";
			_mkr setMarkerSizeLocal [0.7,0.7];
		}else 
		{
			_mkr setMarkerColorLocal "ColorRed";
			_mkr setMarkerTypeLocal "Waypoint";
			_mkr setMarkerSizeLocal [0.7,0.7];
		};

		_mkr setMarkerPosLocal (getPosATL vehicle _unit);
		_mkr setMarkerDirLocal (getDir vehicle _unit);
	};
}forEach (allPlayers + (playableUnits - allPlayers) + (switchableUnits - allPlayers));

sleep 0.1;