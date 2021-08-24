--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]
local sys = require 'SA-MP API.kernel'

sys.safely_include 'SA-MP API.samp.0_3_7-R4-2.stSAMPPed'
sys.safely_include 'SA-MP API.samp.0_3_7-R4-2.sync'

sys.ffi.cdef[[
	struct stCameraTarget {
		unsigned short	sTargetObjectID;
		unsigned short	sTargetVehicleID;
		unsigned short	sTargetPlayerID;
		unsigned short	sTargetActorID;
	} __attribute__ ((packed));

	struct stLocalPlayer {
		stInCarData					inCarData;
		stAimData						aimData;
		stTrailerData				trailerData;
		stOnFootData				onFootData;
		stPassengerData			passengerData;

		int		iIsActive; // -- +ECh
		int		iIsWasted; // -- +F0h
		unsigned short	sCurrentVehicleID; // -- +F4h
		unsigned short	sLastVehicleID; // -- +F6h

		// -- stAnimation
		unsigned short 	sCurrentAnimID; // -- +F8h 
		unsigned short	sAnimFlags; // -- +FAh
		unsigned int 	ulUnk0; // -- +FCh

		int		iIsSpectating; // -- +100h
		stSAMPPed		*pSAMP_Actor; // -- +104h
		unsigned char	byteTeamID2; // -- +108h

		unsigned short		usUnk2; // -- +109h
		
		unsigned int	ulSendTick; // -- +10Bh
		unsigned int	ulSpectateTick; // -- +10Fh
		unsigned int	ulAimTick; // -- +113h
		unsigned int	ulStatsUpdateTick; // -- 117h

		// -- stCameraTarget
		struct stCameraTarget	m_CameraTarget; // -- 11Bh
		unsigned int	ulCameraTargetUpdate; // -- 123h

		stHeadSync	headSyncData; // -- 127h

		unsigned int	ulAnyUpdate; // -- 13Bh

		int				iSpawnClassLoaded; // -- 13Fh
		unsigned int	ulSpawnSelectionTick; // -- 143h
		unsigned int	ulSpawnSelectionStart; // -- 147h

		// -- stSpawnInfo
		unsigned char							byteTeamID;
		int									iSpawnSkin;
		unsigned char							byteUnk1;
		float								fSpawnPos[3];
		float								fSpawnRot;
		int									iSpawnWeapon[3];
		int									iSpawnAmmo[3];

		int		iIsActorAlive; // -- 179h

		unsigned int	ulWeapUpdateTick;
		// -- stWeaponsData
		unsigned short	sAimingAtPid;
		unsigned short	usUnk3;
		unsigned char	byteCurrentWeapon;
		unsigned char	byteWeaponInventory[13];
		int				iWeaponAmmo[13];

		// -- Далее я ничего не меня и не тестил
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
