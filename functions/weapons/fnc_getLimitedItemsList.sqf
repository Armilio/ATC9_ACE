/**
* ATC_fnc_getLimitedItemsList
*
* @author ^eNable [enc0ded] <enc0ded.enable@gmail.com>
*/
private ["_unitClasses","_items"];

_itemType = switch (_this select 0) do {
    case "limitedWeapons": {0};
    case "limitedAmmo": {1};
};

_arg_itemsArray = _this select 1;

_items = [];

if (count (_arg_itemsArray select _itemType) > 0) then {
    {
        if !((_x select 0) in _items) then {
            _items pushBack (_x select 0);
        };
    } forEach (_arg_itemsArray select _itemType);
};

_items