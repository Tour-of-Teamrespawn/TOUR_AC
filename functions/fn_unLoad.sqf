private ["_code"];
_code = ctrlText 1400;
if (_code != "") then 
{
	if (count TOUR_AC_debugCode > 0) then 
	{
		if ((_code != (TOUR_AC_debugCode select ((count TOUR_AC_debugCode) - 1))) && (_code != (TOUR_AC_debugCode select TOUR_AC_debugIndex))) then 
		{
			if (count TOUR_AC_debugCode >= 30) then 
			{
				_deleted = TOUR_AC_debugCode select 0;
				TOUR_AC_debugCode = TOUR_AC_debugCode - [_deleted];
			};
			TOUR_AC_debugCode pushBack _code;
			TOUR_AC_debugIndex = ((count TOUR_AC_debugCode) - 1);
		};
	}else 
	{
		TOUR_AC_debugCode pushBack _code;
		TOUR_AC_debugIndex = ((count TOUR_AC_debugCode) - 1);
	};
};

closeDialog 0;
TOUR_AC_Operational = nil;