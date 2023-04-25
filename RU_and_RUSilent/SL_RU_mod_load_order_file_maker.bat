:: Сделано xsSplater под MIT лицензией.

@echo off
setlocal enableextensions enabledelayedexpansion
1>nul chcp 65001

REM ЕСЛИ MOD_LOAD_ORDER.TXT НЕ СУЩЕСТВУЕТ...
if NOT exist mod_load_order.txt (
rem Красный цвет текста
	color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ФАЙЛ MOD_LOAD_ORDER.TXT НЕ НАЙДЕН‼                           █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
cls

rem Стандартный цвет: белый по чёрному
	color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Вы действительно поместили RU_mod_load_order_file_maker.bat  █
	echo █ в папку MODS?                                                █
	echo █                                                              █
	echo █ Если вы уверены, что это папка MODS и всё в порядке...       █
	echo █ то я создам для вас новый чистый файл mod_load_order.txt?    █
	echo █                                                              █
	echo █                                                              █
	echo █  Y - Да, пожалуйста. Файл удалён/испорчен/отсутствует.       █
	echo █  N - Нет, я лучше проверю всё ещё раз... ВЫХОД‼              █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.

	Choice
		If Errorlevel 2 Goto NoMLOT
		If Errorlevel 1 Goto YesMLOT
)

goto MLOTfinded

rem СОЗАДАВАТЬ НОВЫЙ ФАЙЛ MOD_LOAD_ORDER.TXT?-----------------------------------!
:YesMLOT
	cls
	rem Салатовый цвет текста
	color 0A
	echo.>mod_load_order.txt
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ФАЙЛ MOD_LOAD_ORDER.TXT СОЗДАН‼                              █
	echo █ Нажмите любую клавишу, чтобы продолжить создание списка...   █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	pause
	cls
goto MLOTfinded

:NoMLOT
	cls
	rem Красный цвет текста
	color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Скопируйте файл mod_load_order_file_maker_ru.bat             █
	echo █ в папку MODS и запустите его снова‼                          █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	pause
exit
rem ----------------------------------------------------------------------------!

rem ЕСЛИ MOD_LOAD_ORDER.TXT СУЩЕСТВУЕТ...
:MLOTfinded
if exist mod_load_order.txt (
rem СОЗДАЁМ РЕЗЕРВНУЮ КОПИЮ ФАЙЛА MOD_LOAD_ORDER.TXT
	 echo f | XCOPY mod_load_order.txt mod_load_order.txt_%Date:~0,2%.%Date:~3,2%.%Date:~6,4%_%TIME:~3,2%%TIME:~6,5%.bak /y /i 1>nul
)

rem ЗАПИСЫВАЕМ СТАНДАРТНУЮ АВТОРСКУЮ ШАПКУ ИЗ ФАЙЛА MOD_LOAD_ORDER.TXT
	(echo -- #RU#############################################################
	echo -- Введите названия выших модов ниже, каждый мод с новой строки.
	echo -- Порядок в списке определяет порядок загрузки модов.
	echo -- Не переименовывайте папки мода.
	echo -- Вам не нужно включать в список папки модов «base» или «dmf».
	echo -- ################################################################
	echo.)>mod_load_order.txt

rem ЕСЛИ МОД SCOREBOARD НЕ УСТАНОВЛЕН, ПРОПУСКАЕМ ВСЕ ЕГО ПРОВЕРКИ...
if NOT exist scoreboard goto GOcheck

rem ЕСЛИ МОД SCOREBOARD УСТАНОВЛЕН...
if exist scoreboard (
rem ПРОВЕРЯЕМ УСТАНОВЛЕН ЛИ ANIMATION ЕVENTS...

rem ЕСЛИ МОД ANIMATION ЕVENTS НЕ УСТАНОВЛЕН...
	if NOT exist animation_events (
		rem Красный цвет текста
		color 0C
		echo.
		echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
		echo █ ОЙ‼ Вы не установили мод Animation Еvents‼                   █
		echo █ Без него мод Scoreboard не будет работать‼                   █
		echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
		echo.
		echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
		echo █ Открыть вам в браузере страницу мода Animation Еvents?       █
		echo █                                                              █
		echo █  Y - Да, открой мне страницу мода. ВЫХОД‼                    █
		echo █  N - Не нужно, я сделаю всё сам. ВЫХОД‼                      █
		echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
		echo.

		Choice
			If Errorlevel 2 Goto NoAEMS
			If Errorlevel 1 Goto YesAEMS
	)

rem ЕСЛИ МОД ANIMATION ЕVENTS УСТАНОВЛЕН...
	if exist animation_events (
		echo animation_events>>mod_load_order.txt
	)
)

