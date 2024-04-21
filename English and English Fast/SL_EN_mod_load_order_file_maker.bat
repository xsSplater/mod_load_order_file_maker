:: Made by xsSplater under an MIT license.
@echo off
setlocal enableextensions enabledelayedexpansion
1>nul chcp 65001

REM CHECKING IS THE FILE INSTALLED IN THE CORRECT FOLDER? 
REM IF DARKTIDE MOD LOADER'S MAIN FOLDER BASE DOESN'T EXIST...
if NOT exist base (
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ DARKTIDE MOD LOADER'S MAIN FOLDER "BASE" NOT FOUND‼          █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
cls
REM White text
color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Did you really install DARKTIDE MOD LOADER?                  █
	echo █ Looks like NO‼ The main mod folder "BASE" is missing‼        █
	echo █                                                              █
	echo █ Make sure you've installed everything correctly‼             █
	echo █ Can I open a link to the Darktide Mod Installation Guide     █
	echo █ for you?                                                     █
	echo █                                                              █
	echo █ [Y] - Yes, please. I need some help with this.               █
	echo █ [N] - No, I'll check everything myself... EXIT‼              █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice
	If Errorlevel 2 goto NoDMFL
	If Errorlevel 1 goto YesDMFL)
goto DMLFinded

REM IF DARKTIDE MOD LOADER'S MAIN FOLDER "BASE" EXISTS...
:DMLFinded
if exist base goto DMFCheck

:DMFCheck
REM IF DARKTIDE MOD FRAMEWORK'S MAIN FOLDER DMF DOESN'T EXIST...
if NOT exist dmf (
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ DARKTIDE MOD FRAMEWORK'S MAIN FOLDER "DMF" NOT FOUND‼        █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
cls
REM White text
color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Did you really install DARKTIDE MOD FRAMEWORK?               █
	echo █ Looks like NO‼ The main mod folder "DMF" is missing‼         █
	echo █                                                              █
	echo █ Make sure you've installed everything correctly‼             █
	echo █ Can I open a link to the Darktide Mod Installation Guide     █
	echo █ for you?                                                     █
	echo █                                                              █
	echo █ [Y] - Yes, please. I need some help with this.               █
	echo █ [N] - No, I'll check everything myself... EXIT‼              █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice
	If Errorlevel 2 goto NoDMFL
	If Errorlevel 1 goto YesDMFL)
goto DMFFinded

REM CAN I OPEN A LINK TO THE DARKTIDE MOD INSTALLATION GUIDE FOR YOU?----------‼
:YesDMFL
timeout /t 2 1>nul
start https://steamcommunity.com/sharedfiles/filedetails/?id=2953324027
goto XSSRPMDT
:NoDMFL
cls
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ VERIFY THE INSTALLATION AND RUN THIS FILE AGAIN‼             █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
pause
exit
REM ----------------------------------------------------------------------------‼
REM IF DARKTIDE MOD FRAMEWORK'S MAIN FOLDER DMF EXISTS...
:DMFFinded
if exist dmf goto MLOTCheck

:MLOTCheck
REM IF MOD_LOAD_ORDER.TXT DOES NOT EXIST...
if NOT exist mod_load_order.txt (
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ FILE MOD_LOAD_ORDER.TXT NOT FOUND‼                           █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
cls
REM White text
color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Did you really put EN_MOD_LOAD_ORDER_FILE_MAKER.BAT in the   █
	echo █ MODS folder?                                                 █
	echo █                                                              █
	echo █ If you are sure that this is the MODS folder and everything  █
	echo █ is fine, then can I create a NEW CLEAN MOD_LOAD_ORDER.TXT    █
	echo █ file for you?                                                █
	echo █                                                              █
	echo █ [Y] - Yes, please. File deleted/corrupted/missing...         █
	echo █ [N] - No, I'd better check everything again... EXIT‼         █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice
	If Errorlevel 2 goto NoMLOT
	If Errorlevel 1 goto YesMLOT)
