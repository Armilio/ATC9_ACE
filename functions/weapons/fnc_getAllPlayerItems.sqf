private ["_arg_unit"];

_arg_unit = _this;

_items = [];

{
	if !(_x in _items) then {
		_items set [count _items, _x];
	};
} forEach weapons _arg_unit;

{
	if !(_x in _items) then {
		_items set [count _items, _x];
	};
} forEach (primaryWeaponItems _arg_unit + secondaryWeaponItems _arg_unit + handgunItems _arg_unit);

{
	if !(_x in _items) then {
		_items set [count _items, _x];
	};
} forEach (uniformItems _arg_unit + vestItems _arg_unit + backpackItems _arg_unit);

/*{
	if !(_x in _items) then {
		_items set [count _items, _x];
	};
} forEach assignedItems _arg_unit;*/

_items = _items - [""];

_items