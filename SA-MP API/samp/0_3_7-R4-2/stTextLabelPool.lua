--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.safely_include 'SA-MP API.samp.0_3_7-R4-2.stTextLabel'

sys.ffi.cdef[[
	struct stTextLabelPool {
		stTextLabel	textLabel[2048];
		int					iIsListed[2048];
	}__attribute__ ((packed));
]]
