_arg_markerName = _this select 0;
_arg_hour = _this select 1;

_arg_hour call {
    private "_date";
    _date = date;

    _date set [3, _arg_hour];

    setDate _date; 
};

ATC_activeSectorsList = [];

{
    scopeName "loop";
    if (_x select 0 == _arg_markerName) then {

        ATC_activeSectorsList = _x select 2;
        breakOut "loop";
    };
} forEach ATC_defSectorsList;

{
    private ["_mrk_sector","_mrk_info"];
    _mrk_sector = _x select 0;

    _mrk_info = createMarker ["_info_" + _mrk_sector, markerPos _mrk_sector];
    _mrk_info setMarkerShape "ICON";
    _mrk_info setMarkerType "mil_destroy";

    _difficulty = _x select 2;

    {
        scopeName "loop";
        if (_x select 1 == _difficulty) then {
            _difficulty = _x;
            breakOut "loop";
        };
    } forEach ATC_sectorDifficultyParams;

    switch (markerColor _mrk_sector) do {
        case ATC_sideMrkColorA: {
            [_mrk_info, ATC_sideMrkColorA, [markerText _mrk_sector, ATC_sideNameA, _difficulty select 1, _difficulty select 2, _difficulty select 3]] call ATC_fnc_setInfoMarker;
        };
        case ATC_sideMrkColorB: {
            [_mrk_info, ATC_sideMrkColorB, [markerText _mrk_sector, ATC_sideNameB, _difficulty select 1, _difficulty select 2, _difficulty select 3]] call ATC_fnc_setInfoMarker;
        };
    };

    [_mrk_sector] spawn ATC_fnc_startSectorChecker;
} forEach ATC_activeSectorsList;

ATC_PV_activeArea = _arg_markerName;
publicVariable "ATC_PV_activeArea";