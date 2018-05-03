/**
* @author ^eNable [enc0ded] <enc0ded.enable@gmail.com>
* @param string _this First characters of the name of the marker
* @return array Return list of markers 
*/
private ["_marker_uni", "_marker_uni_length", "_markers", "_cur_marker_uni", "_cur_marker_uni_length"];

_marker_uni = toArray (toLower _this);
_marker_uni_length = count _marker_uni;

_markers = [];

{
	scopeName "loop";

	_cur_marker_uni = toArray (toLower _x);
	_cur_marker_uni_length = count _cur_marker_uni;

	if (_cur_marker_uni_length < _marker_uni_length) then {
		breakTO "loop";
	} else {
		if (_cur_marker_uni_length > _marker_uni_length) then {
			_cur_marker_uni resize _marker_uni_length
		};
	};

	if (toString _cur_marker_uni == toString _marker_uni) then {_markers set [count _markers, _x]};
} forEach allMapMarkers;

_markers