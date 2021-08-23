--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.ffi.cdef[[
	struct stKillEntry {
		char					szKiller[25];
		char					szVictim[25];
		unsigned int	clKillerColor;
		unsigned int	clVictimColor;
		unsigned char				byteType;
	} __attribute__ ((packed));
]]
