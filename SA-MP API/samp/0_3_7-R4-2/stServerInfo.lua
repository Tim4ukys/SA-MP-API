--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.ffi.cdef[[
	struct stServerInfo {
		unsigned int 			uiIP;
		unsigned short 			usPort;
	} __attribute__ ((packed));
]]