goto MLOTfinded
REM CREATE NEW MOD_LOAD_ORDER.TXT FILE?-----------------------------------------‼
:YesMLOT
cls
REM Green text
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
:NoMLOT
cls
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Copy the EN_MOD_LOAD_ORDER_FILE_MAKER.BAT file to the MODS   █
	echo █ folder and run it again‼                                     █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
pause
exit
REM ----------------------------------------------------------------------------‼

REM IF MOD_LOAD_ORDER.TXT EXISTS...
:MLOTfinded
if exist mod_load_order.txt (
cls
REM White text
color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Create a backup of the current MOD_LOAD_ORDER.TXT file...    █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
REM BACKUP THE MOD_LOAD_ORDER.TXT FILE
echo f | XCOPY mod_load_order.txt mod_load_order.txt_%Date:~0,2%.%Date:~3,2%.%Date:~6,4%_%TIME:~3,2%%TIME:~6,5%.bak /y /i 1>nul
timeout /t 2 1>nul
REM Green text
color 0A
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ DONE‼                                                        █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 1 1>nul)
cls

REM WRITE A STANDARD AUTHOR'S HEADER FROM THE MOD_LOAD_ORDER.TXT FILE
	(echo -- ################################################################
	echo -- Enter user mod names below, separated by line.
	echo -- Order in the list determines the order in which mods are loaded.
	echo -- Do not rename a mod's folders.
	echo -- You do not need to include 'BASE' or 'DMF' mod folders.
	echo -- ################################################################
	echo.)>mod_load_order.txt

:LMICheck
REM IF THE LOG ME IN MOD IS NOT INSTALLED, SKIP ALL ITS CHECKS...
if NOT exist LogMeIn goto PWCheck
REM IF THE LOG ME IN MOD IS INSTALLED...
if exist LogMeIn echo LogMeIn>>mod_load_order.txt

:PWCheck
REM IF THE PSYCH WARD MOD IS NOT INSTALLED, SKIP ALL ITS CHECKS...
if NOT exist psych_ward goto DLocSCheck
REM IF THE PSYCH WARD MOD IS INSTALLED...
if exist psych_ward echo psych_ward>>mod_load_order.txt

:DLocSCheck
REM IF THE DARKTIDE LOCAL SERVER MOD IS NOT INSTALLED, SKIP ALL ITS CHECKS...
if NOT exist DarktideLocalServer goto SCRBRDCheck
REM IF THE DARKTIDE LOCAL SERVER MOD IS INSTALLED...
if exist DarktideLocalServer echo DarktideLocalServer>>mod_load_order.txt

:SCRBRDCheck
REM IF THE SCOREBOARD MOD IS NOT INSTALLED, SKIP ALL ITS CHECKS...
if NOT exist scoreboard goto Mklist
REM IF THE SCOREBOARD MOD IS INSTALLED...
if exist scoreboard (
REM CHECK IF ANIMATION EVENTS IS INSTALLED...
REM IF THE ANIMATION EVENTS MOD IS NOT INSTALLED...
if NOT exist animation_events (
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Oops‼ You haven't installed the ANIMATION EVENTS mod‼        █
	echo █ Without it, the SCOREBOARD mod will NOT work‼                █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Do you want to open the ANIMATION EVENTS mod page in         █
	echo █ your browser?                                                █
	echo █                                                              █
	echo █ [Y] - Yes, open the mod page for me. EXIT‼                   █
	echo █ [N] - No need, I'll do it myself. EXIT‼                      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice
	If Errorlevel 2 goto NoAEMS
	If Errorlevel 1 goto YesAEMS)
goto Mklist
REM OPEN THE ANIMATION EVENTS MOD PAGE IN A BROWSER?----------------------------‼
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
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ INSTALL THE ANIMATION EVENTS MOD AND RUN THIS FILE AGAIN‼    █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
pause
exit
REM ----------------------------------------------------------------------------‼
REM IF THE ANIMATION EVENTS MOD IS INSTALLED...
if exist animation_events echo animation_events>>mod_load_order.txt)
goto Mklist

