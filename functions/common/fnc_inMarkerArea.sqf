/**
* Check if given position in marker area
*
* @author ^eNable [enc0ded] <enc0ded.enable@gmail.com>
* @param string _arg_marker Name of the marker
* @param array _arg_position Position of object
* @return bool 
*/
private ["_arg_marker","_arg_position","_mPos","_mPosX","_mPosY","_mX","_mY","_mDir","_in"];

_arg_marker = _this select 0;
_arg_position =	_this select 1;

_arg_position resize 2;

_mPos = markerPos _arg_marker;
_mPos resize 2;
_mPosX = _mPos select 0;
_mPosY = _mPos select 1;
_mX = (markerSize _arg_marker) select 0;
_mY = (markerSize _arg_marker) select 1;
_mDir = markerDir _arg_marker;

if (_arg_position distance [_mPosX, _mPosY] == 0) then {_mPosY = _mPosY + 0.01};

_in = false;

switch (markerShape _arg_marker) do {
	case "RECTANGLE": {
		private ["_difX","_difY","_dir","_relativeDir","_adis","_bdis","_borderdis","_positiondis"];

		_difX = (_arg_position select 0) - _mPosx;
		_difY = (_arg_position select 1) - _mPosy;
		_dir = atan (_difX / _difY);
		if (_difY < 0) then {_dir = _dir + 180};
		_relativeDir = _mDir - _dir;
		_adis = abs (_mX / cos (90 - _relativeDir));
		_bdis = abs (_mY / cos _relativeDir);
		_borderdis = _adis min _bdis;
		_positiondis = _arg_position distance _mPos;

		_in = if (_positiondis < _borderdis) then {true} else {false};
	};
	case "ELLIPSE": {
		private ["_e","_posF1","_posF2","_total","_dis1","_dis2"];

		_e = sqrt(_mX^2 - _mY^2);
		_posF1 = [_mPosX + (sin (_mDir + 90) * _e), _mPosY + (cos (_mDir + 90) * _e)];
		_posF2 = [_mPosX - (sin (_mDir + 90) * _e), _mPosY - (cos (_mDir + 90) * _e)];
		_posF1 resize 2;
		_posF2 resize 2;
		_total = 2 * _mX;

		_dis1 = _arg_position distance _posF1;
		_dis2 = _arg_position distance _posF2;
		_in = if (_dis1 + _dis2 < _total) then {true} else {false};
	};
};

_in