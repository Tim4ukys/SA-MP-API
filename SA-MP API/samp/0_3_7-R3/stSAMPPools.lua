--[[
	Project: SA-MP API
	
	Author: LUCHARE
	

	All structures are taken from mod_s0beit_sa.
	Copyright: BlastHack
	mod_sa is available from https://github.com/BlastHackNet/mod_s0beit_sa/
]]

local sys = require 'SA-MP API.kernel'

sys.safely_include 'SA-MP API.samp.0_3_7-R3.stPlayerPool'
sys.safely_include 'SA-MP API.samp.0_3_7-R3.stVehiclePool'
sys.safely_include 'SA-MP API.samp.0_3_7-R3.stPickupPool'
sys.safely_include 'SA-MP API.samp.0_3_7-R3.stTextdrawPool'
sys.safely_include 'SA-MP API.samp.0_3_7-R3.stTextLabelPool'
sys.safely_include 'SA-MP API.samp.0_3_7-R3.stGangzonePool'
sys.safely_include 'SA-MP API.samp.0_3_7-R3.stObjectPool'
sys.safely_include 'SA-MP API.samp.0_3_7-R3.stActorPool'

sys.ffi.cdef[[
	struct stSAMPPools {
		void					*pPlayerLabels;
		stActorPool				*pActor;
		stPlayerPool			*pPlayer;
		stVehiclePool			*pVehicle;
		stPickupPool			*pPickup;
		stObjectPool			*pObject;
		stGangzonePool		    *pGangzone;
		stTextLabelPool		    *pText3D;
		stTextdrawPool		    *pTextdraw;
	}__attribute__ ((packed));
]]
