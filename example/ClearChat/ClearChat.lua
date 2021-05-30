script_name("ClearChat")
script_version("v1.0")
script_authors("Tim4ukys")
script_dependencies("SA-MP v0.3.7 R1", "SA-MP v0.3.7 R3-1", "SA-MP v0.3.DL R1")

local dl        = require( 'SA-MP API.init' )
local ffi       = require( 'ffi' )

function ClearEntry(kolvo)
    local m_pChat = dl.Get().pChat
    for i = 99, 100 - kolvo, -1 do
        local this = m_pChat.chatEntry[i]
        this.SystemTime = 0
        this.szPrefix = ffi.new("char[28]", "\0")
        this.szText = ffi.new("char[144]", "\0")
        this.iType = 0
        this.clTextColor = 0
        this.clPrefixColor = 0

    end
    m_pChat.m_iRedraw = ffi.cast("int", 1)
end

function cmdChatClear(param)
    local kolvoEntry = tonumber(ffi.string(param))
    if kolvoEntry ~= nil and kolvoEntry >= 1 and kolvoEntry <= 100 then
        ClearEntry(kolvoEntry)
    else
        ClearEntry(100)
    end
end

function main()
    while not dl.GetIsAvailable() do
        wait(0)
    end
    
    dl.RegisterClientCommand("cclear", cmdChatClear, true)

    wait(-1)
end