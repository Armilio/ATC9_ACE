private ["_arg_action","_displayIddWM","_navCtrls","_areasListCtrl","_timeListCtrl","_mapCtrl","_buttonCtrl","_areaInfoCtrl","_timeInfoCtrl"];

_arg_action = _this select 0;

disableSerialization;

if (_arg_action == "onLoad") then {
	createDialog "DiagSelectionArea";
};

_displayIddWM = 1500;

_navCtrls = [
	// Areas
	[1551, 1651],
	// Time
	[1552, 1652]
];

_areasListCtrl = (findDisplay _displayIddWM) displayCtrl 1651;
_timeListCtrl = (findDisplay _displayIddWM) displayCtrl 1652;
_mapCtrl = (findDisplay _displayIddWM) displayCtrl 1512;
_buttonCtrl = (findDisplay _displayIddWM) displayCtrl 1513;
_areaInfoCtrl = (findDisplay _displayIddWM) displayCtrl 1514;
_timeInfoCtrl = (findDisplay _displayIddWM) displayCtrl 1515;

switch (_arg_action) do {
	case "onLoad": {
		_buttonCtrl ctrlEnable false;

		{
			_areasListCtrl lbAdd (markerText (_x select 0));
			_areasListCtrl lbSetData [_forEachIndex, _x select 0];
		} forEach ATC_defSectorsList;

		for "_i" from 0 to 23 do {
			private "_tmp";
			_tmp = if (_i < 10) then {format ["0%1:00", _i]} else {format ["%1:00", _i]};
			_timeListCtrl lbAdd _tmp;
			_timeListCtrl lbSetData [_i, str _i];
		};

		_timeListCtrl lbSetCurSel 12;

		['onButtonClickNav', [1551, 1651]] call ATC_fnc_showSelectionAreaDiag;

		[] spawn {
			waitUntil {!dialog};

			if (ATC_activeArea == "") then {
				["onLoad"] call ATC_fnc_showSelectionAreaDiag;
			};
		};
	};
	case "onButtonClickNav": {
		private ["_ctrlTab", "_ctrlList"];

		{
			if ((_this select 1) select 1 != _x select 1) then {
				private ["_ctrlTab", "_ctrlList"];

				_ctrlTab = (findDisplay _displayIddWM) displayCtrl (_x select 0);
				_ctrlList = (findDisplay _displayIddWM) displayCtrl (_x select 1);

				_ctrlTab ctrlEnable true;
				_ctrlList ctrlShow false;
			}; 
		} forEach _navCtrls;

		_ctrlTab = (findDisplay _displayIddWM) displayCtrl ((_this select 1) select 0);
		_ctrlList = (findDisplay _displayIddWM) displayCtrl ((_this select 1) select 1);

		_ctrlTab ctrlEnable false;
		_ctrlList ctrlShow true; 
		ctrlSetFocus _ctrlList;
	};	
	case "onButtonClick": {
		ATC_activeArea = _areasListCtrl lbData (lbCurSel _areasListCtrl);

		[[ATC_activeArea, parseNumber (_timeListCtrl lbData (lbCurSel _timeListCtrl))], "ATC_fnc_selectArea", false, false] spawn BIS_fnc_MP;
		
		[] spawn {
			waitUntil {!isNil "ATC_PV_activeArea"};
			closeDialog 0;
		};
	};
	case "onLBSelChanged": {
		private ["_arg_ctrlId", "_arg_selectedItem"];

		_arg_ctrlId = (_this select 1) select 0;
		_arg_selectedItem = (_this select 1) select 1;

		switch (_arg_ctrlId) do {
			case _areasListCtrl: {
				private "_selArea";

				_selArea = _areasListCtrl lbData (lbCurSel _areasListCtrl);

				_buttonCtrl ctrlEnable true;

				_areaInfoCtrl ctrlSetText (markerText _selArea);

				_mapCtrl ctrlMapAnimAdd [0.3, 0.1, markerPos (_areasListCtrl lbData _arg_selectedItem)];
				ctrlMapAnimCommit _mapCtrl;
			};
			case _timeListCtrl: {
				private "_selTime";

				_selTime = parseNumber (_timeListCtrl lbData (lbCurSel _timeListCtrl));
				_selTime = if (_selTime < 10) then {format ["0%1:00", _selTime]} else {format ["%1:00", _selTime]};
				
				_timeInfoCtrl ctrlSetText _selTime;
			};
		};
	};
};