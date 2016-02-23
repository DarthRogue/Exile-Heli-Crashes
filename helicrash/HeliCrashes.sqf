private "_crashNum";
///////////////////////////////////////
//      Function file for UKGZ	     //
//        Created by: Richie         //
//  Modded by:  Vampire & xBowBii    //
//  Modded for Exile by Darth_Rogue  //
//		& Shamis	     //
///////////////////////////////////////
// Number of Crashes
_crashNum = 15;
//							
_spawnCenter = [6140.467773, 5941.604004, 0.0]; //Center of your map 
_min = 0; // minimum distance from the center position (Number) in meters
_max = 5800; // maximum distance from the center position (Number) in meters
_mindist = 20; // minimum distance from the nearest object (Number) in meters, ie. spawn at least this distance away from anything within x meters..
//Low _mindist means helicrashes could spawn near towns or in forests.. higher the number it would be spawning in an open field etc
_water = 0; // water mode 0: cannot be in water , 1: can either be in water or not , 2: must be in water
_shoremode = 0; // 0: does not have to be at a shore , 1: must be at a shore


vSpawnCrashes = {
	for "_j" from 1 to _crashNum do 
	{
		_crashPOS = [_centerPOS,_minDistCenter,_maxDist,_minDist,_waterMode,20,_landMode] call BIS_fnc_findSafePos;
		_wrecks = ["Land_Wreck_HMMWV_F","Land_UWreck_Heli_Attack_02_F"]; 
		_spawnMe = _wrecks call BIS_fnc_SelectRandom;
		_heli = _spawnMe createVehicle [0,0,0];
		_fire = "test_EmptyObjectForFireBig" createVehicle (position _heli);
		_fire attachto [_heli, [0,0,-1]];
		_heli setDir (random 360);
		_heli setPos _crashPOS;
		_heliPos = getPosATL _heli;
		_heli setPosATL _heliPos;
		diag_log format["HELICRASHES: %1 spawned at %2", _spawnMe, _crashPOS];
	};
};

call vSpawnCrashes;
