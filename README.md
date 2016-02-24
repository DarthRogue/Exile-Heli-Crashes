# Exile-Heli-Crashes
Random Heli Crashes w/ Loot
///////////////////////////////////////
//      Function file for UKGZ	     //
//        Created by: Richie         //
//  Modded by:  Vampire & xBowBii    //
//  Modded for Exile by Darth_Rogue  //
//		& Shamis	     //
///////////////////////////////////////

This addon PBO will allow you to spawn heli crashes at random positions on your server which will also spawn random loot for players.  In my opinion the best thing
about it is that it's tied to the Exile loot spawn system, so loot will only spawn when a player gets close and then gets cleaned up when a player leaves.  When a 
new player comes along, fresh loot is spawned in its place.  Lather, rinse, repeat.

INSTALLATION:

1.  Open the HeliCrashes.sqf file line 9 set how many crash instances you want to be active on the server per restart.  This can be any number, just be aware that if you go too crazy with it then having all those objects on the server may hurt server performance.

2.  On line 11 enter the center pos for your map into the array.  See the bottom of this file for the correct center pos for pretty much every map out there for A3.

3.  On line 13 specify how far from the map center you want crashes to spawn.  This value should not exceed the lowest value of your center pos x or y coords.  For instance, if your map center pos is [12000,10000,0], then the distance from center should not exceed 10000.

4.  Open your config.cpp file in exile_server_settings.pbo and in your loot table include the three building classes included with the download in this Git.  That will tell the server where to spawn the loot piles around the wrecks.

5.  Open your exile_server.pbo and copy ExileServer_system_lootManager_spawnLootForPlayer.sqf to your desktop.

6.  Open the above mentioned sqf file and paste the following 5 lines immediately AFTER the line that says:

	_buildings = _playerObject nearObjects ["House", _spawnRadius];
  

		//these next 4 lines add the wreck classes to the spawnable buildings array for the heliCrashes
		_truckWrecks = _playerObject nearObjects ["Land_Wreck_HMMWV_F", _spawnRadius];
  		_buildings append _truckWrecks;

  		_heliwrecks2 = _playerObject nearObjects ["Land_UWreck_Heli_Attack_02_F", _spawnRadius];
  		_buildings append _heliwrecks2;

		
		
7.  Then save the file and copy it back into your exile_server.pbo - 

8.  PBO the helicrash folder after you've made your relevant changes and place it in your @exileserver\addons folder

9.  PROFIT!!


NOTE:  The crashes are tied to the Exile loot spawn system.  That being the case, they are bound to the same rules and restrictions as any loot spawning building, meaning that they will not all always have loot.  I believe
the default loot bias is set to 55%.  Also, how often loot will respawn is determined by different loot variables, such as how long it's been since the area was last looted, how far away players are, etc.  So if you get complaints 
that there's no loot at a crash site, that's probably why.


MAP CENTER POSITIONS:   (CREDIT GOES TO FACE FOR THESE)
		["altis",[15834.2,15787.8,0]
		["australia",[21966.2,22728.5,0]
		["bootcamp_acr",[1938.24,1884.16,0]
		["caribou",[3938.9722, 4195.7417]
		["chernarus",[7652.9634, 7870.8076]
		["chernarus_summer",[6669.88,9251.68,0]
		["desert_e",[1034.26,1022.18,0]
		["esseker",[6206.94,5920.05,0]
		["fallujah",[5139.8008, 4092.6797]
		["fdf_isle1_a",[10771.362, 8389.2568]
		["intro",[2914.44,2771.61,0]
		["isladuala",[4945.3438, 4919.6616],
		["lingor",[5166.5581, 5108.8301],
		["mbg_celle2",[6163.52, 6220.3984],
		["mountains_acr",[3223.09,3242.13,0],
		["namalsk",[5880.1313, 8889.1045],
		["napf",[10725.096, 9339.918],
		["oring",[5191.1069, 5409.1938],
		["panthera2",[5343.6953, 4366.2534],
		["porto",[2641.45,2479.77,0],
		["sara",[12693.104, 11544.386],
		["saralite",[5357.5,5000.67,0],
		["sara_dbe1",[11995.3,11717.9,0],
		["sauerland",[12270.443, 13632.132],
		["smd_sahrani_a2",[12693.104, 11544.386],
		["stratis",[3937.6,4774.51,0],
		["takistan",[6368.2764, 6624.2744],
		["tavi",[10887.825, 11084.657],
		["trinity",[7183.8403, 7067.4727],
		["utes",[3519.8037, 3703.0649],
		["woodland_acr",[3884.41,3896.44,0],
		["zargabad",[3917.6201, 3800.0376],