REM CREATE THE REST OF THE LIST OF MODS, EXCLUDING BASE, DMF, ANIMATION EVENTS AND SETTINGS EXTENSION. IN ALPHABETICAL ORDER.
:Mklist
for /f "tokens=*" %%i in (' dir /b /ad ^|findstr /iv /c:"dmf" /c:"base" 
/c:"animation_events" /c:"LogMeIn" /c:"psych_ward" /c:"DarktideLocalServer"') do set "mydirs_%%~snxi=%%~nxi" 2>nul
for /f "tokens=2 delims== eol=" %%i in (' set mydirs_ ') do 1>>mod_load_order.txt echo %%i


REM -------------------------CHECKING FOR OBSOLETE MODS-----------------------‼
:OBSOLETECheck
:OBSO1
REM SPECTATOR HUD
if NOT exist SpectatorHUD goto OBSO2
if exist SpectatorHUD (
type mod_load_order.txt | find /v /i "SpectatorHUD" > xss.temp
echo.Y | move xss.temp mod_load_order.txt
cls
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ATTENTION‼                                                   █
	echo █ THE SPECTATOR HUD MOD IS OBSOLETE AND HAS BEEN DISABLED IN   █
	echo █ THE LIST TO AVOID ERRORS AND CRASHES IN THE GAME.            █
	echo █                                                              █
	echo █ SHOULD I ALSO DELETE THE OBSOLETE SPECTATOR HUD MOD FOLDER?  █
	echo █ [Y] - Yes. Delete the folder and continue...                 █
	echo █ [F] - No. I'll delete the folder myself later. Сontinue...   █
	echo █ [N] - No. I will do everything myself manually... EXIT‼      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoSHUD
	If Errorlevel 2 goto FSHUD
	If Errorlevel 1 goto YesSHUD)
goto OBSO2
REM SHOULD WE DELETE THE FOLDER?------------------------------------------------‼
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
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ATTENTION‼                                                   █
	echo █ THE BOOK FINDER MOD IS OBSOLETE AND HAS BEEN DISABLED IN     █
	echo █ THE LIST TO AVOID ERRORS AND CRASHES IN THE GAME.            █
	echo █ USE THE "COLLECTIBLE FINDER" MOD INSTEAD.                    █
	echo █                                                              █
	echo █ SHOULD I ALSO DELETE THE OBSOLETE BOOK FINDER MOD FOLDER?    █
	echo █ [Y] - Yes. Delete the folder and continue...                 █
	echo █ [F] - No. I'll delete the folder myself later. Сontinue...   █
	echo █ [N] - No. I will do everything myself manually... EXIT‼      █
	echo █ [S] - Open the Collectible Finder mod page. EXIT‼            █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFNS
	If Errorlevel 4 goto SBOFI
	If Errorlevel 3 goto NoBOFI
	If Errorlevel 2 goto FBOFI
	If Errorlevel 1 goto YesBOFI)
goto OBSO3
REM SHOULD WE DELETE THE FOLDER?------------------------------------------------‼
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
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ATTENTION‼                                                   █
	echo █ THE CONTRACTS OVERLAY MOD IS OBSOLETE AND HAS BEEN DISABLED  █
	echo █ IN THE LIST TO AVOID ERRORS AND CRASHES IN THE GAME.         █
	echo █                                                              █
	echo █ SHOULD I ALSO DELETE THE MOD FOLDER?                         █
	echo █ [Y] - Yes. Delete the folder and continue...                 █
	echo █ [F] - No. I'll delete the folder myself later. Сontinue...   █
	echo █ [N] - No. I will do everything myself manually... EXIT‼      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoCOOV
	If Errorlevel 2 goto FCOOV
	If Errorlevel 1 goto YesCOOV)
goto OBSO4
REM SHOULD WE DELETE THE FOLDER?------------------------------------------------‼
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
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ATTENTION‼                                                   █
	echo █ THE UI EXTENSION MOD IS NOT NEEDED FOR ANYTHING AND HAS      █
	echo █ BEEN DISABLED.                                               █
	echo █                                                              █
	echo █ SHOULD I ALSO DELETE THE MOD FOLDER?                         █
	echo █ [Y] - Yes. Delete the folder and continue...                 █
	echo █ [F] - No. I'll delete the folder myself later. Сontinue...   █
	echo █ [N] - No. I will do everything myself manually... EXIT‼      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoUIEX
	If Errorlevel 2 goto FUIEX
	If Errorlevel 1 goto YesUIEX)
