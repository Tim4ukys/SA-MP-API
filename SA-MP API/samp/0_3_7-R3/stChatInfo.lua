--[[
	Project: SA-MP API
	
	Author: LUCHARE
	

	All structures are taken from mod_s0beit_sa.
	Copyright: BlastHack
	mod_sa is available from https://github.com/BlastHackNet/mod_s0beit_sa/
]]

local sys = require 'SA-MP API.kernel'

sys.safely_include 'SA-MP API.samp.0_3_7-R3.stChatEntry'
sys.safely_include 'SA-MP API.samp.0_3_7-R3.stFontRenderer'

sys.ffi.cdef[[
	struct stChatInfo {
		int					pagesize;
		char				*pLastMsgText;
		int					iChatWindowMode;
		unsigned char				bTimestamps;
		unsigned int			m_iLogFileExist;
		char				logFilePathChatLog[0x104 + 1];
		void				*pGameUI;
		void				*pEditBackground;
		void				*pDXUTScrollBar;
		unsigned int			clTextColor;
		unsigned int			clInfoColor;
		unsigned int			clDebugColor;
		unsigned int					m_lChatWindowBottom;

		stChatEntry				chatEntry[100];
        
		stFontRenderer		*m_pFontRenderer;
		void			*m_pChatTextSprite;
		void			*m_pSprite;
		void	*m_pD3DDevice;
		int				m_iRenderMode;
		void	*pID3DXRenderToSurface;
		void	*m_pTexture;
		void	*pSurface;
		unsigned int	*pD3DDisplayMode[4];
		int					iUnk1[2];
		int					m_iRedraw;
		long 				m_nPrevScrollBarPosition;
		long 				m_iFontSizeY;
		long 				m_iTimestampWidth;
	} __attribute__ ((packed));
]]
