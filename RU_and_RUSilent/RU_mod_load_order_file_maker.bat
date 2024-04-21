:: Сделано xsSplater под MIT лицензией.
@echo off
setlocal enableextensions enabledelayedexpansion
1>nul chcp 65001

REM БАЗОВАЯ ПРОВЕРКА: УСТАНОВЛЕН ЛИ ФАЙЛ В ПАПКУ С BASE И DMF? 
REM Белый текст
color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Проверка: установлен ли файл в правильную папку?             █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
cls
REM ЕСЛИ ПАПКА BASE МОДА DARKTIDE MOD LOADER НЕ СУЩЕСТВУЕТ...
if NOT exist base (
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ПАПКА BASE МОДА DARKTIDE MOD LOADER НЕ НАЙДЕНА‼              █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
cls
REM Белый текст
	color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Вы действительно установили DARKTIDE MOD LOADER?             █
	echo █ Похоже, что НЕТ‼ Отсутствует основная папка мода - «BASE»‼   █
	echo █                                                              █
	echo █ Убедитесь, что вы всё установили правильно‼                  █
	echo █ Открыть вам страницу с Руководством по установке модов       █
	echo █ Дарктайд?                                                    █
	echo █                                                              █
	echo █ [Y] - Да, пожалуйста. Мне нужна помощь в установке.          █
	echo █ [N] - Нет, Я проверю всё сам... ВЫХОД‼                       █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice
	If Errorlevel 2 Goto NoDMFL
	If Errorlevel 1 Goto YesDMFL)
goto DMLFinded

REM ЕСЛИ ПАПКА BASE МОДА DARKTIDE MOD LOADER СУЩЕСТВУЕТ...
:DMLFinded
if exist base (
REM Салатовый текст
color 0A
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ПАПКА BASE МОДА DARKTIDE MOD LOADER НАЙДЕНА‼                 █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ПРОВЕРЕНО‼ ВСЁ В ПОРЯДКЕ‼                                    █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul)
cls
goto DMFCheck

:DMFCheck
REM ЕСЛИ ПАПКА DMF МОДА DARKTIDE MOD FRAMEWORK НЕ СУЩЕСТВУЕТ...
if NOT exist dmf (
REM Красный цвет текста
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ПАПКА DMF МОДА DARKTIDE MOD FRAMEWORK НЕ НАЙДЕНА‼            █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
cls
REM Белый текст
	color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Вы действительно установили DARKTIDE MOD FRAMEWORK?          █
	echo █ Похоже, что НЕТ‼ Отсутствует основная папка мода - «DMF»‼    █
	echo █                                                              █
	echo █ Убедитесь, что вы всё установили правильно‼                  █
	echo █ Открыть вам страницу с Руководством по установке модов       █
	echo █ Дарктайд?                                                    █
	echo █                                                              █
	echo █ [Y] - Да, пожалуйста. Мне нужна помощь в установке.          █
	echo █ [N] - Нет, Я проверю всё сам... ВЫХОД‼                       █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice
	If Errorlevel 2 Goto NoDMFL
	If Errorlevel 1 Goto YesDMFL)
goto DMFFinded

REM ОТКРЫТЬ ВАМ СТРАНИЦУ С РУКОВОДСТВОМ ПО УСТАНОВКЕ МОДОВ ДАРКТАЙД?----------‼
:YesDMFL
timeout /t 2 1>nul
start https://steamcommunity.com/sharedfiles/filedetails/?id=2953324027
goto XSSRPMDT
:NoDMFL
cls
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ПРОВЕРЬТЕ ПРАВИЛЬНОСТЬ УСТАНОВКИ И ПЕРЕЗАПУСТИТЕ ЭТОТ ФАЙЛ‼  █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
pause
exit
REM ----------------------------------------------------------------------------‼
REM ЕСЛИ ПАПКА DMF МОДА DARKTIDE MOD FRAMEWORK СУЩЕСТВУЕТ...
:DMFFinded
if exist dmf (
REM Light green text color
color 0A
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ПАПКА DMF МОДА DARKTIDE MOD FRAMEWORK НАЙДЕНА‼               █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ПРОВЕРЕНО‼ ВСЁ В ПОРЯДКЕ‼                                    █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul)
cls
goto MLOTCheck

:MLOTCheck
REM Белый текст
color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Ищу файл MOD_LOAD_ORDER.TXT...                               █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
cls
REM ЕСЛИ MOD_LOAD_ORDER.TXT НЕ СУЩЕСТВУЕТ...
if NOT exist mod_load_order.txt (
REM Красный цвет текста
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ФАЙЛ MOD_LOAD_ORDER.TXT НЕ НАЙДЕН‼                           █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
cls
REM Белый текст
color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Вы действительно поместили RU_MOD_LOAD_ORDER_FILE_MAKER.BAT  █
	echo █ в папку MODS?                                                █
	echo █                                                              █
	echo █ Если вы уверены, что это папка MODS и всё в порядке...       █
	echo █ то я создам для вас НОВЫЙ ЧИСТЫЙ ФАЙЛ MOD_LOAD_ORDER.TXT?    █
	echo █                                                              █
	echo █                                                              █
	echo █ [Y] - Да, пожалуйста. Файл удалён/испорчен/отсутствует.      █
	echo █ [N] - Нет, я лучше проверю всё ещё раз... ВЫХОД‼             █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice
	If Errorlevel 2 Goto NoMLOT
	If Errorlevel 1 Goto YesMLOT)
