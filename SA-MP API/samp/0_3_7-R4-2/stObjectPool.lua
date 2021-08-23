--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]


local sys = require 'SA-MP API.kernel'

sys.safely_include 'SA-MP API.samp.0_3_7-R3.stObject'

sys.ffi.cdef[[
	struct stObjectPool {
		int				iObjectCount;
		int				iIsListed[1000];
		stObject 	*object[1000];
	}__attribute__ ((packed));
]]
