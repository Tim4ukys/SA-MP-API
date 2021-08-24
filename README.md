[![GitHub license](https://img.shields.io/github/license/Tim4ukys/SA-MP-API)](https://github.com/Tim4ukys/SA-MP-API/blob/main/LICENSE)
[![GitHub top language](https://img.shields.io/github/languages/top/Tim4ukys/SA-MP-API)](https://github.com/Tim4ukys/SA-MP-API/search?l=lua)
[![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/Tim4ukys/SA-MP-API?label=version)](https://github.com/Tim4ukys/SA-MP-API/releases/latest)
[![GitHub Release Date](https://img.shields.io/github/release-date/Tim4ukys/SA-MP-API)](https://github.com/Tim4ukys/SA-MP-API/releases)

<!-- ![logo_samp-api](./image/render-logo_1.png) -->
<img src="./image/render-logo_1.png" align=center>

## SA-MP API

Библиотека для взаимодействия с функциями, классами и структурами клиента SA-MP на языке _LUA_.

## Установка 

Чтобы установить последнию версию данной библиотеки, перейдите в [_Release_](https://github.com/Tim4ukys/SA-MP-API/releases/latest) и скачайте _source code_.
Далее просто откройте скачанный архив и переместите папку _"SA-MP API"_ в папку _lib_ в Вашем _Moonloader_.

# Авторы
[LUCHARE](https://github.com/LUCHARE) - автор оригинального SA-MP API.

[THE-FYP](https://www.blast.hk/members/2/), [imring](https://github.com/imring) - авторы мультиверсии.

[stereoliza](https://www.blast.hk/members/374442/) - автор lua версии.

[Tim4ukys](https://vk.com/tim4ukys) - автор доработки lua версии.

---

## Доступные функции

```lua
--[[
    Актуальный список функций на 24.08.2021
]]

-- Основное 
GetIsAvailable() -- возращает true если SA-MP инициализирован
Get() -- Функция для доступа к указателям. Например pChat или pBase.

-- InputBox
SendChat( text ) -- Прописывает в чат сообщение, точно так же, если бы делал это игрок вручную через InputBox
ToggleCursor( toggle ) -- Меняет состояние курсора
RegisterClientCommand( cmd, func, replaceOld ) -- Регистрирует локальную команду
DeleteClientCommand( cmd ) -- Удаляет локальную команду
_RegisterClientCommand( cmd, func ) -- Регистрирует локальную команду, только вызывая функцию SA-MP клиента
SendCommand( text ) -- Отправляет команду на сервер

-- Misc
SetInputMode( mode, disable_cursor ) -- Меняет режим работы с клавиатурой. Эта функция отличается от ToggleCursor
UnlockActorCam() -- Разблокирует камеру у игрока

-- LocalPlayer
RequestSpawn() -- Отправляет запрос на спавн
Spawn() -- Спавнит игрока
Say( msg ) -- Произносит фразу в чат
SendInteriorChange( intId ) -- Меняет интерьер
RequestClass( classId ) -- Отправляет запрос на изменение класса персонажа
SetSpecialAction( actionId ) -- Меняет состояние локального игрока
GetCurrentWeaponID(  ) -- Возрящает byteCurrentWeaponID

-- ChatInfo
AddMessageToChat( msgType, msg, prefix, msgColor, prefixColor ) -- Добавляет сообщение в чат.
AddChatMessage( msgColor, msg ) -- Добавляет Debug сообщение в чат

-- NetGame
UpdateScoreboardData() -- Обновляет информацию о игроках(Пинг, Уровень и т.д.)

-- ScoreBoard
DisableScoreboard( disable_cursor ) -- Вырубает ScoreBoard

-- Game 
TakeScreenshot() -- Делает скриншот

-- TextDraw 
TextdrawIsExists( id ) -- Проверяет, есть ли textdraw
TextdrawGetString( id ) -- Получает Текст текстдрава

-- Dialog
ShowDialog( iID, iStyle, szCaption, szText, szButton1, szButton2, bSendRequestToServer ) -- Показывает DXUT диалог на экране

-- AudioStream
PlayAudioStream( szUrl, posX, posY, posZ, fRadius, bIs3d ) -- Проигрывает аудио-поток. Возращает значение BOOL(0 - false, не 0 - true)
StopAudioStream( bWait ) -- Останавливает Аудио-поток. Возращает значение BOOL(0 - false, не 0 - true)

```