goto MLOTfinded
REM СОЗДАВАТЬ НОВЫЙ ФАЙЛ MOD_LOAD_ORDER.TXT?------------------------------------!
:YesMLOT
cls
REM Салатовый текст
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
:NoMLOT
cls
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Скопируйте файл MOD_LOAD_ORDER_FILE_MAKER_RU.BAT в папку     █
	echo █ MODS и запустите его снова‼                                  █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
pause
exit
REM ----------------------------------------------------------------------------!

REM ЕСЛИ MOD_LOAD_ORDER.TXT СУЩЕСТВУЕТ...
:MLOTfinded
if exist mod_load_order.txt (
REM Салатовый текст
color 0A
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Файл MOD_LOAD_ORDER.TXT найден‼                              █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
cls
REM Белый текст
color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Создаю резервную копию текущего файла MOD_LOAD_ORDER.TXT...  █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
REM СОЗДАЁМ РЕЗЕРВНУЮ КОПИЮ ФАЙЛА MOD_LOAD_ORDER.TXT
echo f | XCOPY mod_load_order.txt mod_load_order.txt_%Date:~0,2%.%Date:~3,2%.%Date:~6,4%_%TIME:~3,2%%TIME:~6,5%.bak /y /i 1>nul
timeout /t 2 1>nul
REM Салатовый текст
color 0A
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ГОТОВО‼                                                      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 1 1>nul)
cls

REM ЗАПИСЫВАЕМ СТАНДАРТНУЮ АВТОРСКУЮ ШАПКУ ИЗ ФАЙЛА MOD_LOAD_ORDER.TXT
REM Белый текст
color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Записываю стандартную шапку в файл MOD_LOAD_ORDER.TXT...     █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
   (echo -- ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo -- █ 1. Если вам нужно добавить мод вручную, введите название папки █
	echo -- █ вашего мода ниже. Каждый новый мод обязательно с новой строки. █
	echo -- █ 2. Расположение в списке определяет порядок загрузки модов.    █
	echo -- █ Чем ниже мод, тем больший приоритет в загрузке у него будет.   █
	echo -- █ 3. Не переименовывайте папку мода, т.к. внутри названия папок  █
	echo -- █ и записи внутри файлов зависят от этого названия.              █
	echo -- █ 4. НЕ НУЖНО вносить в список папки «BASE» или «DMF» или вы     █
	echo -- █ получите ошибку в игре‼                                        █
	echo -- █ 5. Если какой-то мод не попал в список, обязательно сообщите   █
	echo -- █ мне об этом в моём Дискорде: https://discord.gg/BGZagw3xnz     █
	echo -- █ или на странице мода на сайте Nexusmods:                       █
	echo -- █ https://www.nexusmods.com/warhammer40kdarktide/mods/139        █
	echo -- ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.)>mod_load_order.txt)
REM Салатовый текст
color 0A
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ГОТОВО‼                                                      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
cls

:LMICheck
REM ЕСЛИ МОД LOGMEIN НЕ УСТАНОВЛЕН, ПРОПУСКАЕМ ВСЕ ЕГО ПРОВЕРКИ...
if NOT exist LogMeIn goto PWCheck
REM ЕСЛИ МОД LOGMEIN УСТАНОВЛЕН...
if exist LogMeIn (
REM Салатовый текст
color 0A
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ МОД LOG ME IN НАЙДЕН‼                                        █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
REM Белый текст
color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Поднимаю его вверх списка для правильной работы модов‼       █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	echo LogMeIn>>mod_load_order.txt
timeout /t 2 1>nul
REM Салатовый текст
color 0A
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ГОТОВО‼                                                      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul)
cls

:PWCheck
REM ЕСЛИ МОД PSYCH WARD НЕ УСТАНОВЛЕН, ПРОПУСКАЕМ ВСЕ ЕГО ПРОВЕРКИ...
if NOT exist psych_ward goto DLocSCheck
REM IF THE PSYCH WARD MOD IS INSTALLED...
if exist psych_ward (
REM Light green text color
color 0A
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ МОД PSYCH WARD НАЙДЕН‼                                       █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
REM Standart color. Black text and white letters
color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Поднимаю его вверх списка для правильной работы модов‼       █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	echo psych_ward>>mod_load_order.txt
timeout /t 2 1>nul
REM Light green text color
color 0A
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ГОТОВО‼                                                      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul)
cls

:DLocSCheck
REM ЕСЛИ МОД DARKTIDE LOCAL SERVER НЕ УСТАНОВЛЕН, ПРОПУСКАЕМ ВСЕ ЕГО ПРОВЕРКИ...
if NOT exist DarktideLocalServer goto SCRBRDCheck
REM IF THE DARKTIDE LOCAL SERVER MOD IS INSTALLED...
if exist DarktideLocalServer (
REM Салатовый текст
color 0A
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ МОД DARKTIDE LOCAL SERVER НАЙДЕН‼                            █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
REM Белый текст
color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Поднимаю его вверх списка для правильной работы модов‼       █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	echo DarktideLocalServer>>mod_load_order.txt
timeout /t 2 1>nul
REM Салатовый текст
color 0A
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ГОТОВО‼                                                      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul)
cls

