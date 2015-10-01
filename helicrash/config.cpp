//Heli crashes modded for Exile by Darth_Rogue
class CfgPatches {
	class helicrash {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {};
	};
};

class CfgFunctions {
	class helicrash {
		class A3CCustom {
			file = "helicrash\init";
			class init {
				postInit = 1;
			};
		};
	};
};