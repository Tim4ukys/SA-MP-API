--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.safely_include 'SA-MP API.samp.0_3_7-R3.stSAMPEntity'

sys.ffi.cdef[[
	struct stSAMPPed {
		stSAMPEntity actor_info;
		int					usingCellPhone;

		// -- stAccessories
		unsigned char				byteUnk0[600];

		struct actor_info	*pGTA_Ped;
		unsigned char				byteUnk1[22];
		unsigned char				byteKeysId;
		unsigned short			ulGTA_UrinateParticle_ID;
		
		// -- stStuff
		int					DrinkingOrSmoking;
		int					object_in_hand;
		int					drunkLevel;

		unsigned char				byteUnk2[5];
		int					isDancing;
		int					danceStyle;
		int					danceMove;
		unsigned char				byteUnk3[20];
		int					isUrinating;
	}__attribute__ ((packed));
]]