goto GOcheck

rem ОТКРЫТЬ СТРАНИЦУ МОДА ANIMATION ЕVENTS В БРАУЗЕРЕ?--------------------------!
:YesAEMS
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Сейчас откроется страница мода, а это окно закроется‼        █
	echo █ УСТАНОВИТЕ МОД ANIMATION ЕVENTS И ЗАПУСТИТЕ ЭТОТ ФАЙЛ СНОВА‼ █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	pause
	start https://www.nexusmods.com/warhammer40kdarktide/mods/21
exit

:NoAEMS
	cls
	rem Красный цвет текста
	color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ УСТАНОВИТЕ МОД ANIMATION ЕVENTS И ЗАПУСТИТЕ ЭТОТ ФАЙЛ СНОВА‼ █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	pause
exit
rem ----------------------------------------------------------------------------!

:GOcheck

rem ЕСЛИ МОД GRAPHICS OPTIONS НЕ УСТАНОВЛЕН, ПРОПУСКАЕМ ВСЕ ЕГО ПРОВЕРКИ...
if NOT exist graphics_options goto Mklist

rem ЕСЛИ МОД GRAPHICS OPTIONS УСТАНОВЛЕН...
if exist graphics_options (
rem ПРОВЕРЯЕМ УСТАНОВЛЕН ЛИ SETTINGS EXTENSION...

rem ЕСЛИ МОД SETTINGS EXTENSION НЕ УСТАНОВЛЕН...
	if NOT exist settings_extension (
		rem Красный цвет текста
		color 0C
		echo.
		echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
		echo █ ОЙ‼ Вы не установили мод Settings Extension‼                 █
		echo █ Без него мод Graphics Options не будет работать‼             █
		echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
		echo.
		echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
		echo █ Открыть вам в браузере страницу мода Settings Extension?     █
		echo █                                                              █
		echo █  Y - Да, открой мне страницу мода. ВЫХОД‼                    █
		echo █  N - Не нужно, я сделаю всё сам. ВЫХОД‼                      █
		echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
		echo.

		Choice
			If Errorlevel 2 Goto NoSEMGO
			If Errorlevel 1 Goto YesSEMGO
	)

rem ЕСЛИ МОД SETTINGS EXTENSION УСТАНОВЛЕН...
	if exist settings_extension (
		echo settings_extension>>mod_load_order.txt
	)
)

goto Mklist

rem ОТКРЫТЬ СТРАНИЦУ МОДА SETTINGS EXTENSION В БРАУЗЕРЕ?------------------------!
:YesSEMGO
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Сейчас откроется страница мода, а это окно закроется‼        █
	echo █ УСТАНОВИТЕ МОД SETTINGS EXTENSION И ЗАПУСТИТЕ ЭТОТ ФАЙЛ СНОВА█
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	pause
	start https://www.nexusmods.com/warhammer40kdarktide/mods/23
exit

:NoSEMGO
	cls
	rem Красный цвет текста
	color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ УСТАНОВИТЕ МОД SETTINGS EXTENSION И ЗАПУСТИТЕ ЭТОТ ФАЙЛ СНОВА█
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	pause
exit
rem ----------------------------------------------------------------------------!

rem СОЗДАЁМ ОСТАЛЬНОЙ СПИСОК МОДОВ, ИСКЛЮЧАЯ BASE, DMF, ANIMATION ЕVENTS и SETTINGS EXTENSION. В АЛФАВИТНОМ ПОРЯДКЕ(ПОКА ЧТО).
:Mklist

echo.>>mod_load_order.txt
for /f "tokens=*" %%i in (' dir /b /ad ^|findstr /iv /c:"dmf" /c:"base" 
/c:"animation_events" /c:"settings_extension"') do set "mydirs_%%~snxi=%%~nxi" 2>nul
for /f "tokens=2 delims== eol=" %%i in (' set mydirs_ ') do 1>>mod_load_order.txt echo %%i

start mod_load_order.txt

:EOF
