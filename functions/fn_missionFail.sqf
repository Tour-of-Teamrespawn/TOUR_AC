[format ["[ADMIN CONSOLE] %1 executed command: Mission failure", name player]]remoteExecCall["diag_log", 2, false];
"EveryoneLost" remoteExecCall ["BIS_fnc_endMissionServer", 0, true];