goto OBSO5
REM SHOULD WE DELETE THE FOLDER?------------------------------------------------‼
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
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ATTENTION‼                                                   █
	echo █ THE REROLL UNTIL RARITY MOD IS OBSOLETE AND HAS BEEN         █
	echo █ DISABLED IN THE LIST TO AVOID ERRORS AND CRASHES IN THE GAME.█
	echo █                                                              █
	echo █ SHOULD I ALSO DELETE THE MOD FOLDER?                         █
	echo █ [Y] - Yes. Delete the folder and continue...                 █
	echo █ [F] - No. I'll delete the folder myself later. Сontinue...   █
	echo █ [N] - No. I will do everything myself manually... EXIT‼      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoREUR
	If Errorlevel 2 goto FREUR
	If Errorlevel 1 goto YesREUR)
goto OBSO6
REM SHOULD WE DELETE THE FOLDER?------------------------------------------------‼
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
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ATTENTION‼                                                   █
	echo █ THE SETTINGS EXTENSION MOD WAS DISABLED IN THE LIST BECAUSE  █
	echo █ IT'S ONLY NEEDED FOR THE OBSOLETE GRAPHICS OPTIONS MOD AND   █
	echo █ NOTHING ELSE‼                                                █
	echo █                                                              █
	echo █ SHOULD I ALSO DELETE THE MOD FOLDER?                         █
	echo █ [Y] - Yes. Delete the folder and continue...                 █
	echo █ [F] - No. I'll delete the folder myself later. Сontinue...   █
	echo █ [N] - No. I will do everything myself manually... EXIT‼      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoSEXT
	If Errorlevel 2 goto FSEXT
	If Errorlevel 1 goto YesSEXT)
goto OBSO7
REM SHOULD WE DELETE THE FOLDER?------------------------------------------------‼
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
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ATTENTION‼                                                   █
	echo █ THE GRAPHICS OPTIONS MOD IS OBSOLETE AND HAS BEEN DISABLED   █
	echo █ IN THE LIST TO AVOID ERRORS AND CRASHES IN THE GAME.         █
	echo █                                                              █
	echo █ SHOULD I ALSO DELETE THE MOD FOLDER?                         █
	echo █ [Y] - Yes. Delete the folder and continue...                 █
	echo █ [F] - No. I'll delete the folder myself later. Сontinue...   █
	echo █ [N] - No. I will do everything myself manually... EXIT‼      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoGROP
	If Errorlevel 2 goto FGROP
	If Errorlevel 1 goto YesGROP)
goto OBSO8
REM SHOULD WE DELETE THE FOLDER?------------------------------------------------‼
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
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ATTENTION‼                                                   █
	echo █ THE CHAR WALLETS MOD IS OBSOLETE AND HAS BEEN DISABLED IN    █
	echo █ THE LIST TO AVOID ERRORS AND CRASHES IN THE GAME.            █
	echo █                                                              █
	echo █ SHOULD I ALSO DELETE THE MOD FOLDER?                         █
	echo █ [Y] - Yes. Delete the folder and continue...                 █
	echo █ [F] - No. I'll delete the folder myself later. Сontinue...   █
	echo █ [N] - No. I will do everything myself manually... EXIT‼      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoCHWA
	If Errorlevel 2 goto FCHWA
	If Errorlevel 1 goto YesCHWA)
goto OBSO9
REM SHOULD WE DELETE THE FOLDER?------------------------------------------------‼
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
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ATTENTION‼                                                   █
	echo █ THE PENANCE DETAILS MOD IS OBSOLETE AND HAS BEEN DISABLED IN █
	echo █ THE LIST TO AVOID ERRORS AND CRASHES IN THE GAME.            █
	echo █                                                              █
	echo █ SHOULD I ALSO DELETE THE MOD FOLDER?                         █
	echo █ [Y] - Yes. Delete the folder and continue...                 █
	echo █ [F] - No. I'll delete the folder myself later. Сontinue...   █
	echo █ [N] - No. I will do everything myself manually... EXIT‼      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoPEDE
	If Errorlevel 2 goto FPEDE
	If Errorlevel 1 goto YesPEDE)
