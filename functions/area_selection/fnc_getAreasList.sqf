/**
* ATC_fnc_getAreasList
*
* @author ^eNable [enc0ded] <enc0ded.enable@gmail.com>
* @param (optional) side _this Marker side
* @return array Areas
*/
private ["_arg_areaSide","_color","_allAreas","_areaMarkerColor","_sectors","_shortAreaName"];

_color = if (!isNil {_this} && {typeName _this == "SIDE"}) then {
    switch (_this) do {
        case ATC_sideA: {ATC_sideMrkColorA};
        case ATC_sideB: {ATC_sideMrkColorB};    
    };
};

_allAreas = [];

{
    _areaMarkerColor = markerColor _x;

    if ((!isNil "_color" && {_color == _areaMarkerColor}) || (isNil "_color")) then {

        _sectors = [];
        
        _shortAreaName = [];

        for "_i" from count(toArray(ATC_areaMrkName)) to count(toArray(_x)) do {
            _shortAreaName pushBack ((toArray(_x)) select _i);
        };

        {
            _sectors pushBack [_x, markerColor _x, 0];
        } forEach (format [ATC_sectorMrkName, toString(_shortAreaName)] call ATC_fnc_getMarkers);

        _allAreas pushBack [_x, _areaMarkerColor, _sectors];
    };
} forEach (ATC_areaMrkName call ATC_fnc_getMarkers);

_allAreas