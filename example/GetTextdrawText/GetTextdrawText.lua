script_name("GetTextdrawText")
script_version("v1.0")
script_authors("Tim4ukys")
script_dependencies("SA-MP v0.3.7 R1", "SA-MP v0.3.7 R3-1", "SA-MP v0.3.DL R1")

local dl = require "SA-MP API.init"
local ffi = require( 'ffi' )

function main()
    while not dl.GetIsAvailable() do
        wait(0)
    end
    
    for i=0, 2048 do
        local textdrawText = ffi.string(dl.TextdrawGetString(i))

        if textdrawText ~= '' then
            print('ID: ' .. i .. ' | ' .. textdrawText)
        end
    end
end