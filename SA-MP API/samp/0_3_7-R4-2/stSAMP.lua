--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.safely_include 'SA-MP API.samp.0_3_7-R4-2.stServerPresets'
sys.safely_include 'SA-MP API.samp.0_3_7-R4-2.stSAMPPools'

sys.ffi.cdef[[
	struct stSAMP {
            void    *pRakClientInterface;
            char    unk1[44];

            char    szIP[257];
            char    szHostname[257];

            bool    m_bDisableCollision;
            bool    m_bUpdateCameraTarget;
            bool    bNametagStatus;

            int     ulPort;
            int     iLanMode;

            unsigned int    ulMapIcons[100];

            int     iGameState;
            unsigned int    ulConnectTick;

            stServerPresets *pSettings;
            char unk2[5];
            stSAMPPools *pPools; // -- +3DEh
	} __attribute__ ((packed));
]]
