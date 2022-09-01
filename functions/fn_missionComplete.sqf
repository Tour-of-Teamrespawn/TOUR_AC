[format ["[ADMIN CONSOLE] %1 executed command: Mission complete", name player]]remoteExecCall["diag_log", 2, false];
"EveryoneWon" remoteExecCall ["BIS_fnc_endMissionServer", 0, true];