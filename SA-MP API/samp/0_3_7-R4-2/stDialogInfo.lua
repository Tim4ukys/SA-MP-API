--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.ffi.cdef[[
	struct stDialogInfo {
		void	*m_pD3DDevice;
		int	iTextPoxX;
		int	iTextPoxY;
		unsigned int	uiDialogSizeX;
		unsigned int	uiDialogSizeY;
		int	iBtnOffsetX;
		int	iBtnOffsetY;
		void	*pDialog;
		void	*pList;
		void	*pEditBox;
		int	iIsActive;
		int	iType;
		unsigned int	DialogID;
		char		*pText;
		unsigned int	uiTextWidth;
		unsigned int	uiTextHeight;
		char		szCaption[65];
		int		bServerside;
		char              pad[536];
	}__attribute__ ((packed));
]]
