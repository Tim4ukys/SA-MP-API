--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.ffi.cdef[[
	struct stPickup {
		int		iModelID;
		int		iType;
		float	fPosition[3];
	}__attribute__ ((packed));
]]