:SCRBRDCheck
REM ЕСЛИ МОД SCOREBOARD НЕ УСТАНОВЛЕН, ПРОПУСКАЕМ ВСЕ ЕГО ПРОВЕРКИ...
if NOT exist scoreboard goto Mklist
REM ЕСЛИ МОД SCOREBOARD УСТАНОВЛЕН...
if exist scoreboard (
REM Салатовый текст
color 0A
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ НАЙДЕН МОД SCOREBOARD‼                                       █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
REM Белый текст
color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Проверяю установлен ли мод ANIMATION EVENTS, необходимый для █
	echo █ работы SCOREBOARD...                                         █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
cls
REM ПРОВЕРЯЕМ УСТАНОВЛЕН ЛИ ANIMATION ЕVENTS...
REM ЕСЛИ МОД ANIMATION ЕVENTS НЕ УСТАНОВЛЕН...
if NOT exist animation_events (
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ОЙ‼ Вы не установили мод ANIMATION ЕVENTS‼                   █
	echo █ Без него мод SCOREBOARD не будет работать‼                   █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Открыть в браузере страницу мода ANIMATION ЕVENTS?           █
	echo █                                                              █
	echo █                                                              █
	echo █ [Y] - Да, открой мне страницу мода. ВЫХОД‼                   █
	echo █ [N] - Не нужно, я сделаю всё сам. ВЫХОД‼                     █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice
	If Errorlevel 2 Goto NoAEMS
	If Errorlevel 1 Goto YesAEMS)
goto Mklist
REM ОТКРЫТЬ СТРАНИЦУ МОДА ANIMATION ЕVENTS В БРАУЗЕРЕ?--------------------------!
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
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ УСТАНОВИТЕ МОД ANIMATION ЕVENTS И ЗАПУСТИТЕ ЭТОТ ФАЙЛ СНОВА‼ █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
pause
exit
REM ----------------------------------------------------------------------------!
REM ЕСЛИ МОД ANIMATION ЕVENTS УСТАНОВЛЕН...
if exist animation_events (
REM Салатовый текст
color 0A
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ МОД ANIMATION ЕVENTS НАЙДЕН‼                                 █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
REM Белый текст
color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Поднимаю его вверх списка для правильной работы модов‼       █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	echo animation_events>>mod_load_order.txt
timeout /t 2 1>nul
REM Салатовый текст
color 0A
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ГОТОВО‼                                                      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul))
cls
goto Mklist

