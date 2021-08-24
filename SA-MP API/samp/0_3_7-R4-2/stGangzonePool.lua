--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.safely_include 'SA-MP API.samp.0_3_7-R4-2.stGangzone'

sys.ffi.cdef[[
	struct stGangzonePool {
		stGangzone	*pGangzone[1024];
		int					iIsListed[1024];
	}__attribute__ ((packed));
]]
