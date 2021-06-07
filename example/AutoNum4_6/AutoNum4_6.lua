--[[
    Спасибо за помощь в тесте: Дмитрий Майоров
]]

script_name("AutoNum4_6")
script_version("v2.1")
script_authors("Tim4ukys")
script_url("https://vk.com/petrov_team")
script_dependencies("SA-MP v0.3.7 R1", "SA-MP v0.3.7 R3-1", "SA-MP v0.3.DL R1")

local dl    = require( 'SA-MP API.init' )
local ffi   = require( 'ffi' )

function getPing()
    dl.UpdateScoreboardData()

    local this = dl.Get().pBase.pPools.pPlayer
    if ( this == 0x0 ) then return nil end
    
    return this.iLocalPlayerPing
end

function isInputOpen()
    local this = dl.Get().pChatInput
    if ( this == 0x0 ) then return false end

    return this.iInputEnabled == 1
end

function main()
    while not dl.GetIsAvailable() do wait(0) end

	while true do
        wait(100 + getPing())
        local textdrawText = ffi.string(dl.TextdrawGetString(2188))
        local textdrawTextfish = ffi.string(dl.TextdrawGetString(2151))

        if (isInputOpen() == false) then
            if textdrawText == "~y~PRESS NUM4" or textdrawTextfish == "~y~PRESS NUM4" then 
                goKeyPressed(100) -- num 4 
            elseif textdrawText == "~y~PRESS NUM6" or textdrawTextfish == "~y~PRESS NUM6" then 
                goKeyPressed(102) -- num 6
            end
        end
	end
end

function goKeyPressed(keyID)
    lua_thread.create(function()
       setVirtualKeyDown(keyID, true)
       wait(100)
       setVirtualKeyDown(keyID, false)
    end)
end
