_gameProgress = call ATC_fnc_getAreasList;
_activeArea = ATC_PV_activeArea;

_numOfAreasA = {(_x select 1) == ATC_sideMrkColorA} count _gameProgress;
_numOfAreasB = {(_x select 1) == ATC_sideMrkColorB} count _gameProgress;
_numOfSectorsA = 0;
_numOfSectorsB = 0;

{
    scopeName "loop";
    _area = _x;
    if (_area select 0 == _activeArea) then {       
        _numOfSectorsA = {(_x select 1) == ATC_sideMrkColorA} count (_area select 2);
        _numOfSectorsB = {(_x select 1) == ATC_sideMrkColorB} count (_area select 2);
        breakOut "loop";
    };
} forEach _gameProgress;

_globalWinner = '';
_globalWinnerSide = '';
_globalLooser = '';
_globalLooserSide = '';
_globalDraw = false;
_gameWinner = '';
_gameWinnerSide = '';
_gameLooser = '';
_gameLooserSide = '';
_gameDraw = false;

// Check who is has more Areas
if (_numOfAreasA > _numOfAreasB) then {
    _globalWinner       = ATC_sideNameA;
    _globalWinnerSide   = ATC_sideA;
    _globalLooser       = ATC_sideNameB;
    _globalLooserSide   = ATC_sideB;
} else {
    if (_numOfAreasB > _numOfAreasA) then {
        _globalWinner       = ATC_sideNameB;
        _globalWinnerSide   = ATC_sideB;
        _globalLooser       = ATC_sideNameA;
        _globalLooserSide   = ATC_sideA;
    } else {
        _globalDraw = true;
    };
};

// Check who is has more Sectors in active Area
if (_numOfSectorsA > _numOfSectorsB) then {
    _gameWinner     = ATC_sideNameA;
    _gameWinnerSide = ATC_sideA;
    _gameLooser     = ATC_sideNameB;
    _gameLooserSide = ATC_sideB;
} else {
    if (_numOfSectorsB > _numOfSectorsA) then {
        _gameWinner     = ATC_sideNameB;
        _gameWinnerSide = ATC_sideB;
        _gameLooser     = ATC_sideNameA;
        _gameLooserSide = ATC_sideA;
    } else {
        _gameDraw = true;
    };
};

if (!isDedicated) then {
    setPlayerRespawnTime 0;

    waitUntil {!isNull player};
    waitUntil {alive player};

    player allowDamage false;
    player enableSimulation false;

    /////////////////////////////
    // Type your code after this

    systemChat format [
        "%1 has %2 areas and %3 has %4 areas.",
        ATC_sideNameA,
        _numOfAreasA,
        ATC_sideNameB,
        _numOfAreasB
    ];

    systemChat format [
        "%1 has %2 sectors and %3 has %4 sectors.",
        ATC_sideNameA,
        _numOfSectorsA,
        ATC_sideNameB,
        _numOfSectorsB
    ];

    if (_globalDraw) then {
        systemChat "Global game - Draw";
    } else {    
        systemChat format [
            "Global game winner is %1",
            _globalWinner
        ];
    };

    if (_gameDraw) then {
        systemChat "Current game - Draw";
    } else {    
        systemChat format [
            "Current game winner is %1",
            _gameWinner
        ];
    };

    // Type your code before this
    //////////////////////////////

    // Wait before end mission
    sleep 20;

    /**
    * ----------------------------------------------------
    * Show Debriefing
    * File hpp\CfgDebriefing.hpp
    * Create your own debriefing screen https://community.bistudio.com/wiki/Debriefing
    * ----------------------------------------------------
    */
    switch (_gameWinnerSide) do {
        case ATC_sideA: {
            switch (playerSide) do {
                case ATC_sideA: {["WonA", true, 1] call BIS_fnc_endMission};
                case ATC_sideB: {["LoseB", false, 1] call BIS_fnc_endMission};
                default {["WrongSide", false, 1] call BIS_fnc_endMission};
            };
        };
        case ATC_sideB: {
            switch (playerSide) do {
                case ATC_sideA: {["LoseA", false, 1] call BIS_fnc_endMission};
                case ATC_sideB: {["WonB", true, 1] call BIS_fnc_endMission};
                default {["WrongSide", false, 1] call BIS_fnc_endMission};
            };
        };
        default {["Draw", true, 1] call BIS_fnc_endMission};
    };      
} else {
    ["end1", true, 1] call BIS_fnc_endMission;
};