private ["_available"];
_available = false;

if (vehicle _this != _this) then
{
	if (vehicle _this emptyPositions "cargo" > 0) then
	{
		_available = true;
	};
};

_available