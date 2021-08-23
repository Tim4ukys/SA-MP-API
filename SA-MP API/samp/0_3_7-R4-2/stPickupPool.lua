--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.safely_include 'SA-MP API.samp.0_3_7-R3.stPickup'

sys.ffi.cdef[[
	struct stPickupPool {
		int					iPickupsCount;
		unsigned int		ul_GTA_PickupID[4096];
		int					iPickupID[4096];
		int					iTimePickup[4096];
		unsigned char			unk[4096 * 3];
		stPickup 		pickup[4096];
	}__attribute__ ((packed));
]]