REM СОЗДАЁМ ОСТАЛЬНОЙ СПИСОК МОДОВ, ИСКЛЮЧАЯ BASE, DMF, ANIMATION ЕVENTS и SETTINGS EXTENSION. В АЛФАВИТНОМ ПОРЯДКЕ(ПОКА ЧТО).
:Mklist
REM Белый текст
color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Копирую ваш список модов в файл mod_load_order.txt...        █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	REM echo.>>mod_load_order.txt
for /f "tokens=*" %%i in (' dir /b /ad ^|findstr /iv /c:"dmf" /c:"base" 
/c:"animation_events" /c:"settings_extension" /c:"LogMeIn" /c:"psych_ward" /c:"DarktideLocalServer"') do set "mydirs_%%~snxi=%%~nxi" 2>nul
for /f "tokens=2 delims== eol=" %%i in (' set mydirs_ ') do 1>>mod_load_order.txt echo %%i


REM -------------------------ПРОВЕРКА НА УСТАРЕВШИЕ МОДЫ-----------------------‼
:OBSOLETECheck
:OBSO1
REM SPECTATOR HUD
if NOT exist SpectatorHUD goto OBSO2
if exist SpectatorHUD (
type mod_load_order.txt | find /v /i "SpectatorHUD" > xss.temp
echo.Y | move xss.temp mod_load_order.txt
cls
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ВНИМАНИЕ‼                                                    █
	echo █ МОД SPECTATOR HUD УСТАРЕЛ И БЫЛ ОТКЛЮЧЁН В СПИСКЕ, ЧТОБЫ     █
	echo █ ИЗБЕЖАТЬ ПОЯВЛЕНИЯ ОШИБОК И ВЫЛЕТОВ В ИГРЕ.                  █
	echo █                                                              █
	echo █ УДАЛИТЬ ТАКЖЕ ПАПКУ УСТАРЕВШЕГО МОДА SPECTATOR HUD?          █
	echo █ [Y] - Да. Папка будет удалена, а создание списка продолжено. █
	echo █ [F] - Нет. Я сам удалю папку позже. Продолжаем...            █
	echo █ [N] - Нет. Я всё сделаю сам вручную... ВЫХОД‼                █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoSHUD
	If Errorlevel 2 goto FSHUD
	If Errorlevel 1 goto YesSHUD)
goto OBSO2
REM УДАЛЯЕМ ПАПКУ?--------------------------------------------------------------‼
:YesSHUD
rmdir /s /q "SpectatorHUD"
goto OBSO2
:NoSHUD
goto OBSOEXIT
:FSHUD
goto OBSO2
REM ----------------------------------------------------------------------------‼

:OBSO2
REM BOOK FINDER
if NOT exist book_finder goto OBSO3
if exist book_finder (
type mod_load_order.txt | find /v /i "book_finder" > xss.temp
echo.Y | move xss.temp mod_load_order.txt
cls
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ВНИМАНИЕ‼                                                    █
	echo █ МОД BOOK FINDER УСТАРЕЛ И БЫЛ ОТКЛЮЧЁН В СПИСКЕ, ЧТОБЫ       █
	echo █ ИЗБЕЖАТЬ ПОЯВЛЕНИЯ ОШИБОК И ВЫЛЕТОВ В ИГРЕ.                  █
	echo █ ИСПОЛЬЗУЙТЕ ВМЕСТО НЕГО МОД «COLLECTIBLE FINDER».            █
	echo █                                                              █
	echo █ УДАЛИТЬ ТАКЖЕ ПАПКУ УСТАРЕВШЕГО МОДА BOOK FINDER?            █
	echo █ [Y] - Да. Папка будет удалена, а создание списка продолжено. █
	echo █ [F] - Нет. Я сам удалю папку позже. Продолжаем...            █
	echo █ [N] - Нет. Я всё сделаю сам вручную... ВЫХОД‼                █
	echo █ [S] - Открыть страницу мода Collectible Finder. ВЫХОД‼       █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFNS
	If Errorlevel 4 goto SBOFI
	If Errorlevel 3 goto NoBOFI
	If Errorlevel 2 goto FBOFI
	If Errorlevel 1 goto YesBOFI)
goto OBSO3
REM УДАЛЯЕМ ПАПКУ?--------------------------------------------------------------‼
:YesBOFI
rmdir /s /q "book_finder"
goto OBSO3
:NoBOFI
goto OBSOEXIT
:FBOFI
goto OBSO3
:SBOFI
start https://www.nexusmods.com/warhammer40kdarktide/mods/298
exit
REM ----------------------------------------------------------------------------‼

:OBSO3
REM CONTRACTS OVERLAY
if NOT exist contracts_overlay goto OBSO4
if exist contracts_overlay (
type mod_load_order.txt | find /v /i "contracts_overlay" > xss.temp
echo.Y | move xss.temp mod_load_order.txt
cls
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ВНИМАНИЕ‼                                                    █
	echo █ МОД CONTRACTS OVERLAY УСТАРЕЛ И БЫЛ ОТКЛЮЧЁН В СПИСКЕ,       █
	echo █ ЧТОБЫ ИЗБЕЖАТЬ ПОЯВЛЕНИЯ ОШИБОК И ВЫЛЕТОВ В ИГРЕ.            █
	echo █                                                              █
	echo █ УДАЛИТЬ ТАКЖЕ ПАПКУ УСТАРЕВШЕГО МОДА CONTRACTS OVERLAY?      █
	echo █ [Y] - Да. Папка будет удалена, а создание списка продолжено. █
	echo █ [F] - Нет. Я сам удалю папку позже. Продолжаем...            █
	echo █ [N] - Нет. Я всё сделаю сам вручную... ВЫХОД‼                █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoCOOV
	If Errorlevel 2 goto FCOOV
	If Errorlevel 1 goto YesCOOV)
goto OBSO4
REM УДАЛЯЕМ ПАПКУ?--------------------------------------------------------------‼
:YesCOOV
rmdir /s /q "contracts_overlay"
goto OBSO4
:NoCOOV
goto OBSOEXIT
:FCOOV
goto OBSO4
REM ----------------------------------------------------------------------------‼

:OBSO4
REM UI EXTENSION
if NOT exist ui_extension goto OBSO5
if exist ui_extension (
type mod_load_order.txt | find /v /i "ui_extension" > xss.temp
echo.Y | move xss.temp mod_load_order.txt
cls
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ВНИМАНИЕ‼                                                    █
	echo █ МОД UI EXTENSION НЕ НУЖЕН НИ ДЛЯ ЧЕГО И БЫЛ ОТКЛЮЧЁН.        █
	echo █                                                              █
	echo █ УДАЛИТЬ ТАКЖЕ ПАПКУ МОДА UI EXTENSION?                       █
	echo █ [Y] - Да. Папка будет удалена, а создание списка продолжено. █
	echo █ [F] - Нет. Я сам удалю папку позже. Продолжаем...            █
	echo █ [N] - Нет. Я всё сделаю сам вручную... ВЫХОД‼                █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoUIEX
	If Errorlevel 2 goto FUIEX
	If Errorlevel 1 goto YesUIEX)
goto OBSO5
REM УДАЛЯЕМ ПАПКУ?--------------------------------------------------------------‼
:YesUIEX
rmdir /s /q "ui_extension"
goto OBSO5
:NoUIEX
goto OBSOEXIT
:FUIEX
goto OBSO5
REM ----------------------------------------------------------------------------‼

:OBSO5
REM REROLL UNTIL RARITY
if NOT exist reroll_until_rarity goto OBSO6
if exist reroll_until_rarity (
type mod_load_order.txt | find /v /i "reroll_until_rarity" > xss.temp
echo.Y | move xss.temp mod_load_order.txt
cls
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ВНИМАНИЕ‼                                                    █
	echo █ МОД REROLL UNTIL RARITY УСТАРЕЛ И БЫЛ ОТКЛЮЧЁН В СПИСКЕ,     █
	echo █ ЧТОБЫ ИЗБЕЖАТЬ ПОЯВЛЕНИЯ ОШИБОК И ВЫЛЕТОВ В ИГРЕ.            █
	echo █                                                              █
	echo █ УДАЛИТЬ ТАКЖЕ ПАПКУ МОДА REROLL UNTIL RARITY?                █
	echo █ [Y] - Да. Папка будет удалена, а создание списка продолжено. █
	echo █ [F] - Нет. Я сам удалю папку позже. Продолжаем...            █
	echo █ [N] - Нет. Я всё сделаю сам вручную... ВЫХОД‼                █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoREUR
	If Errorlevel 2 goto FREUR
	If Errorlevel 1 goto YesREUR)
goto OBSO6
REM УДАЛЯЕМ ПАПКУ?--------------------------------------------------------------‼
:YesREUR
rmdir /s /q "reroll_until_rarity"
goto OBSO6
:NoREUR
goto OBSOEXIT
:FREUR
goto OBSO6
REM ----------------------------------------------------------------------------‼

:OBSO6
REM SETTINGS EXTENSION
if NOT exist settings_extension goto OBSO7
if exist settings_extension (
type mod_load_order.txt | find /v /i "settings_extension" > xss.temp
echo.Y | move xss.temp mod_load_order.txt
cls
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ВНИМАНИЕ‼                                                    █
	echo █ МОД SETTINGS EXTENSION БЫЛ ОТКЛЮЧЁН В СПИСКЕ, ТАК КАК        █
	echo █ НУЖЕН ТОЛЬКО ДЛЯ УСТАРЕВШЕГО МОДА GRAPHICS OPTIONS И БОЛЬШЕ  █
	echo █ НИ ДЛЯ ЧЕГО‼                                                 █
	echo █                                                              █
	echo █ УДАЛИТЬ ТАКЖЕ ПАПКУ МОДА SETTINGS EXTENSION?                 █
	echo █ [Y] - Да. Папка будет удалена, а создание списка продолжено. █
	echo █ [F] - Нет. Я сам удалю папку позже. Продолжаем...            █
	echo █ [N] - Нет. Я всё сделаю сам вручную... ВЫХОД‼                █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoSEXT
	If Errorlevel 2 goto FSEXT
	If Errorlevel 1 goto YesSEXT)
goto OBSO7
REM УДАЛЯЕМ ПАПКУ?--------------------------------------------------------------‼
:YesSEXT
rmdir /s /q "settings_extension"
goto OBSO7
:NoSEXT
goto OBSOEXIT
:FSEXT
goto OBSO7
REM ----------------------------------------------------------------------------‼

:OBSO7
REM GRAPHICS OPTIONS
if NOT exist graphics_options goto OBSO8
if exist graphics_options (
type mod_load_order.txt | find /v /i "graphics_options" > xss.temp
echo.Y | move xss.temp mod_load_order.txt
cls
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ВНИМАНИЕ‼                                                    █
	echo █ МОД GRAPHICS OPTIONS УСТАРЕЛ И БЫЛ ОТКЛЮЧЁН В СПИСКЕ,        █
	echo █ ЧТОБЫ ИЗБЕЖАТЬ ПОЯВЛЕНИЯ ОШИБОК И ВЫЛЕТОВ В ИГРЕ.            █
	echo █                                                              █
	echo █ УДАЛИТЬ ТАКЖЕ ПАПКУ МОДА GRAPHICS OPTIONS?                   █
	echo █ [Y] - Да. Папка будет удалена, а создание списка продолжено. █
	echo █ [F] - Нет. Я сам удалю папку позже. Продолжаем...            █
	echo █ [N] - Нет. Я всё сделаю сам вручную... ВЫХОД‼                █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoGROP
	If Errorlevel 2 goto FGROP
	If Errorlevel 1 goto YesGROP)
goto OBSO8
REM УДАЛЯЕМ ПАПКУ?--------------------------------------------------------------‼
:YesGROP
rmdir /s /q "graphics_options"
goto OBSO8
:NoGROP
goto OBSOEXIT
:FGROP
goto OBSO8
REM ----------------------------------------------------------------------------‼

:OBSO8
REM CHAR WALLETS
if NOT exist CharWallets goto OBSO9
if exist CharWallets (
type mod_load_order.txt | find /v /i "CharWallets" > xss.temp
echo.Y | move xss.temp mod_load_order.txt
cls
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ВНИМАНИЕ‼                                                    █
	echo █ МОД CHAR WALLETS УСТАРЕЛ И БЫЛ ОТКЛЮЧЁН В СПИСКЕ, ЧТОБЫ      █
	echo █ ИЗБЕЖАТЬ ПОЯВЛЕНИЯ ОШИБОК И ВЫЛЕТОВ В ИГРЕ.                  █
	echo █                                                              █
	echo █ УДАЛИТЬ ТАКЖЕ ПАПКУ МОДА CHAR WALLETS?                       █
	echo █ [Y] - Да. Папка будет удалена, а создание списка продолжено. █
	echo █ [F] - Нет. Я сам удалю папку позже. Продолжаем...            █
	echo █ [N] - Нет. Я всё сделаю сам вручную... ВЫХОД‼                █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoCHWA
	If Errorlevel 2 goto FCHWA
	If Errorlevel 1 goto YesCHWA)
goto OBSO9
REM УДАЛЯЕМ ПАПКУ?--------------------------------------------------------------‼
:YesCHWA
rmdir /s /q "CharWallets"
goto OBSO9
:NoCHWA
goto OBSOEXIT
:FCHWA
goto OBSO9
REM ----------------------------------------------------------------------------‼

:OBSO9
REM PENANCE DETAILS
if NOT exist PenanceDetails goto OBSO10
if exist PenanceDetails (
type mod_load_order.txt | find /v /i "PenanceDetails" > xss.temp
echo.Y | move xss.temp mod_load_order.txt
cls
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ВНИМАНИЕ‼                                                    █
	echo █ МОД PENANCE DETAILS УСТАРЕЛ И БЫЛ ОТКЛЮЧЁН В СПИСКЕ, ЧТОБЫ   █
	echo █ ИЗБЕЖАТЬ ПОЯВЛЕНИЯ ОШИБОК И ВЫЛЕТОВ В ИГРЕ.                  █
	echo █                                                              █
	echo █ УДАЛИТЬ ТАКЖЕ ПАПКУ МОДА PENANCE DETAILS?                    █
	echo █ [Y] - Да. Папка будет удалена, а создание списка продолжено. █
	echo █ [F] - Нет. Я сам удалю папку позже. Продолжаем...            █
	echo █ [N] - Нет. Я всё сделаю сам вручную... ВЫХОД‼                █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoPEDE
	If Errorlevel 2 goto FPEDE
	If Errorlevel 1 goto YesPEDE)
goto OBSO10
REM УДАЛЯЕМ ПАПКУ?--------------------------------------------------------------‼
:YesPEDE
rmdir /s /q "PenanceDetails"
goto OBSO10
:NoPEDE
goto OBSOEXIT
:FPEDE
goto OBSO10
REM ----------------------------------------------------------------------------‼

:OBSO10
REM TRUE PERIL
if NOT exist TruePeril goto OBSO11
if exist TruePeril (
type mod_load_order.txt | find /v /i "TruePeril" > xss.temp
echo.Y | move xss.temp mod_load_order.txt
cls
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ВНИМАНИЕ‼                                                    █
	echo █ МОД TRUE PERIL УСТАРЕЛ И БЫЛ ОТКЛЮЧЁН В СПИСКЕ, ЧТОБЫ        █
	echo █ ИЗБЕЖАТЬ ПОЯВЛЕНИЯ ОШИБОК И ВЫЛЕТОВ В ИГРЕ.                  █
	echo █ ИСПОЛЬЗУЙТЕ ВМЕСТО НЕГО МОД «PERIL GAUGE».                   █
	echo █                                                              █
	echo █ УДАЛИТЬ ТАКЖЕ ПАПКУ МОДА TRUE PERIL?                         █
	echo █ [Y] - Да. Папка будет удалена, а создание списка продолжено. █
	echo █ [F] - Нет. Я сам удалю папку позже. Продолжаем...            █
	echo █ [N] - Нет. Я всё сделаю сам вручную... ВЫХОД‼                █
	echo █ [S] - Открыть страницу мода Peril Gauge. ВЫХОД‼              █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFNS
	If Errorlevel 4 goto STRPE
	If Errorlevel 3 goto NoTRPE
	If Errorlevel 2 goto FTRPE
	If Errorlevel 1 goto YesTRPE)
goto OBSO11
REM УДАЛЯЕМ ПАПКУ?--------------------------------------------------------------‼
:YesTRPE
rmdir /s /q "TruePeril"
goto OBSO11
:NoTRPE
goto OBSOEXIT
:FTRPE
goto OBSO11
:STRPE
start https://www.nexusmods.com/warhammer40kdarktide/mods/243
exit
REM ----------------------------------------------------------------------------‼

:OBSO11
REM SPACE TO CONTINUE
if NOT exist SpaceToContinue goto OBSO12
if exist SpaceToContinue (
type mod_load_order.txt | find /v /i "SpaceToContinue" > xss.temp
echo.Y | move xss.temp mod_load_order.txt
cls
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ВНИМАНИЕ‼                                                    █
	echo █ МОД SPACE TO CONTINUE УСТАРЕЛ И БЫЛ ОТКЛЮЧЁН В СПИСКЕ,       █
	echo █ ЧТОБЫ ИЗБЕЖАТЬ ПОЯВЛЕНИЯ ОШИБОК И ВЫЛЕТОВ В ИГРЕ.            █
	echo █                                                              █
	echo █ УДАЛИТЬ ТАКЖЕ ПАПКУ УСТАРЕВШЕГО МОДА SPACE TO CONTINUE?      █
	echo █ [Y] - Да. Папка будет удалена, а создание списка продолжено. █
	echo █ [F] - Нет. Я сам удалю папку позже. Продолжаем...            █
	echo █ [N] - Нет. Я всё сделаю сам вручную... ВЫХОД‼                █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoSPTC
	If Errorlevel 2 goto FSPTC
	If Errorlevel 1 goto YesSPTC)
goto OBSO12
REM УДАЛЯЕМ ПАПКУ?--------------------------------------------------------------‼
:YesSPTC
rmdir /s /q "SpaceToContinue"
goto OBSO12
:NoSPTC
goto OBSOEXIT
:FSPTC
goto OBSO12
REM ----------------------------------------------------------------------------‼

:OBSO12
REM WHICH MISSIONS
if NOT exist WhichMissions goto OBSO13
if exist WhichMissions (
type mod_load_order.txt | find /v /i "WhichMissions" > xss.temp
echo.Y | move xss.temp mod_load_order.txt
cls
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ВНИМАНИЕ‼                                                    █
	echo █ МОД WHICH MISSIONS УСТАРЕЛ И БЫЛ ОТКЛЮЧЁН В СПИСКЕ, ЧТОБЫ    █
	echo █ ИЗБЕЖАТЬ ПОЯВЛЕНИЯ ОШИБОК И ВЫЛЕТОВ В ИГРЕ.                  █
	echo █                                                              █
	echo █ УДАЛИТЬ ТАКЖЕ ПАПКУ УСТАРЕВШЕГО МОДА WHICH MISSIONS?         █
	echo █ [Y] - Да. Папка будет удалена, а создание списка продолжено. █
	echo █ [F] - Нет. Я сам удалю папку позже. Продолжаем...            █
	echo █ [N] - Нет. Я всё сделаю сам вручную... ВЫХОД‼                █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoWHMI
	If Errorlevel 2 goto FWHMI
	If Errorlevel 1 goto YesWHMI)
goto OBSO13
REM УДАЛЯЕМ ПАПКУ?--------------------------------------------------------------‼
:YesWHMI
rmdir /s /q "WhichMissions"
goto OBSO13
:NoWHMI
goto OBSOEXIT
:FWHMI
goto OBSO13
REM ----------------------------------------------------------------------------‼

:OBSO13
REM OPEN STEAM PROFILE
if NOT exist OpenSteamProfile goto OBSO14
if exist OpenSteamProfile (
type mod_load_order.txt | find /v /i "OpenSteamProfile" > xss.temp
echo.Y | move xss.temp mod_load_order.txt
cls
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ВНИМАНИЕ‼                                                    █
	echo █ МОД OPEN STEAM PROFILE УСТАРЕЛ И БЫЛ ОТКЛЮЧЁН В СПИСКЕ,      █
	echo █ ЧТОБЫ ИЗБЕЖАТЬ ПОЯВЛЕНИЯ ОШИБОК И ВЫЛЕТОВ В ИГРЕ.            █
	echo █ ИСПОЛЬЗУЙТЕ ВМЕСТО НЕГО МОД «OPEN PLAYER PROFILE».           █
	echo █                                                              █
	echo █ УДАЛИТЬ ТАКЖЕ ПАПКУ УСТАРЕВШЕГО МОДА OPEN STEAM PROFILE?     █
	echo █ [Y] - Да. Папка будет удалена, а создание списка продолжено. █
	echo █ [F] - Нет. Я сам удалю папку позже. Продолжаем...            █
	echo █ [N] - Нет. Я всё сделаю сам вручную... ВЫХОД‼                █
	echo █ [S] - Открыть страницу мода Open Player Profile. ВЫХОД‼      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFNS
	If Errorlevel 4 goto SOPSP
	If Errorlevel 3 goto NoOPSP
	If Errorlevel 2 goto FOPSP
	If Errorlevel 1 goto YesOPSP)
goto OBSO14
REM УДАЛЯЕМ ПАПКУ?--------------------------------------------------------------‼
:YesOPSP
rmdir /s /q "OpenSteamProfile"
goto OBSO14
:NoOPSP
goto OBSOEXIT
:FOPSP
goto OBSO14
:SOPSP
start https://www.nexusmods.com/warhammer40kdarktide/mods/190/
exit
REM ----------------------------------------------------------------------------‼

:OBSO14
REM IGNORE PSYKER GRENADES
if NOT exist IgnorePsykerGrenades goto OBSO15
if exist IgnorePsykerGrenades (
type mod_load_order.txt | find /v /i "IgnorePsykerGrenades" > xss.temp
echo.Y | move xss.temp mod_load_order.txt
cls
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ВНИМАНИЕ‼                                                    █
	echo █ МОД IGNORE PSYKER GRENADES УСТАРЕЛ И БЫЛ ОТКЛЮЧЁН В СПИСКЕ,  █
	echo █ ЧТОБЫ ИЗБЕЖАТЬ ПОЯВЛЕНИЯ ОШИБОК И ВЫЛЕТОВ В ИГРЕ.            █
	echo █                                                              █
	echo █ УДАЛИТЬ ТАКЖЕ ПАПКУ УСТАРЕВШЕГО МОДА IGNORE PSYKER GRENADES? █
	echo █ [Y] - Да. Папка будет удалена, а создание списка продолжено. █
	echo █ [F] - Нет. Я сам удалю папку позже. Продолжаем...            █
	echo █ [N] - Нет. Я всё сделаю сам вручную... ВЫХОД‼                █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoIPSG
	If Errorlevel 2 goto FIPSG
	If Errorlevel 1 goto YesIPSG)
goto OBSO15
REM УДАЛЯЕМ ПАПКУ?--------------------------------------------------------------‼
:YesIPSG
rmdir /s /q "IgnorePsykerGrenades"
goto OBSO15
:NoIPSG
goto OBSOEXIT
:FIPSG
goto OBSO15
REM ----------------------------------------------------------------------------‼

:OBSO15
REM MUTE IN BACKGROUND
if NOT exist MuteInBackground goto OBSO16
if exist MuteInBackground (
type mod_load_order.txt | find /v /i "MuteInBackground" > xss.temp
echo.Y | move xss.temp mod_load_order.txt
cls
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ВНИМАНИЕ‼                                                    █
	echo █ МОД MUTE IN BACKGROUND УСТАРЕЛ И БЫЛ ОТКЛЮЧЁН В СПИСКЕ,      █
	echo █ ЧТОБЫ ИЗБЕЖАТЬ ПОЯВЛЕНИЯ ОШИБОК И ВЫЛЕТОВ В ИГРЕ.            █
	echo █                                                              █
	echo █ УДАЛИТЬ ТАКЖЕ ПАПКУ УСТАРЕВШЕГО МОДА MUTE IN BACKGROUND?     █
	echo █ [Y] - Да. Папка будет удалена, а создание списка продолжено. █
	echo █ [F] - Нет. Я сам удалю папку позже. Продолжаем...            █
	echo █ [N] - Нет. Я всё сделаю сам вручную... ВЫХОД‼                █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoMIBG
	If Errorlevel 2 goto FMIBG
	If Errorlevel 1 goto YesMIBG)
goto OBSO16
REM УДАЛЯЕМ ПАПКУ?--------------------------------------------------------------‼
:YesMIBG
rmdir /s /q "MuteInBackground"
goto OBSO16
:NoMIBG
goto OBSOEXIT
:FMIBG
goto OBSO16
REM ----------------------------------------------------------------------------‼

:OBSO16
REM MUTE PERIL SOUNDS
if NOT exist MutePerilSounds goto OBSO17
if exist MutePerilSounds (
type mod_load_order.txt | find /v /i "MutePerilSounds" > xss.temp
echo.Y | move xss.temp mod_load_order.txt
cls
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ВНИМАНИЕ‼                                                    █
	echo █ МОД MUTE PERIL SOUNDS УСТАРЕЛ И БЫЛ ОТКЛЮЧЁН В СПИСКЕ,       █
	echo █ ЧТОБЫ ИЗБЕЖАТЬ ПОЯВЛЕНИЯ ОШИБОК И ВЫЛЕТОВ В ИГРЕ.            █
	echo █                                                              █
	echo █ УДАЛИТЬ ТАКЖЕ ПАПКУ УСТАРЕВШЕГО МОДА MUTE PERIL SOUNDS?      █
	echo █ [Y] - Да. Папка будет удалена, а создание списка продолжено. █
	echo █ [F] - Нет. Я сам удалю папку позже. Продолжаем...            █
	echo █ [N] - Нет. Я всё сделаю сам вручную... ВЫХОД‼                █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoMUPS
	If Errorlevel 2 goto FMUPS
	If Errorlevel 1 goto YesMUPS)
goto OBSO17
REM УДАЛЯЕМ ПАПКУ?--------------------------------------------------------------‼
:YesMUPS
rmdir /s /q "MutePerilSounds"
goto OBSO17
:NoMUPS
goto OBSOEXIT
:FMUPS
goto OBSO17
REM ----------------------------------------------------------------------------‼

:OBSO17
REM AIM SENSITIVITY
if NOT exist AimSensitivity goto END
if exist AimSensitivity (
type mod_load_order.txt | find /v /i "AimSensitivity" > xss.temp
echo.Y | move xss.temp mod_load_order.txt
cls
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ВНИМАНИЕ‼                                                    █
	echo █ МОД AIM SENSITIVITY УСТАРЕЛ И БЫЛ ОТКЛЮЧЁН В СПИСКЕ,         █
	echo █ ЧТОБЫ ИЗБЕЖАТЬ ПОЯВЛЕНИЯ ОШИБОК И ВЫЛЕТОВ В ИГРЕ.            █
	echo █                                                              █
	echo █ УДАЛИТЬ ТАКЖЕ ПАПКУ УСТАРЕВШЕГО МОДА AIM SENSITIVITY?        █
	echo █ [Y] - Да. Папка будет удалена, а создание списка продолжено. █
	echo █ [F] - Нет. Я сам удалю папку позже. Продолжаем...            █
	echo █ [N] - Нет. Я всё сделаю сам вручную... ВЫХОД‼                █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoAIMS
	If Errorlevel 2 goto FAIMS
	If Errorlevel 1 goto YesAIMS)
goto END
REM УДАЛЯЕМ ПАПКУ?--------------------------------------------------------------‼
:YesAIMS
rmdir /s /q "AimSensitivity"
goto END
:NoAIMS
goto OBSOEXIT
:FAIMS
goto END
REM ----------------------------------------------------------------------------‼

:END

timeout /t 2 1>nul
REM Салатовый цвет текста
color 0A
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ФАЙЛ ГОТОВ‼ ПРОВЕРЬТЕ ЕГО, НА ВСЯКИЙ СЛУЧАЙ.                 █
	echo █ ФАЙЛ СЕЙЧАС ОТКРОЕТСЯ АВТОМАТИЧЕСКИ...                       █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
pause

start mod_load_order.txt
goto EOF

:OBSOEXIT
cls
REM Красный текст
	color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Удалите ПАПКУ мода и запустите этот файл снова‼              █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
exit

:XSSRPMDT
cls
REM Зелёный текст
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Сейчас откроется страница с руководством. Это окно закроется.█
	echo █ ПРОВЕРЬТЕ ПРАВИЛЬНОСТЬ УСТАНОВКИ И ПЕРЕЗАПУСТИТЕ ЭТОТ ФАЙЛ‼  █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
pause
exit

:EOF
exit
