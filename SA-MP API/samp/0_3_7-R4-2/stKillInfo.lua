--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.safely_include 'SA-MP API.samp.0_3_7-R4-2.stKillEntry'

sys.ffi.cdef[[
	struct stKillInfo	{
		int					iEnabled;
		stKillEntry	killEntry[5];
		int 			iLongestNickLength;
	  int 			iOffsetX;
	  int 			iOffsetY;
		void		*pD3DFont;
		void		*pWeaponFont1;
		void		*pWeaponFont2;
		void		*pSprite;
		void		*pD3DDevice;
		int 			iAuxFontInited;
	  void 		*pAuxFont1;
	  void 		*pAuxFont2;
	} __attribute__ ((packed));
]]
