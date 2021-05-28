--[[
	Project: SA-MP API

	Author: LUCHARE
	

	All structures are taken from mod_s0beit_sa.
	Copyright: BlastHack
	mod_sa is available from https://github.com/BlastHackNet/mod_s0beit_sa/
]]

local sys = require 'SA-MP API.kernel'

sys.safely_include 'SA-MP API.samp.0_3_7-R3.stServerPresets'
sys.safely_include 'SA-MP API.samp.0_3_7-R3.stSAMPPools'

sys.ffi.cdef[[
	struct stSAMP {
        char                    pad_0[44];
        void 			*pRakClientInterface;

        char                    szIP[257];
        char                    szHostname[257];
        bool                    m_bDisableCollision;
        bool                    m_bUpdateCameraTarget;
        bool                    bNametagStatus;
        int                     ulPort;
        int                     iLanMode;
        unsigned int            ulMapIcons[100];
        int                     iGameState;
        unsigned int            ulConnectTick;
        
        stServerPresets	        *pSettings;
        char                    pad_2[5];
        stSAMPPools	        *pPools;
	} __attribute__ ((packed));
]]
