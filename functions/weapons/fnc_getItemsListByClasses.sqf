/**
* ATC_fnc_getItemsListByClasses
*
* @author ^eNable [enc0ded] <enc0ded.enable@gmail.com>
*/
private ["_unitClasses","_items"];

_itemType = switch (_this select 0) do {
	case "weapons": {0};
	case "optics": {1};
	case "pointers": {2};
	case "muzzles": {3};
	case "additionalAmmo": {4};
    case "restrictedAmmo": {5};
	case "items": {6};
    case "all": {-1};
};

_unitClasses = (_this select 1) getVariable ["atc_unitSpecClasses", []];

_arg_itemsArray = _this select 2;

_items = [];

if (count _unitClasses > 0 && {count _arg_itemsArray > 0}) then {    
    if (_itemType >= 0) then {
        {
            if ((_x select 0) in _unitClasses) then {
                {
                    if !(_x in _items) then {
                        _items pushBack _x;
                    };
                } forEach ((_x select 1) select _itemType);
            };
        } forEach _arg_itemsArray;
    } else {
        {
            if ((_x select 0) in _unitClasses) then {
                {
                    if (_forEachIndex != 5) then {
                        {
                            if !(_x in _items) then {
                                _items pushBack _x;
                            };
                        } forEach _x;
                    };
                } forEach (_x select 1);
            };
        } forEach _arg_itemsArray;
    };
};

_items