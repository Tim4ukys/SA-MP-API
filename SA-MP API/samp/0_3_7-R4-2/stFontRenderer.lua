--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.ffi.cdef[[
	struct stFontRenderer {
        void		*pChatFont;
		void		*pLittleFont;
        void		*pChatShadowFont;
		void		*pLittleShadowFont;
        void		*pCarNumberFont;
		void 		*pTempSprite;
		void		*pD3DDevice;
		char		*pszTextBuffer;

        int         m_nCharHeight;
        int         m_nLittleCharHeight;

	} __attribute__ ((packed));
]]
