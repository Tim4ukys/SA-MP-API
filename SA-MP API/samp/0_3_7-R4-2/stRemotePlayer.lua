--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.ffi.cdef[[
	struct stRemotePlayerData {
		struct stSAMPPed		*pSAMP_Actor;
		struct stSAMPVehicle	*pSAMP_Vehicle;
		unsigned short				sPlayerID;
		unsigned short				sVehicleID;
		unsigned int			ulUnk5;
		int						iShowNameTag;
		int						iHasJetPack;
		unsigned char					byteSpecialAction;

		struct stInCarData		inCarData;
		struct stTrailerData	trailerData;
		struct stAimData		aimData;
		struct stPassengerData	passengerData;
		struct stOnFootData		onFootData;

		unsigned char					byteTeamID;
		unsigned char					bytePlayerState;
		unsigned char					byteSeatID;
		unsigned int				ulUnk3;
		int						iPassengerDriveBy;
		
		float					fOnFootPos[3];
		float					fOnFootMoveSpeed[3];
		float					fVehiclePosition[3];
		float					fVehicleMoveSpeed[3];
		unsigned char				pad_1[76];
		float					fSomething[3];

		// -- stincarTargetRotation
		float 					fVehicleReal;
		float 					fVehicleRoll[3];

		float					fActorArmor;
		float					fActorHealth;
		unsigned char          pad_2[12];
		unsigned int				ulUnk10;
		unsigned char					byteUnk9;
		unsigned int				dwTick;
		unsigned int				dwLastStreamedInTick;
		unsigned int				ulUnk7;
		int						iAFKState;
		struct stHeadSync		headSyncData;

		int						iGlobalMarkerLoaded;
		int						iGlobalMarkerLocation[3];
		unsigned int				ulGlobalMarker_GTAID;
	}__attribute__ ((packed));

	struct stRemotePlayer {
		stRemotePlayerData	*pPlayerData;
		int					iPing;
		void						*pVTBL_txtHandler;
		char				strPlayerName[24];
		int						iScore;
		int						iIsNPC;
	}__attribute__ ((packed));
]]
