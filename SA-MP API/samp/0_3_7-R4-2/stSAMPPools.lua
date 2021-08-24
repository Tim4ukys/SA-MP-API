--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.safely_include 'SA-MP API.samp.0_3_7-R4-2.stPlayerPool'
sys.safely_include 'SA-MP API.samp.0_3_7-R4-2.stVehiclePool'
sys.safely_include 'SA-MP API.samp.0_3_7-R4-2.stPickupPool'
sys.safely_include 'SA-MP API.samp.0_3_7-R4-2.stTextdrawPool'
sys.safely_include 'SA-MP API.samp.0_3_7-R4-2.stTextLabelPool'
sys.safely_include 'SA-MP API.samp.0_3_7-R4-2.stGangzonePool'
sys.safely_include 'SA-MP API.samp.0_3_7-R4-2.stObjectPool'
sys.safely_include 'SA-MP API.samp.0_3_7-R4-2.stActorPool'

sys.ffi.cdef[[
	struct stSAMPPools {
		stVehiclePool 	*pVehicle; // -- +0h
		stPlayerPool	*pPlayer; // -- +4h
		stPickupPool 	*pPickup; // -- +8h
		stObjectPool	*pObject; // -- +0Ch
		stActorPool		*pActor; // -- +10h
		stGangzonePool	*pGangzone; // -- +14h
		stTextLabelPool	*pText3D; // -- +18h
		stTextdrawPool	*pTextdraw; // -- +1Ch
		void			*pPlayerLabels; // -- +20h
	}__attribute__ ((packed));
]]