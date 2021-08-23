--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.safely_include 'SA-MP API.samp.0_3_7-R3.stLocalPlayer'
sys.safely_include 'SA-MP API.samp.0_3_7-R3.stRemotePlayer'

sys.ffi.cdef[[
	struct stPlayerPool {
		// -- stLocalInfo
		int								iLocalPlayerScore;
		unsigned short					sLocalPlayerID;
		void					 		*pVTBL_txtHandler;
		char							strLocalPlayerName[24];
		int								iLocalPlayerPing;
		stLocalPlayer					*pLocalPlayer;

		int								iIsListed[1004];
		unsigned int					dwPlayerIP[1004];
		stRemotePlayer					*pRemotePlayer[1004];

		unsigned int					ulMaxPlayerID; // -- 2F3A
	} __attribute__ ((packed));
]]
