--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.safely_include 'SA-MP API.samp.0_3_7-R3.stSAMPPed'

sys.ffi.cdef[[
	struct stAudio
	{
		int	iSoundState; // -- 0 - Finished, 1 - Loaded, 2 - Playing
		bool m_bOutdoorAmbienceTrackDisabled;
	}__attribute__ ((packed));

	struct stCamera
	{
		void*	pEntity; // -- mabe m_pAttachedTo
		struct CMatrix_Padded* matrix;
	}__attribute__ ((packed));

	struct stGameInfo
	{
		struct stAudio*	pAudio;
		struct stCamera*	pCamera;
		stSAMPPed*	pLocalPlayerPed;
		
		// -- stracingCheckpoint | not tested
		float		fRaceCheckpointPos[3];
		float		fRaceCheckpointNext[3];
		float		m_fRaceCheckpointSize;
		uint8_t		byteRaceType;
		int			bRaceCheckpointsEnabled;
		unsigned long		dwRaceCheckpointMarker;
		unsigned long		dwRaceCheckpointHandle;

		// -- stCheckpoint | not tested
		float			fCheckpointPos[3];
		float			fCheckpointExtent[3];
		int				bCheckpointsEnabled;
		unsigned long	dwCheckpointMarker;
		
		uint32_t 	ulUnk1;
		int 		bHeadMove;
		int 		nFrameLimit;
		int 		iCursorMode;
		int 		ulFpsLimit;
		int 		bClockEnabled;
		uint8_t 	byteUnk3;
		bool    	byteVehicleModels[212];
	}__attribute__ ((packed));
]]
