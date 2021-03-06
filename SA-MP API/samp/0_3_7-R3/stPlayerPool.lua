--[[
	Project: SA-MP API
	
	Author: LUCHARE
	

	All structures are taken from mod_s0beit_sa.
	Copyright: BlastHack
	mod_sa is available from https://github.com/BlastHackNet/mod_s0beit_sa/
]]

local sys = require 'SA-MP API.kernel'

sys.safely_include 'SA-MP API.samp.0_3_7-R3.stLocalPlayer'
sys.safely_include 'SA-MP API.samp.0_3_7-R3.stRemotePlayer'

sys.ffi.cdef[[
	struct stPlayerPool {
		unsigned int					ulMaxPlayerID;
		stRemotePlayer					*pRemotePlayer[1004];
		int								iIsListed[1004];
		unsigned int					dwPlayerIP[1004];

		// -- stLocalInfo
		int								iLocalPlayerPing;
		int								iLocalPlayerScore;
		unsigned short					sLocalPlayerID;
		void					 		*pVTBL_txtHandler;
		char							strLocalPlayerName[24];
		stLocalPlayer					*pLocalPlayer;
	} __attribute__ ((packed));
]]
