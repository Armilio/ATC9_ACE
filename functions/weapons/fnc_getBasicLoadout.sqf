private ["_arg_unit", "_arg_basicLoadouts", "_loadout", "_fnc_fixItemslist"];

_arg_unit = _this select 0;
_arg_basicLoadouts = _this select 1;

_loadout = [
	"",
	[
		["",[]],
		["",[]],
		["",[]],
		"",
		[],
		""
	],
	[
		["",[]],
		["",[]],
		["",[]]
	]
];

{					
	scopeName "loop";

	if ((_x select 0) == (_arg_unit getVariable ["atc_basicLoadoutClass", ""])) then {
		_loadout = _x;
		breakOut "loop";
	};
} forEach _arg_basicLoadouts;

_fnc_fixItemslist = {
	private ["_arg_items", "_fixedItemsList"];

	_arg_items = _this;

	_fixedItemsList = [];

	{
		for "_i" from 0 to ((_x select 1)-1) do {//_x = ["oggetto",numero] es: ["DAGR",2] @Armilio
			_fixedItemsList set [count _fixedItemsList, _x select 0]; 
		};//trasforma ["oggetto",2] preso da BasicLoadout in ["oggetto"],["oggetto"] nella variabile locale ATC_basicLoadout @Armilio
	} forEach _arg_items;

	_fixedItemsList
};

((_loadout select 1) select 0) set [1, (((_loadout select 1) select 0) select 1) call _fnc_fixItemslist];
((_loadout select 1) select 1) set [1, (((_loadout select 1) select 1) select 1) call _fnc_fixItemslist];
((_loadout select 1) select 2) set [1, (((_loadout select 1) select 2) select 1) call _fnc_fixItemslist];

_loadout