goto OBSO10
REM SHOULD WE DELETE THE FOLDER?------------------------------------------------‼
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
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ATTENTION‼                                                   █
	echo █ THE TRUE PERIL MOD IS OBSOLETE AND HAS BEEN DISABLED IN THE  █
	echo █ LIST TO AVOID ERRORS AND CRASHES IN THE GAME.                █
	echo █ USE THE "PERIL GAUGE" MOD INSTEAD.                           █
	echo █                                                              █
	echo █ SHOULD I ALSO DELETE THE MOD FOLDER?                         █
	echo █ [Y] - Yes. Delete the folder and continue...                 █
	echo █ [F] - No. I'll delete the folder myself later. Сontinue...   █
	echo █ [N] - No. I will do everything myself manually... EXIT‼      █
	echo █ [S] - Open the Peril Gauge mod page. EXIT‼                   █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFNS
	If Errorlevel 4 goto STRPE
	If Errorlevel 3 goto NoTRPE
	If Errorlevel 2 goto FTRPE
	If Errorlevel 1 goto YesTRPE)
goto OBSO11
REM SHOULD WE DELETE THE FOLDER?------------------------------------------------‼
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
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ATTENTION‼                                                   █
	echo █ THE SPACE TO CONTINUE MOD IS OBSOLETE AND HAS BEEN DISABLED  █
	echo █ IN THE LIST TO AVOID ERRORS AND CRASHES IN THE GAME.         █
	echo █                                                              █
	echo █ SHOULD I ALSO DELETE THE MOD FOLDER?                         █
	echo █ [Y] - Yes. Delete the folder and continue...                 █
	echo █ [F] - No. I'll delete the folder myself later. Сontinue...   █
	echo █ [N] - No. I will do everything myself manually... EXIT‼      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoSPTC
	If Errorlevel 2 goto FSPTC
	If Errorlevel 1 goto YesSPTC)
goto OBSO12
REM SHOULD WE DELETE THE FOLDER?------------------------------------------------‼
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
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ATTENTION‼                                                   █
	echo █ THE WHICH MISSIONS MOD IS OBSOLETE AND HAS BEEN DISABLED IN  █
	echo █ THE LIST TO AVOID ERRORS AND CRASHES IN THE GAME.            █
	echo █                                                              █
	echo █ SHOULD I ALSO DELETE THE MOD FOLDER?                         █
	echo █ [Y] - Yes. Delete the folder and continue...                 █
	echo █ [F] - No. I'll delete the folder myself later. Сontinue...   █
	echo █ [N] - No. I will do everything myself manually... EXIT‼      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoWHMI
	If Errorlevel 2 goto FWHMI
	If Errorlevel 1 goto YesWHMI)
goto OBSO13
REM SHOULD WE DELETE THE FOLDER?------------------------------------------------‼
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
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ATTENTION‼                                                   █
	echo █ THE OPEN STEAM PROFILE MOD IS OBSOLETE AND HAS BEEN DISABLED █
	echo █ IN THE LIST TO AVOID ERRORS AND CRASHES IN THE GAME.         █
	echo █ USE THE "OPEN PLAYER PROFILE" MOD INSTEAD.                   █
	echo █                                                              █
	echo █ SHOULD I ALSO DELETE THE MOD FOLDER?                         █
	echo █ [Y] - Yes. Delete the folder and continue...                 █
	echo █ [F] - No. I'll delete the folder myself later. Сontinue...   █
	echo █ [N] - No. I will do everything myself manually... EXIT‼      █
	echo █ [S] - Open the Open Player Profile mod page. EXIT‼           █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFNS
	If Errorlevel 4 goto SOPSP
	If Errorlevel 3 goto NoOPSP
	If Errorlevel 2 goto FOPSP
	If Errorlevel 1 goto YesOPSP)
