--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.safely_include 'SA-MP API.samp.0_3_7-R4-2.stTextdraw'

sys.ffi.cdef[[
	struct stTextdrawPool {
		int					iIsListed[2048];
		int					iPlayerTextDraw[256];
		stTextdraw	*textdraw[2048];
		stTextdraw	*playerTextdraw[256];
	} __attribute__ ((packed));
]]
