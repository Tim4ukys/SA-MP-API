--[[
	Project: SA-MP-API

	Author: Tim4ukys
	My url: vk.com/tim4ukys
]]

local sys = require 'SA-MP API.kernel'

sys.ffi.cdef[[
	struct stSAMPEntity {
		void		*pVTBL;
		unsigned char		byteUnk0[60];
		void			*pGTAEntity;
		unsigned int	ulGTAEntityHandle;
	}__attribute__ ((packed));
]]
