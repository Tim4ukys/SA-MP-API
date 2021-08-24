script_name("debugSAMPAPI")
script_version("v1.0")
script_authors("Tim4ukys")
script_dependencies("SA-MP v0.3.7 R1", "SA-MP v0.3.7 R3-1", "SA-MP v0.3.DL R1", "SA-MP v0.3.7 R4-2")

local dl = require "SA-MP API.init"
local ffi = require( 'ffi' )

local encoding = require 'encoding'
encoding.default = 'UTF-8'
cp1251 = encoding.CP1251

function debugMessageToChat( msg )
    dl.AddMessageToChat(8, cp1251"DEBUG SA-MP API: {FFFFFF}" .. msg, nullptr, 0x12b897, 0)
end

local runDebug = false

function cmdTestSAMPAPI( param )
    if runDebug == false then 
        runDebug = true

        --[[
            Т.к. мы будем использовать wait(), чтобы не замораживать основной поток я создаю новый поток.

            Если вызвать wait в функции main, то ничего не произайдёт с игрой, т.к. moonloader при загрузке
            lua скриптов создаёт под него новый поток(точно так же делает cleo и sampfuncs), и при вызове wait фактически
            вы замораживаете только его. Эту функцию(cmdTestSAMPAPI) будет вызывать основной поток игры, и поэтому придётся создавать новый поток, 
            дабы не ёбнуть игру к хуям.

            Чтобы не создавать по 1000 раз потоки, добавленно условие чтобы это сделать было нельзя.
        ]]
        lua_thread.create(function()

            -- stChatInfo
            debugMessageToChat(cp1251"Тестирование API начато")

            -- stInputBox and Misc
            dl.SendChat("/cmds") -- Прописываем команду "/cmds"
            wait(5000)

            dl.SetInputMode( 2, false )
            debugMessageToChat(cp1251"Курсор - {00FF00}ON")
            wait(3000)
            dl.SetInputMode( 0, true )
            debugMessageToChat(cp1251"Курсор - {FF0000}OFF")

            -- stLocalPlayer
            dl.RequestSpawn() 
            debugMessageToChat(cp1251"Отправлен запрос на спавн. Через 10 секунд будет принудительный спавн")
            wait(10000)
            dl.Spawn()
            debugMessageToChat(cp1251"Принудительный спавн... Через 10 секунд сменится интерьер")

            wait(10000)
            local oldIntID = dl.Get().pBase.pPools.pPlayer.pLocalPlayer.byteCurrentInterior
            debugMessageToChat(cp1251"Текущий интерьер: " .. oldIntID)
            local newIntID = nil
            if oldIntID ~= 0 then 
                newIntID = 0
            else 
                newIntID = math.random(1, 99)
            end
            dl.SendInteriorChange( newIntID )
            debugMessageToChat(cp1251"Сменён интерьер на " .. newIntID .. cp1251". Через 2 секунды вернётся всё как было")
            wait(1000)
            dl.SendInteriorChange(oldIntID)

            -- game
            debugMessageToChat(cp1251"Сейчас будет сделан скриншот..")
            dl.TakeScreenshot()
            debugMessageToChat(cp1251"Скриншот сделан!")

            -- textdraw list
            debugMessageToChat(cp1251"Список всех textdraw'ов будет в log'е moonloader'а")
            for i=0, 2303 do
                local textdrawText = ffi.string(dl.TextdrawGetString( i ))

                if textdrawText ~= '' then
                    print("id: " .. i .. " | text: " .. textdrawText)
                end
            end

            -- dialog
            dl.ShowDialog( 228, 0, cp1251"Важная инфа", cp1251"Скоро будет конец тестирования", cp1251"Круто!", "", false )

            debugMessageToChat(cp1251"Конец тестирования")

            runDebug = false
        end)
    end 
end

function main()
    while not dl.GetIsAvailable() do wait(0) end

    dl.AddMessageToChat(8, cp1251"DEBUG SA-MP API: {FFFFFF}Самп успешно инициализирован! CMD: /test_sampapi", nullptr, 0x12b897, 0)
    
    dl.RegisterClientCommand("test_sampapi", cmdTestSAMPAPI, true)
    
    wait(-1)
end
