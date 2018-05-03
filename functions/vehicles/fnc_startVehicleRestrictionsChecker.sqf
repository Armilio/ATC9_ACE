/**
* ATC_fnc_startVehicleRestrictionsChecker
* @author ^eNable [enc0ded] <enc0ded.enable@gmail.com>
*/
private ["_vehicle", "_restrictionIdx", "_role", "_restrictions"];

while {!isNull player} do {
    scopeName "loop";

    _vehicle = vehicle player;

    if (_vehicle != player) then {
        _restrictionIdx = (ATC_sidevehicleRestrictions select 0) find (typeOf _vehicle);
        
        if (_restrictionIdx != -1) then {

            _role = assignedVehicleRole player;
            _restrictions = ((ATC_sidevehicleRestrictions select 1) select _restrictionIdx);

            {
                if (_x select 0 == _role select 0) then {
                    if (isNil {_x select 1} || (!isNil {_x select 1} && {(_role select 1) in (_x select 1)})) then {
                        breakTo "loop";
                    };
                };
            } forEach _restrictions;
        };

        moveOut player;
        systemChat "You can't get in this vehicle";
    };

    sleep 0.5;
};