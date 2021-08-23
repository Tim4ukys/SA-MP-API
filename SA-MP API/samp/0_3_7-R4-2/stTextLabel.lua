--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.ffi.cdef[[
	struct stTextLabel {
		char				*pText;
		unsigned int		color;
		float				fPosition[3];
		float				fMaxViewDistance;
		unsigned char			byteShowBehindWalls;
		unsigned short		sAttachedToPlayerID;
		unsigned short		sAttachedToVehicleID;
	}__attribute__ ((packed));
]]