goto OBSO14
REM SHOULD WE DELETE THE FOLDER?------------------------------------------------‼
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
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ATTENTION‼                                                   █
	echo █ THE IGNORE PSYKER GRENADES MOD IS OBSOLETE AND HAS BEEN      █
	echo █ DISABLED INTHE LIST TO AVOID ERRORS AND CRASHES IN THE GAME. █
	echo █                                                              █
	echo █ SHOULD I ALSO DELETE THE MOD FOLDER?                         █
	echo █ [Y] - Yes. Delete the folder and continue...                 █
	echo █ [F] - No. I'll delete the folder myself later. Сontinue...   █
	echo █ [N] - No. I will do everything myself manually... EXIT‼      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoIPSG
	If Errorlevel 2 goto FIPSG
	If Errorlevel 1 goto YesIPSG)
goto OBSO15
REM SHOULD WE DELETE THE FOLDER?------------------------------------------------‼
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
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ATTENTION‼                                                   █
	echo █ THE MUTE IN BACKGROUND MOD IS OBSOLETE AND HAS BEEN DISABLED █
	echo █ IN THE LIST TO AVOID ERRORS AND CRASHES IN THE GAME.         █
	echo █                                                              █
	echo █ SHOULD I ALSO DELETE THE MOD FOLDER?                         █
	echo █ [Y] - Yes. Delete the folder and continue...                 █
	echo █ [F] - No. I'll delete the folder myself later. Сontinue...   █
	echo █ [N] - No. I will do everything myself manually... EXIT‼      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoMIBG
	If Errorlevel 2 goto FMIBG
	If Errorlevel 1 goto YesMIBG)
goto OBSO16
REM SHOULD WE DELETE THE FOLDER?------------------------------------------------‼
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
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ATTENTION‼                                                   █
	echo █ THE MUTE PERIL SOUNDS MOD IS OBSOLETE AND HAS BEEN DISABLED  █
	echo █ IN THE LIST TO AVOID ERRORS AND CRASHES IN THE GAME.         █
	echo █                                                              █
	echo █ SHOULD I ALSO DELETE THE MOD FOLDER?                         █
	echo █ [Y] - Yes. Delete the folder and continue...                 █
	echo █ [F] - No. I'll delete the folder myself later. Сontinue...   █
	echo █ [N] - No. I will do everything myself manually... EXIT‼      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoMUPS
	If Errorlevel 2 goto FMUPS
	If Errorlevel 1 goto YesMUPS)
goto OBSO17
REM SHOULD WE DELETE THE FOLDER?------------------------------------------------‼
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
REM Red text
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ATTENTION‼                                                   █
	echo █ THE AIM SENSITIVITY MOD IS OBSOLETE AND HAS BEEN DISABLED IN █
	echo █ THE LIST TO AVOID ERRORS AND CRASHES IN THE GAME.            █
	echo █                                                              █
	echo █ SHOULD I ALSO DELETE THE MOD FOLDER?                         █
	echo █ [Y] - Yes. Delete the folder and continue...                 █
	echo █ [F] - No. I'll delete the folder myself later. Сontinue...   █
	echo █ [N] - No. I will do everything myself manually... EXIT‼      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YFN
	If Errorlevel 3 goto NoAIMS
	If Errorlevel 2 goto FAIMS
	If Errorlevel 1 goto YesAIMS)
goto END
REM SHOULD WE DELETE THE FOLDER?------------------------------------------------‼
:YesAIMS
rmdir /s /q "AimSensitivity"
goto END
:NoAIMS
goto OBSOEXIT
:FAIMS
goto END
REM ----------------------------------------------------------------------------‼

:END

start mod_load_order.txt
goto EOF

:OBSOEXIT
cls
REM Red text
	color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Delete the MOD FOLDER and run this file again‼               █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
exit

:XSSRPMDT
cls
REM Green text
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Now the Guide page will open and this window will close‼     █
	echo █ VERIFY THE INSTALLATION AND RUN THIS FILE AGAIN‼             █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
pause
exit

:EOF
exit
