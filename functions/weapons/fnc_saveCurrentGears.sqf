/**
* ATC_fnc_safeCurrentGears
*
* @author ^eNable [enc0ded] <enc0ded.enable@gmail.com>
*/
private ["_arg_unit","_fnc_selectAllowed","_prevLoadout","_currLoadout"];

//ADDED BY FLIPPER 
_limitedAmmo = ["SatchelCharge_Remote_Mag","ToolKit","ATMine_Range_Mag","APERSMine_Range_Mag","APERSTripMine_Wire_Mag","ClaymoreDirectionalMine_Remote_Mag","DemoCharge_Remote_Mag", "RPG32_HE_F", "ATC_RPG32_F", "tf47_m3maaws_HEAT", "tf47_m3maaws_HEDP", "Titan_AA", "ATC_MAG_Titan_AT", "ATC_MAG_Titan_AT_B", "Titan_AP"];
//

_arg_unit = _this;

_fnc_selectAllowed = {
    private ["_arg_items","_items"];
    _arg_items = _this;

    _items = [];

    {
        //EDITED BY FLIPPER  
        if ((_x in ATC_allowedGearsForSave) && !(_x in _limitedAmmo)) then {
            _items pushBack _x;
        };
        //
    } forEach _arg_items;
    
    _items
};

_prevLoadout = _arg_unit getVariable ["atc_loadout", []];

_currLoadout = [
    _prevLoadout select 0,
    [
        [
            ((_prevLoadout select 1) select 0) select 0,        
            (uniformItems _arg_unit) call _fnc_selectAllowed     
        ],
        [
            ((_prevLoadout select 1) select 1) select 0,        
            (vestItems _arg_unit) call _fnc_selectAllowed 
        ],
        [
            ((_prevLoadout select 1) select 2) select 0,        
            (backpackItems _arg_unit) call _fnc_selectAllowed 
        ],
        (_prevLoadout select 1) select 3,
        (assignedItems _arg_unit)
    ],
    [
        [
            if ((secondaryWeapon _arg_unit) in ATC_allowedGearsForSave) then {secondaryWeapon _arg_unit} else {""},            
            (secondaryWeaponItems _arg_unit) call _fnc_selectAllowed
        ],
        [
            if ((handgunWeapon _arg_unit) in ATC_allowedGearsForSave) then {handgunWeapon _arg_unit} else {""},
            (handgunItems _arg_unit) call _fnc_selectAllowed
        ],
        [
            if ((primaryWeapon _arg_unit) in ATC_allowedGearsForSave) then {primaryWeapon _arg_unit} else {""},
            (primaryWeaponItems _arg_unit) call _fnc_selectAllowed
        ]
    ]
];

_arg_unit setVariable ["atc_loadout", _currLoadout, false];

systemChat "Your loadout was saved";