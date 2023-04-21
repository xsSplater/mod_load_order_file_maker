:: Made by xsSplater under an MIT license.

@echo off
setlocal enableextensions enabledelayedexpansion
1>nul chcp 65001

REM IF MOD_LOAD_ORDER.TXT DOES NOT EXIST...
if NOT exist mod_load_order.txt (
rem Red text color
	color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ FILE MOD_LOAD_ORDER.TXT NOT FOUND‼                           █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
cls

rem Standart color. Black text and white letters
	color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Did you really put EN_mod_load_order_file_maker.bat          █
	echo █ in the MODS folder?                                          █
	echo █                                                              █
	echo █ If you are sure that this is the MODS folder and             █
	echo █ everything is fine, then can I create a new clean            █
	echo █ mod_load_order.txt file for you?                             █
	echo █                                                              █
	echo █  Y - Yes, please. File deleted/corrupted/missing.            █
	echo █  N - No, I'd better check everything again... EXIT‼          █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.

	Choice
		If Errorlevel 2 Goto NoMLOT
		If Errorlevel 1 Goto YesMLOT
)

goto MLOTfinded

rem CREATE NEW MOD_LOAD_ORDER.TXT FILE?-----------------------------------------‼
:YesMLOT
	cls
	rem Light green text color
	color 0A
	echo.>mod_load_order.txt
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ FILE MOD_LOAD_ORDER.TXT IS CREATED‼                          █
	echo █ Press any key to continue creating the list...               █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	pause
	cls
goto MLOTfinded

:NoMLOT
	cls
	rem Red text color
	color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Copy the mod_load_order_file_maker_ru.bat file               █
	echo █ to the MODS folder and run it again‼                         █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	pause
exit
rem ----------------------------------------------------------------------------‼

rem IF MOD_LOAD_ORDER.TXT EXISTS...
:MLOTfinded
if exist mod_load_order.txt (
rem BACKUP THE MOD_LOAD_ORDER.TXT FILE
	 echo f | XCOPY mod_load_order.txt mod_load_order.txt_%Date:~0,2%.%Date:~3,2%.%Date:~6,4%_%TIME:~0,2%.%TIME:~3,2%.%TIME:~6,4%_.bak /y /i 1>nul
)

rem WRITE A STANDARD AUTHOR'S HEAD FROM THE MOD_LOAD_ORDER.TXT FILE
	(echo -- ################################################################
	echo -- Enter user mod names below, separated by line.
	echo -- Order in the list determines the order in which mods are loaded.
	echo -- Do not rename a mod's folders.
	echo -- You do not need to include 'base' or 'dmf' mod folders.
	echo -- ################################################################
	echo.)>mod_load_order.txt

rem IF THE SCOREBOARD MOD IS NOT INSTALLED, SKIP ALL ITS CHECK...
if NOT exist scoreboard goto GOcheck

rem IF THE SCOREBOARD MOD IS INSTALLED...
if exist scoreboard (
rem CHECK IF ANIMATION EVENTS IS INSTALLED...

rem IF THE ANIMATION EVENTS MOD IS NOT INSTALLED...
	if NOT exist animation_events (
		rem Red text color
		color 0C
		echo.
		echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
		echo █ Oops‼ You haven't installed the Animation Events mod‼        █
		echo █ Without it, the Scoreboard mod will not work‼                █
		echo █ INSTALL ANIMATION EVENTS MOD AND RUN THIS FILE AGAIN‼        █
		echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
		echo.
		pause
		exit
	)

rem IF THE ANIMATION EVENTS MOD IS INSTALLED...
	if exist animation_events (
		echo animation_events>>mod_load_order.txt
	)
)

:GOcheck

rem IF THE GRAPHICS OPTIONS MOD IS NOT INSTALLED, SKIP ALL ITS CHECK...
if NOT exist graphics_options goto Mklist

rem IF THE GRAPHICS OPTIONS MOD IS INSTALLED...
if exist graphics_options (
rem CHECK IF THE SETTINGS EXTENSION MOD IS INSTALLED...

rem IF THE SETTINGS EXTENSION MOD IS NOT INSTALLED...
	if NOT exist settings_extension (
		rem Red text color
		color 0C
		echo.
		echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
		echo █ Oops‼ You haven't installed the Settings Extension mod‼      █
		echo █ Without it, the Graphics Options mod will not work‼          █
		echo █ INSTALL SETTINGS EXTENSION MOD AND RUN THIS FILE AGAIN‼      █
		echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
		echo.
		pause
		exit
	)

rem IF THE SETTINGS EXTENSION MOD IS INSTALLED...
	if exist settings_extension (
		echo settings_extension>>mod_load_order.txt
	)
)

rem CREATE THE REST OF THE LIST OF MODS, EXCLUDING BASE, DMF, ANIMATION EVENTS AND SETTINGS EXTENSION. IN ALPHABETICAL ORDER.
:Mklist

echo.>>mod_load_order.txt
for /f "tokens=*" %%i in (' dir /b /ad ^|findstr /iv /c:"dmf" /c:"base" 
/c:"animation_events" /c:"settings_extension"') do set "mydirs_%%~snxi=%%~nxi" 2>nul
for /f "tokens=2 delims== eol=" %%i in (' set mydirs_ ') do 1>>mod_load_order.txt echo %%i

start mod_load_order.txt

:EOF
