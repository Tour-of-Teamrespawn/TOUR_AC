private ["_display", "_code", "_ctrl_edit_debug", "_newCode"];
_display = ctrlParent (_this select 0);
_ctrl_edit_debug = _display displayCtrl 1400;
_code = ctrlText _ctrl_edit_debug;

if (count TOUR_AC_debugCode > 0) then 
{
	if (TOUR_AC_debugIndex > 0) then 
	{
		TOUR_AC_debugIndex = TOUR_AC_debugIndex - 1;
		_newCode = TOUR_AC_debugCode select TOUR_AC_debugIndex;
	}else
	{
		TOUR_AC_debugIndex = 0;
		_newCode = TOUR_AC_debugCode select TOUR_AC_debugIndex;
	};
	_ctrl_edit_debug ctrlSetText _newCode;
};