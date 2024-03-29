:: Made by xsSplater under an MIT license.

@echo off
setlocal enableextensions enabledelayedexpansion
1>nul chcp 65001

rem CHECKING IS THE FILE INSTALLED IN THE CORRECT FOLDER? 
REM IF DARKTIDE MOD LOADER'S MAIN FOLDER BASE DOESN'T EXIST...
if NOT exist base (
rem Red text color
	color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ DARKTIDE MOD LOADER'S MAIN FOLDER BASE NOT FOUND‼            █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
cls

rem Standart color. Black text and white letters
	color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Did you really install Darktide Mod Loader?                  █
	echo █ Looks like NO‼ The main mod folder "base" is missing‼        █
	echo █                                                              █
	echo █ Make sure you've installed everything correctly‼             █
	echo █ Can I open a link to the Darktide Mod Installation Guide     █
	echo █ for you?                                                     █
	echo █                                                              █
	echo █  Y - Yes, please. I need some help with this.                █
	echo █  N - No, I'll check everything myself... EXIT‼               █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.

	Choice
		If Errorlevel 2 Goto NoDML
		If Errorlevel 1 Goto YesDML
)

goto DMLFinded

rem CAN I OPEN A LINK TO THE DARKTIDE MOD INSTALLATION GUIDE FOR YOU?----------‼
:YesDML
	cls
	rem Light green text color
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Now the Guide page will open and this window will close‼     █
	echo █ VERIFY THE INSTALLATION AND RUN THIS FILE AGAIN‼             █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	pause
	start https://steamcommunity.com/sharedfiles/filedetails/?id=2953324027
exit

:NoDML
	cls
	rem Red text color
	color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ VERIFY THE INSTALLATION AND RUN THIS FILE AGAIN‼             █
	echo █                                                              █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	pause
exit
rem ----------------------------------------------------------------------------‼

rem IF DARKTIDE MOD LOADER'S MAIN FOLDER BASE EXISTS...
:DMLFinded
if exist base goto DMFCheck

:DMFCheck

REM IF DARKTIDE MOD FRAMEWORK'S MAIN FOLDER DMF DOESN'T EXIST...
if NOT exist dmf (
rem Red text color
	color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ DARKTIDE MOD FRAMEWORK'S MAIN FOLDER DMF NOT FOUND‼          █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
cls

rem Standart color. Black text and white letters
	color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Did you really install Darktide Mod Framework?               █
	echo █ Looks like NO‼ The main mod folder "dmf" is missing‼         █
	echo █                                                              █
	echo █ Make sure you've installed everything correctly‼             █
	echo █ Can I open a link to the Darktide Mod Installation Guide     █
	echo █ for you?                                                     █
	echo █                                                              █
	echo █  Y - Yes, please. I need some help with this.                █
	echo █  N - No, I'll check everything myself... EXIT‼               █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.

	Choice
		If Errorlevel 2 Goto NoDMF
		If Errorlevel 1 Goto YesDMF
)

goto DMFFinded

rem CAN I OPEN A LINK TO THE DARKTIDE MOD INSTALLATION GUIDE FOR YOU?----------‼
:YesDMF
	cls
	rem Light green text color
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Now the Guide page will open and this window will close‼     █
	echo █ VERIFY THE INSTALLATION AND RUN THIS FILE AGAIN‼             █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	pause
	start https://steamcommunity.com/sharedfiles/filedetails/?id=2953324027
exit

:NoDMF
	cls
	rem Red text color
	color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ VERIFY THE INSTALLATION AND RUN THIS FILE AGAIN‼             █
	echo █                                                              █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	pause
exit
rem ----------------------------------------------------------------------------‼

rem IF DARKTIDE MOD FRAMEWORK'S MAIN FOLDER DMF EXISTS...
:DMFFinded
if exist dmf goto MLOTCheck

:MLOTCheck

rem IF MOD_LOAD_ORDER.TXT DOES NOT EXIST...
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
	 echo f | XCOPY mod_load_order.txt mod_load_order.txt_%Date:~0,2%.%Date:~3,2%.%Date:~6,4%_%TIME:~3,2%%TIME:~6,5%.bak /y /i 1>nul
)

rem WRITE A STANDARD AUTHOR'S HEAD FROM THE MOD_LOAD_ORDER.TXT FILE
	(echo -- ################################################################
	echo -- Enter user mod names below, separated by line.
	echo -- Order in the list determines the order in which mods are loaded.
	echo -- Do not rename a mod's folders.
	echo -- You do not need to include 'base' or 'dmf' mod folders.
	echo -- ################################################################
	echo.)>mod_load_order.txt

