--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.ffi.cdef[[
	struct stGangzone {
		float			fPosition[4]; // -- left, bottom, right, top
		unsigned int	dwColor;
		unsigned int	dwAltColor;
	}__attribute__ ((packed));
]]
