_arg_markerInfo = _this select 0;
_arg_markerInfoColor = _this select 1;
_arg_markerText = (_this select 2) select 0;
_arg_ownerSide = (_this select 2) select 1;
_arg_level = (_this select 2) select 2;
_arg_paramDefenders = (_this select 2) select 3;
_arg_paramAttckers = (_this select 2) select 4;
_arg_countdown = (_this select 2) select 5; //add by Armilio atc9

_arg_markerInfo setMarkerText format ["Sector %1 captured by %2 (lvl %3, def %4, att %5,Cd %6)", _arg_markerText, _arg_ownerSide, _arg_level, _arg_paramDefenders, _arg_paramAttckers,_arg_countdown];
_arg_markerInfo setMarkerColor _arg_markerInfoColor;
