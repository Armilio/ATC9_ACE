/**
* ATC_fnc_changeAreaSide
*
* @author ^eNable [enc0ded] <enc0ded.enable@gmail.com>
* @return void
*/

private ["_sectorsSide","_sectorsA","_sectorsB"];

_sectorsSide = [];

{
    _sectorsSide set [count _sectorsSide, markerColor (_x select 0)];
} forEach ATC_activeSectorsList;

_sectorsA = {_x == ATC_sideMrkColorA} count _sectorsSide;
_sectorsB = {_x == ATC_sideMrkColorB} count _sectorsSide;

if (markerColor ATC_PV_activeArea == ATC_sideMrkColorB && {_sectorsA > _sectorsB}) then {
    ATC_PV_activeArea setMarkerColor ATC_sideMrkColorA;
} else {
    if (markerColor ATC_PV_activeArea == ATC_sideMrkColorA && {_sectorsB > _sectorsA}) then {
        ATC_PV_activeArea setMarkerColor ATC_sideMrkColorB;
    };
};