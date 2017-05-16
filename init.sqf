﻿//by psycho
["%1 --- Executing AIS init.sqf",diag_ticktime] call BIS_fnc_logFormat;
enableSaving [false,false];
enableTeamswitch false;			//  AIS wont support teamswitch



// TcB AIS Wounding System --------------------------------------------------------------------------
if (!isDedicated) then {
	PATH = "ais_injury\";
	[] spawn {
		{[_x] call compile preprocessFile (PATH+"init_ais.sqf")} forEach (if (isMultiplayer) then {playableUnits} else {switchableUnits});		// execute for every playable unit

		//{[_x] call compile preprocessFile (PATH+"init_ais.sqf")} forEach (units group player);													// only own group - you cant help strange group members

		//{[_x] call compile preprocessFile (PATH+"init_ais.sqf")} forEach [p1,p2,p3,p4,p5];														// only some defined units
	};
};
// --------------------------------------------------------------------------------------------------------------
