private ["_unit"];
_unit = player;

if (isNil { TOUR_AC_adminConsoleLoaded }) then
{
	//Load Admin Functions
	#include "functions\fn_init.sqf"

	//Action menu
	_unit addAction ["<t color='#FF0000'>-= Admin Console =-</t>","createDialog 'TOUR_AC_dlg';",nil,2,false,true,"","true"];

	//Debug
	diag_log "ADMIN: INITIALIZATION COMPLETE";
	
	TOUR_AC_adminConsoleLoaded = true;
};

createDialog "TOUR_AC_dlg";