rem IF THE SCOREBOARD MOD IS NOT INSTALLED, SKIP ALL ITS CHECKS...
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
		echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
		echo.
		echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
		echo █ Do you want to open the Animation Events mod page in         █
		echo █ your browser?                                                █
		echo █                                                              █
		echo █  Y - Yes, open the mod page for me. EXIT‼                    █
		echo █  N - No need, I'll do it myself. EXIT‼                       █
		echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
		echo.

		Choice
			If Errorlevel 2 Goto NoAEMS
			If Errorlevel 1 Goto YesAEMS
	)

rem IF THE ANIMATION EVENTS MOD IS INSTALLED...
	if exist animation_events (
		echo animation_events>>mod_load_order.txt
	)
)

goto GOcheck

rem OPEN THE ANIMATION EVENTS MOD PAGE IN A BROWSER?----------------------------!
:YesAEMS
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Now the mod page will open and this window will close‼       █
	echo █ INSTALL THE ANIMATION EVENTS MOD AND RUN THIS FILE AGAIN‼    █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	pause
	start https://www.nexusmods.com/warhammer40kdarktide/mods/21
exit

:NoAEMS
	cls
	rem Red text color
	color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ INSTALL THE ANIMATION EVENTS MOD AND RUN THIS FILE AGAIN‼    █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	pause
exit
rem ----------------------------------------------------------------------------!

:GOcheck

rem IF THE GRAPHICS OPTIONS MOD IS NOT INSTALLED, SKIP ALL ITS CHECKS...
if NOT exist graphics_options goto LMICheck

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
		echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
		echo.
		echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
		echo █ Do you want to open the Settings Extension mod page in       █
		echo █ your browser?                                                █
		echo █                                                              █
		echo █  Y - Yes, open the mod page for me. EXIT‼                    █
		echo █  N - No need, I'll do it myself. EXIT‼                       █
		echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
		echo.

		Choice
			If Errorlevel 2 Goto NoSEMGO
			If Errorlevel 1 Goto YesSEMGO
	)

rem IF THE SETTINGS EXTENSION MOD IS INSTALLED...
	if exist settings_extension (
		echo settings_extension>>mod_load_order.txt
	)
)

goto LMICheck

rem OPEN THE SETTINGS EXTENSION MOD PAGE IN A BROWSER--?------------------------!
:YesSEMGO
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Now the mod page will open and this window will close‼       █
	echo █ INSTALL THE SETTINGS EXTENSION MOD AND RUN THIS FILE AGAIN‼  █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	pause
	start https://www.nexusmods.com/warhammer40kdarktide/mods/23
exit

:NoSEMGO
	cls
	rem Red text color
	color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ INSTALL THE SETTINGS EXTENSION MOD AND RUN THIS FILE AGAIN‼  █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	pause
exit

rem ----------------------------------------------------------------------------!

:LMICheck

rem IF THE LOGMEIN MOD IS NOT INSTALLED, SKIP ALL ITS CHECKS...
if NOT exist LogMeIn goto PWCheck

rem IF THE LOGMEIN MOD IS INSTALLED...
if exist LogMeIn (
rem 	echo.>>mod_load_order.txt
	echo LogMeIn>>mod_load_order.txt
)

:PWCheck

rem IF THE PSYCH WARD MOD IS NOT INSTALLED, SKIP ALL ITS CHECKS...
if NOT exist psych_ward goto DLocSCheck

rem IF THE PSYCH WARD MOD IS INSTALLED...
if exist psych_ward (
rem 	echo.>>mod_load_order.txt
	echo psych_ward>>mod_load_order.txt
)

:DLocSCheck

rem IF THE DARKTIDE LOCAL SERVER MOD IS NOT INSTALLED, SKIP ALL ITS CHECKS...
if NOT exist DarktideLocalServer goto Mklist

rem IF THE DARKTIDE LOCAL SERVER MOD IS INSTALLED...
if exist DarktideLocalServer (
rem 	echo.>>mod_load_order.txt
	echo DarktideLocalServer>>mod_load_order.txt
)

rem CREATE THE REST OF THE LIST OF MODS, EXCLUDING BASE, DMF, ANIMATION EVENTS AND SETTINGS EXTENSION. IN ALPHABETICAL ORDER.
:Mklist

echo.>>mod_load_order.txt
for /f "tokens=*" %%i in (' dir /b /ad ^|findstr /iv /c:"dmf" /c:"base" 
/c:"animation_events" /c:"settings_extension" /c:"LogMeIn" /c:"psych_ward" /c:"DarktideLocalServer"') do set "mydirs_%%~snxi=%%~nxi" 2>nul
for /f "tokens=2 delims== eol=" %%i in (' set mydirs_ ') do 1>>mod_load_order.txt echo %%i

start mod_load_order.txt

:EOF
