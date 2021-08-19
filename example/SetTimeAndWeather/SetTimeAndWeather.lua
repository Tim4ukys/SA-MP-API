script_name("SetTimeAndWeather")
script_description("/set_weather(/sw) - change weather, /set_time(/st) - change time")
script_version("v1.0")
script_authors("Tim4ukys")
script_dependencies("SA-MP v0.3.7 R1", "SA-MP v0.3.7 R3-1", "SA-MP v0.3.DL R1")

local dl = require "SA-MP API.init"
local ffi = require( 'ffi' )

local encoding = require 'encoding'
encoding.default = 'UTF-8'
cp1251 = encoding.CP1251

function cmdSetTime(param)
    local hour = tonumber(ffi.string(param))
    if hour ~= nil and hour >= 0 and hour <= 23 then

        local this = dl.Get().pBase.pSettings

        this.byteWorldTime_Hour = ffi.cast("unsigned char", hour)

        local textbuff = string.format(cp1251"[{FF9900}SetTime{990000}] {FF9900}Новое время {990000}- {FF9900}%02d:00{990000}!", hour)
        -- print(textbuff)
        dl.AddMessageToChat(8, ffi.new("char[" .. string.len( textbuff ) + 1 .. "]", textbuff), nullptr, 0x990000, 0)
    else
        dl.AddMessageToChat(8, cp1251"[{FF9900}SetTime{990000}] {FF9900}/set_time {606060}[0 - 23]", nullptr, 0x990000, 0)
    end
end

function cmdSetWeather(param)
    local weather = tonumber(ffi.string(param))
    if weather ~= nil and weather >= 0 and weather <= 45 then

        local this = dl.Get().pBase.pSettings

        this.byteWeather = ffi.cast("unsigned char", weather)
        forceWeatherNow(weather)

        local textbuff = string.format(cp1251"[{FF9900}SetWeather{990000}] {FF9900}Новая погода {990000}- {FF9900}%d{990000}!", weather)
        -- print(textbuff)
        dl.AddMessageToChat(8, ffi.new("char[" .. string.len( textbuff ) + 1 .. "]", textbuff), nullptr, 0x990000, 0)
    else
        dl.AddMessageToChat(8, cp1251"[{FF9900}SetWeather{990000}] {FF9900}/set_weather {606060}[0 - 45]", nullptr, 0x990000, 0)
    end
end

function main()
    while not dl.GetIsAvailable() do
        wait(0)
    end
    dl.AddMessageToChat(8, cp1251"[{FF9900}SetTime&Weather{990000}] {FF9900}Lua скрипт инициализирован{990000}!", nullptr, 0x990000, 0)
    dl.AddMessageToChat(8, cp1251"Команды: {FF9900}/set_time{606060}(/st) {606060}| {FF9900}/set_weather{606060}(/sw)", nullptr, 0x990000, 0)
    dl.AddMessageToChat(8, cp1251"Автор: {FF9900}Tim4ukys {606060}| {990000}Ссылка: {FF9900}vk.com/petrov_team", nullptr, 0x990000, 0)
    

    dl.RegisterClientCommand("st", cmdSetTime, true)
    dl.RegisterClientCommand("set_time", cmdSetTime, true)
    dl.RegisterClientCommand("sw", cmdSetWeather, true)
    dl.RegisterClientCommand("set_weather", cmdSetWeather, true)
    
    wait(-1)
end
