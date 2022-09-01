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

_serverName = ser

_text = if ((servername find "Tour" > -1) or (servername == "")) then 
{
	[[_unit],
	{
		[]spawn
		{
			[format ["<t color='#ebeb00' size = '.8'>HOW TO JOIN OUR TEAMSPEAK SERVER:</t><br /><br /><t color='#ebeb00' size = '.6'><br />1. Open Teamspeak<br />2. Go to CONNECTIONS >> CONNECT<br />3. Click in the SERVER NICKNAME OR ADDRESS box<br />4. Type in the box  ""TOUR OF TEAMRESPAWN""<br />5. Press the CONNECT button</t>", name player],-1,-1,30,1,0,789] call BIS_fnc_dynamicText;
			copyToClipboard "Tour of Teamrespawn";
		};
	}] remoteExecCall ["BIS_fnc_spawn", _unit, false];
}else 
{
	// For Razor Backs
	[[_unit],
	{
		[]spawn
		{
			[format ["<t color='#ebeb00' size = '.8'>HOW TO JOIN OUR TEAMSPEAK SERVER:</t><br /><br /><t color='#ebeb00' size = '.6'><br />1. Open Teamspeak<br />2. Go to CONNECTIONS >> CONNECT<br />3. Click in the SERVER NICKNAME OR ADDRESS box<br />4. Type in the box  ""ts3.razorbacks.info""<br />5. Click in the PASSWORD box and type ""boobs""</t><br />6. Press the CONNECT button</t>", name player],-1,-1,30,1,0,789] call BIS_fnc_dynamicText;
			copyToClipboard "Tour of Teamrespawn";
		};
	}] remoteExecCall ["BIS_fnc_spawn", _unit, false];
};

[format ["[ADMIN CONSOLE] %1 executed command: Display join information for %2", name player, name _unit]]remoteExecCall["diag_log", 2, false];