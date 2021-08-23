--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.ffi.cdef[[
	struct stScoreboardInfo {
		int					iIsEnabled;
		int					iPlayersCount;
		float				fTextOffset[2];
		float				fScalar;
		float				fSize[2];
		float				fUnk0[5];
		void				*pDirectDevice;
		void				*pDialog;
		void 				*pList;
		int					iOffset;
		int					iIsSorted;
	} __attribute__ ((packed));
]]
