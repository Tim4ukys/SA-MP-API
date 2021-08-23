--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.ffi.cdef[[
	struct stChatEntry {
		unsigned int			SystemTime;
		char					szPrefix[28];
		char					szText[144];
		unsigned char				unknown[64];
		int						iType;
		unsigned int	clTextColor;
		unsigned int	clPrefixColor;
	}__attribute__ ((packed));
]]
