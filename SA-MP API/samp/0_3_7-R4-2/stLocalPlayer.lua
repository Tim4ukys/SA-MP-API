--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]
local sys = require 'SA-MP API.kernel'

sys.safely_include 'SA-MP API.samp.0_3_7-R3.stSAMPPed'
sys.safely_include 'SA-MP API.samp.0_3_7-R3.sync'

sys.ffi.cdef[[
	struct stCameraTarget {
		unsigned short						sTargetObjectID;
		unsigned short						sTargetVehicleID;
		unsigned short						sTargetPlayerID;
		unsigned short 						sTargetActorID;
	} __attribute__ ((packed));

	struct stLocalPlayer {
		stSAMPPed						*pSAMP_Actor;

		stInCarData					inCarData;
		stAimData						aimData;
		stTrailerData				trailerData;
		stOnFootData				onFootData;
		stPassengerData			passengerData;

		int									iIsActive;
		int									iIsWasted;
		unsigned short						sCurrentVehicleID;
		unsigned short						sLastVehicleID;

		// -- stAnimation | Not tested
		unsigned short						sCurrentAnimID;
		unsigned short						sAnimFlags;
		unsigned int						ulUnk0;

		int									iIsSpectating;
		unsigned char						byteTeamID2;
		unsigned short						usUnk2;
		unsigned int						ulSendTick;
		unsigned int						ulSpectateTick;
		unsigned int						ulAimTick;
		unsigned int						ulStatsUpdateTick;

		// -- stCameraTarget
		struct stCameraTarget				m_CameraTarget;
		unsigned int 						ulCameraTargetUpdate;

		stHeadSync							headSyncData;
		
		unsigned int						ulAnyUpdate;
		int									iSpawnClassLoaded;
		unsigned int						ulSpawnSelectionTick;
		unsigned int						ulSpawnSelectionStart;

		// -- stSpawnInfo
		unsigned char							byteTeamID;
		int									iSpawnSkin;
		unsigned char							byteUnk1;
		float								fSpawnPos[3];
		float								fSpawnRot;
		int									iSpawnWeapon[3];
		int									iSpawnAmmo[3];

		int									iIsActorAlive;

		unsigned int						ulWeapUpdateTick;
		// -- stWeaponsData
		unsigned short						sAimingAtPid;
		unsigned short						usUnk3;
		unsigned char							byteCurrentWeapon;
		unsigned char							byteWeaponInventory[13];
		int									iWeaponAmmo[13];

		int									iPassengerDriveBy;
		unsigned char						byteCurrentInterior;
		int									iIsInRCVehicle;
		char								byteSpace3[256];
		
		stSurfData							surfData;

		// -- stClassSelection
		int									iClassSelectionOnDeath;
		int									iSpawnClassID;
		int									iRequestToSpawn;
		int									iIsInSpawnScreen;
		
		unsigned int						ulZoneDisplayingEnd;

		// -- stSpectating
		unsigned char							byteSpectateMode;
		unsigned char							byteSpectateType;
		int									iSpectateID;
		int									iInitiatedSpectating;

		stDamageData				vehicleDamageData;
	} __attribute__ ((packed));
]]
