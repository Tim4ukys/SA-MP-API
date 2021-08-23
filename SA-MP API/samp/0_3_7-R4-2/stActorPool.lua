--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.ffi.cdef[[
	struct stActorPool {
		int									iLastActorID;
		stSAMPEntity				*pActor[1000];
		int									iIsListed[1000];
		struct actor_info		*pGTAPed[1000];
		unsigned int						ulUnk0[1000];
		unsigned int						ulUnk1[1000];
	}__attribute__ ((packed));
]]
