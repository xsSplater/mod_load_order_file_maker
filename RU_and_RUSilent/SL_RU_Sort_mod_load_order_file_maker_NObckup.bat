:: Сделано xsSplater под MIT лицензией.
@echo off
setlocal enableextensions enabledelayedexpansion
1>nul chcp 65001

REM БАЗОВАЯ ПРОВЕРКА: УСТАНОВЛЕН ЛИ ФАЙЛ В ПАПКУ С BASE И DMF? 
REM ЕСЛИ ПАПКА BASE МОДА DARKTIDE MOD LOADER НЕ СУЩЕСТВУЕТ...
if NOT exist base (
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ПАПКА «BASE» МОДА DARKTIDE MOD LOADER НЕ НАЙДЕНА‼            █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
cls
REM Белый текст
color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Вы действительно установили Darktide Mod Loader?             █
	echo █ Похоже, что НЕТ‼ Отсутствует основная папка мода - «BASE»‼   █
	echo █                                                              █
	echo █ Убедитесь, что вы всё установили правильно‼                  █
	echo █ Открыть вам страницу с Руководством по установке модов       █
	echo █ Дарктайд?                                                    █
	echo █                                                              █
	echo █ [Y] - ДА, пожалуйста. Мне нужна помощь в установке.          █
	echo █ [N] - НЕТ. Я проверю всё сам... ВЫХОД‼                       █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YN
	If Errorlevel 2 goto NoDMFL
	If Errorlevel 1 goto YesDMFL)
goto DMLFinded

REM ЕСЛИ ПАПКА BASE МОДА DARKTIDE MOD LOADER СУЩЕСТВУЕТ...
:DMLFinded
if exist base goto DMFCheck
:DMFCheck
REM ЕСЛИ ПАПКА DMF МОДА DARKTIDE MOD FRAMEWORK НЕ СУЩЕСТВУЕТ...
if NOT exist dmf (
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ПАПКА «DMF» МОДА DARKTIDE MOD FRAMEWORK НЕ НАЙДЕНА‼          █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
timeout /t 2 1>nul
cls
REM Белый текст
color 07
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Вы действительно установили Darktide Mod Framework?          █
	echo █ Похоже, что НЕТ‼ Отсутствует основная папка мода - «DMF»‼    █
	echo █                                                              █
	echo █ Убедитесь, что вы всё установили правильно‼                  █
	echo █ Открыть вам страницу с Руководством по установке модов       █
	echo █ Дарктайд?                                                    █
	echo █                                                              █
	echo █ [Y] - ДА, пожалуйста. Мне нужна помощь в установке.          █
	echo █ [N] - НЕТ. Я проверю всё сам... ВЫХОД‼                       █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YN
	If Errorlevel 2 goto NoDMFL
	If Errorlevel 1 goto YesDMFL)
goto DMFFinded
REM ОТКРЫТЬ ВАМ СТРАНИЦУ С РУКОВОДСТВОМ ПО УСТАНОВКЕ МОДОВ ДАРКТАЙД?----------‼
:YesDMFL
timeout /t 2 1>nul
start https://steamcommunity.com/sharedfiles/filedetails/?id=2950374474
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
if exist dmf goto MLOTCheck

:MLOTCheck
REM ЕСЛИ MOD_LOAD_ORDER.TXT НЕ СУЩЕСТВУЕТ...
if NOT exist mod_load_order.txt (
REM Красный текст
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
	echo █ Вы действительно поместили RU_mod_load_order_file_maker.bat  █
	echo █ в папку MODS?                                                █
	echo █                                                              █
	echo █ Если вы уверены, что это папка MODS и всё в порядке...       █
	echo █ то я создам для вас новый чистый файл mod_load_order.txt?    █
	echo █                                                              █
	echo █                                                              █
	echo █ [Y] - ДА, пожалуйста. Файл удалён/испорчен/отсутствует...    █
	echo █ [N] - НЕТ. Я лучше проверю всё ещё раз... ВЫХОД‼             █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YN
	If Errorlevel 2 goto NoMLOT
	If Errorlevel 1 goto YesMLOT)
goto MLOTfinded
REM СОЗДАВАТЬ НОВЫЙ ФАЙЛ MOD_LOAD_ORDER.TXT?------------------------------------‼
:YesMLOT
cls
REM Зелёный текст
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
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Скопируйте файл mod_load_order_file_maker_ru.bat в папку     █
	echo █ MODS и запустите его снова‼                                  █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
pause
exit
REM ----------------------------------------------------------------------------‼

REM ЕСЛИ MOD_LOAD_ORDER.TXT СУЩЕСТВУЕТ...
:MLOTfinded
REM ЗАПИСЫВАЕМ ШАПКУ...
if exist mod_load_order.txt (
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

:LMINCheck
REM LOGMEIN
if NOT exist LogMeIn goto PSWACheck
if exist LogMeIn echo LogMeIn>>mod_load_order.txt

:PSWACheck
REM PSYCH WARD
if NOT exist psych_ward goto DLocSCheck
if exist psych_ward echo psych_ward>>mod_load_order.txt

:DLocSCheck
REM DARKTIDE LOCAL SERVER
if NOT exist DarktideLocalServer goto BWHACheck
if exist DarktideLocalServer echo DarktideLocalServer>>mod_load_order.txt

:BWHACheck
REM BARTER WITH HADRON
if NOT exist barter_with_hadron goto NOSCCheck
if exist barter_with_hadron echo barter_with_hadron>>mod_load_order.txt

:NOSCCheck
REM NO SKULL
if NOT exist NoSkull goto MGOCheck
if exist NoSkull echo NoSkull>>mod_load_order.txt

:MGOCheck
REM MORE GRAPHICS OPTIONS
if NOT exist MoreGraphicsOptions goto MCALCheck
if exist MoreGraphicsOptions echo MoreGraphicsOptions>>mod_load_order.txt

:MCALCheck
REM MORE CHARACTERS AND LOADOUTS
if NOT exist more_characters_and_loadouts goto QPCheck
if exist more_characters_and_loadouts echo more_characters_and_loadouts>>mod_load_order.txt

:QPCheck
REM QUICKEST PLAY
if NOT exist quickest_play goto SVCheck
if exist quickest_play echo quickest_play>>mod_load_order.txt

:SVCheck
REM STAMINA VISIBILITY
if NOT exist StaminaVis goto SUCheck
if exist StaminaVis echo StaminaVis>>mod_load_order.txt

:SUCheck
REM SPEAK UP
if NOT exist "Speak Up" goto HHMCheck
if exist "Speak Up" echo Speak Up>>mod_load_order.txt

:HHMCheck
REM HUB HOTKEY MENUS
if NOT exist hub_hotkey_menus goto RFCheck
if exist hub_hotkey_menus echo hub_hotkey_menus>>mod_load_order.txt

:RFCheck
REM RANGE FINDER
if NOT exist range_finder goto DCCheck
if exist range_finder echo range_finder>>mod_load_order.txt

:DCCheck
REM DARK CACHE
if NOT exist DarkCache goto STCheck
if exist DarkCache echo DarkCache>>mod_load_order.txt

:STCheck
REM SHARE TALENTS
if NOT exist ShareTalents goto DISCheck
if exist ShareTalents echo ShareTalents>>mod_load_order.txt

:DISCheck
REM DISCONNECT
if NOT exist Disconnect goto MKCheck
if exist Disconnect echo Disconnect>>mod_load_order.txt

:MKCheck
REM MULTIPLE KEYBINDS
if NOT exist MultipleKeybinds goto MMTCheck
if exist MultipleKeybinds echo MultipleKeybinds>>mod_load_order.txt

:MMTCheck
REM MANY MORE TRY
if NOT exist ManyMoreTry goto FTECheck
if exist ManyMoreTry echo ManyMoreTry>>mod_load_order.txt

:FTECheck
REM FOR THE EMPEROR
if NOT exist ForTheEmperor goto LLCheck
if exist ForTheEmperor echo ForTheEmperor>>mod_load_order.txt

:LLCheck
REM LOADING LORE
if NOT exist loadinglore goto BURCheck
if exist loadinglore echo loadinglore>>mod_load_order.txt

:BURCheck
REM BUY UNTIL RATING
if NOT exist buy_until_rating goto BFGCheck
if exist buy_until_rating echo buy_until_rating>>mod_load_order.txt

:BFGCheck
REM BETTER FIRE GRENADE
if NOT exist BetterFireGrenade goto EIPCheck
if exist BetterFireGrenade echo BetterFireGrenade>>mod_load_order.txt

:EIPCheck
REM EQUIPPED ICON PLUS
if NOT exist EquippedIconPlus goto DICheck
if exist EquippedIconPlus echo EquippedIconPlus>>mod_load_order.txt

:DICheck
REM DEBUFF INDICATOR
if NOT exist debuff_indicator goto PMCheck
if exist debuff_indicator echo debuff_indicator>>mod_load_order.txt

:PMCheck
REM PING MONITOR
if NOT exist PingMonitor goto PGCheck
if exist PingMonitor echo PingMonitor>>mod_load_order.txt

:PGCheck
REM PERIL GAUGE
if NOT exist PerilGauge goto CAPCheck
if exist PerilGauge echo PerilGauge>>mod_load_order.txt

:CAPCheck
REM CLAIM ALL PENANCES
if NOT exist claim_all_penances goto CMVICheck
if exist claim_all_penances echo claim_all_penances>>mod_load_order.txt

:CMVICheck
REM CORRECT MISSION VOTING INFO
if NOT exist CorrectMissionVotingInfo goto CHFCheck
if exist CorrectMissionVotingInfo echo CorrectMissionVotingInfo>>mod_load_order.txt

:CHFCheck
REM CHAT FIX
if NOT exist ChatFix goto CRFCheck
if exist ChatFix echo ChatFix>>mod_load_order.txt

:CRFCheck
REM CROSSHAIRS FIX
if NOT exist crosshairs_fix goto BFLMCheck
if exist crosshairs_fix echo crosshairs_fix>>mod_load_order.txt

:BFLMCheck
REM BUGFIX LOC MARKERS
if NOT exist bugfix_loc_markers goto WBOOKCheck
if exist bugfix_loc_markers echo bugfix_loc_markers>>mod_load_order.txt

:WBOOKCheck
REM WHICH BOOK
if NOT exist which_book goto QLCCheck
if exist which_book echo which_book>>mod_load_order.txt

:QLCCheck
REM QUICK LOOK CARD
if NOT exist QuickLookCard goto PLOUCheck
if exist QuickLookCard echo QuickLookCard>>mod_load_order.txt

:PLOUCheck
REM PLAYER OUTLINES
if NOT exist PlayerOutlines goto TEOCCheck
if exist PlayerOutlines echo PlayerOutlines>>mod_load_order.txt

:TEOCCheck
REM TEAM OUTLINE COLOURS
if NOT exist CareerColourOutlines goto WAYCheck
if exist CareerColourOutlines echo CareerColourOutlines>>mod_load_order.txt

:WAYCheck
REM WHO ARE YOU
if NOT exist who_are_you goto BEMECheck
if exist who_are_you echo who_are_you>>mod_load_order.txt

:BEMECheck
REM BETTER MELK
if NOT exist BetterMelk goto FABOCheck
if exist BetterMelk echo BetterMelk>>mod_load_order.txt

:FABOCheck
REM FANCY BOTS
if NOT exist fancy_bots goto MMBUCheck
if exist fancy_bots echo fancy_bots>>mod_load_order.txt

:MMBUCheck
REM MODULAR MENU BUTTONS
if NOT exist modular_menu_buttons goto MYFAVCheck
if exist modular_menu_buttons echo modular_menu_buttons>>mod_load_order.txt

:MYFAVCheck
REM MY FAVORITES
if NOT exist MyFavorites goto TRULCheck
if exist MyFavorites echo MyFavorites>>mod_load_order.txt

:TRULCheck
REM TRUE LEVEL
if NOT exist true_level goto CHUDCheck
if exist true_level echo true_level>>mod_load_order.txt

:CHUDCheck
REM CUSTOM HUD
if NOT exist custom_hud goto PUNTCheck
if exist custom_hud echo custom_hud>>mod_load_order.txt

:PUNTCheck
REM PICKUP NOTIF TWEAKER
if NOT exist pickup_notif_tweaker goto FYACheck
if exist pickup_notif_tweaker echo pickup_notif_tweaker>>mod_load_order.txt

:FYACheck
REM FOUND YA
if NOT exist FoundYa goto MTSTCheck
if exist FoundYa echo FoundYa>>mod_load_order.txt

:MTSTCheck
REM MERGED TALENT STATS
if NOT exist MergedTalentStats goto IFSOCheck
if exist MergedTalentStats echo MergedTalentStats>>mod_load_order.txt

:IFSOCheck
REM INSPECT FROM SOCIAL
if NOT exist InspectFromSocial goto DSEFCheck
if exist InspectFromSocial echo InspectFromSocial>>mod_load_order.txt

:DSEFCheck
REM DISABLE SCREEN EFFECTS
if NOT exist DisableScreenEffects goto OPLPCheck
if exist DisableScreenEffects echo DisableScreenEffects>>mod_load_order.txt

:OPLPCheck
REM OPEN PLAYER PROFILE
if NOT exist OpenPlayerProfile goto RAPACheck
if exist OpenPlayerProfile echo OpenPlayerProfile>>mod_load_order.txt

:RAPACheck
REM RATION PACK
if NOT exist "Ration Pack" goto SPSECheck
if exist "Ration Pack" echo Ration Pack>>mod_load_order.txt

:SPSECheck
REM SPIDEY SENSE
if NOT exist "Spidey Sense" goto RECOCheck
if exist "Spidey Sense" echo Spidey Sense>>mod_load_order.txt

:RECOCheck
REM RECONNECT
if NOT exist Reconnect goto RECHCheck
if exist Reconnect echo Reconnect>>mod_load_order.txt

:RECHCheck
REM REORDER CHARS
if NOT exist ReorderChars goto COLFCheck
if exist ReorderChars echo ReorderChars>>mod_load_order.txt

:COLFCheck
REM COLLECTIBLE FINDER
if NOT exist CollectibleFinder goto SMRWSCheck
if exist CollectibleFinder echo CollectibleFinder>>mod_load_order.txt

:SMRWSCheck
REM SHOW ME REAL WEAPON STATS
if NOT exist ShowMeRealWeaponStats goto SEILCheck
if exist ShowMeRealWeaponStats echo ShowMeRealWeaponStats>>mod_load_order.txt

:SEILCheck
REM SHOW EQUIPPED IN LOBBY
if NOT exist ShowEquippedInLobby goto SHINCheck
if exist ShowEquippedInLobby echo ShowEquippedInLobby>>mod_load_order.txt

:SHINCheck
REM SHOW INSIGNIAS
if NOT exist ShowInsignias goto FUAUCheck
if exist ShowInsignias echo ShowInsignias>>mod_load_order.txt

:FUAUCheck
REM FULL AUTO
if NOT exist FullAuto goto HEBACheck
if exist FullAuto echo FullAuto>>mod_load_order.txt

:HEBACheck
REM HEALTHBARS
if NOT exist Healthbars goto AFGRCheck
if exist Healthbars echo Healthbars>>mod_load_order.txt

:AFGRCheck
REM AFTER GRENADE
if NOT exist AfterGrenade goto CFOVCheck
if exist AfterGrenade echo AfterGrenade>>mod_load_order.txt

:CFOVCheck
REM CONSTANT FOV
if NOT exist ConstantFov goto REBLCheck
if exist ConstantFov echo ConstantFov>>mod_load_order.txt

:REBLCheck
REM REVEAL BLESSINGS
if NOT exist reveal_blessings goto WECUCheck
if exist reveal_blessings echo reveal_blessings>>mod_load_order.txt

:WECUCheck
REM WEAPON CUSTOMIZATION
if NOT exist weapon_customization goto WCMSCheck
if exist weapon_customization echo weapon_customization>>mod_load_order.txt

:WCMSCheck
REM WEAPON CUSTOMIZATION MT STUFF
if NOT exist weapon_customization_mt_stuff goto BORECheck
if exist weapon_customization_mt_stuff echo weapon_customization_mt_stuff>>mod_load_order.txt

:BORECheck
REM BORN READY
if NOT exist BornReady goto CAFFCheck
if exist BornReady echo BornReady>>mod_load_order.txt

:CAFFCheck
REM CAMERA FREEFLIGHT
if NOT exist camera_freeflight goto HIPRCheck
if exist camera_freeflight echo camera_freeflight>>mod_load_order.txt

:HIPRCheck
REM HIDE PROMPTS
if NOT exist hideprompts goto CTSHCheck
if exist hideprompts echo hideprompts>>mod_load_order.txt

:CTSHCheck
REM C THRU SHIELDS
if NOT exist CThruShields goto SOBRCheck
if exist CThruShields echo CThruShields>>mod_load_order.txt

:SOBRCheck
REM SORT BRUNT
if NOT exist SortBrunt goto SMGRCheck
if exist SortBrunt echo SortBrunt>>mod_load_order.txt

:SMGRCheck
REM SORTED MISSION GRID
if NOT exist sorted_mission_grid goto ITSOCheck
if exist sorted_mission_grid echo sorted_mission_grid>>mod_load_order.txt

:ITSOCheck
REM ITEM SORTING
if NOT exist ItemSorting goto CRSPCheck
if exist ItemSorting echo ItemSorting>>mod_load_order.txt

:CRSPCheck
REM CREATURE SPAWNER
if NOT exist creature_spawner goto PSDDCheck
if exist creature_spawner echo creature_spawner>>mod_load_order.txt

:PSDDCheck
REM PSYKANIUM DEFAULT DIFFICULTY
if NOT exist PsykaniumDefaultDifficulty goto INVSCheck
if exist PsykaniumDefaultDifficulty echo PsykaniumDefaultDifficulty>>mod_load_order.txt

:INVSCheck
REM INVENTORY STATS
if NOT exist InventoryStats goto KITRCheck
if exist InventoryStats echo InventoryStats>>mod_load_order.txt

:KITRCheck
REM KILL TRACKER
if NOT exist kill_tracker goto SBAECheck
if exist kill_tracker echo kill_tracker>>mod_load_order.txt

:SBAECheck
REM SCOREBOARD
if NOT exist scoreboard goto SBAMCheck
if exist scoreboard (
REM ПРОВЕРЯЕМ УСТАНОВЛЕН ЛИ ANIMATION ЕVENTS...
	if NOT exist animation_events (
	REM Красный текст
	color 0C
		echo.
		echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
		echo █ ОЙ‼ Вы не установили мод ANIMATION ЕVENTS‼                   █
		echo █ Без него мод SCOREBOARD не будет работать‼                   █
		echo █                                                              █
		echo █                                                              █
		echo █ Открыть вам в браузере страницу мода ANIMATION ЕVENTS?       █
		echo █                                                              █
		echo █ [Y] - Да, открой мне страницу мода. ВЫХОД‼                   █
		echo █ [N] - Не нужно, я сделаю всё сам. ВЫХОД‼                     █
		echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
		echo.
	Choice
		If Errorlevel 2 goto NoAEMS
		If Errorlevel 1 goto YesAEMS)
	if exist animation_events (echo animation_events>>mod_load_order.txt
	echo scoreboard>>mod_load_order.txt))
goto SBAMCheck
REM ОТКРЫТЬ СТРАНИЦУ МОДА ANIMATION ЕVENTS В БРАУЗЕРЕ?--------------------------‼
:YesAEMS
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Сейчас откроется страница мода, а это окно закроется‼        █
	echo █ УСТАНОВИТЕ МОД ANIMATION ЕVENTS И ПЕРЕЗАПУСТИТЕ ЭТОТ ФАЙЛ‼   █
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
	echo █ УСТАНОВИТЕ МОД ANIMATION ЕVENTS И ПЕРЕЗАПУСТИТЕ ЭТОТ ФАЙЛ‼   █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
pause
exit

REM SCOREBOARD PLUGINS
:SBAMCheck
REM SCOREBOARD AMMOS
if NOT exist ScoreboardAmmos goto SBEXCheck
if exist ScoreboardAmmos (
REM ПРОВЕРЯЕМ УСТАНОВЛЕН ЛИ SCOREBOARD...
	if NOT exist scoreboard goto SCRBRD_NE
	if exist scoreboard echo ScoreboardAmmos>>mod_load_order.txt
)

:SBEXCheck
REM SCOREBOARD EXPLOSIVE
if NOT exist ScoreboardExplosive goto SBOPCheck
if exist ScoreboardExplosive (
REM ПРОВЕРЯЕМ УСТАНОВЛЕН ЛИ SCOREBOARD...
	if NOT exist scoreboard goto SCRBRD_NE
	if exist scoreboard echo ScoreboardExplosive>>mod_load_order.txt
)

:SBOPCheck
REM OVENPROOF'S SCOREBOARD PLUGIN
if NOT exist ovenproof_scoreboard_plugin goto SEDPCheck
if exist ovenproof_scoreboard_plugin (
REM ПРОВЕРЯЕМ УСТАНОВЛЕН ЛИ SCOREBOARD...
	if NOT exist scoreboard goto SCRBRD_NE
	if exist scoreboard echo ovenproof_scoreboard_plugin>>mod_load_order.txt
)

:SEDPCheck
REM SCOREBOARD ENHANCED DEFENSE PLUGIN
if NOT exist scoreboard_enhanced_defense_plugin goto SBTCCheck
if exist scoreboard_enhanced_defense_plugin (
REM ПРОВЕРЯЕМ УСТАНОВЛЕН ЛИ SCOREBOARD...
	if NOT exist scoreboard goto SCRBRD_NE
	if exist scoreboard echo scoreboard_enhanced_defense_plugin>>mod_load_order.txt
)

:SBTCCheck
REM SCOREBOARD TAG COUNTER
if NOT exist ScoreboardTagCounter goto SBDGCheck
if exist ScoreboardTagCounter (
REM ПРОВЕРЯЕМ УСТАНОВЛЕН ЛИ SCOREBOARD...
	if NOT exist scoreboard goto SCRBRD_NE
	if exist scoreboard echo ScoreboardTagCounter>>mod_load_order.txt
)

:SBDGCheck
REM SCOREBOARD DAMAGE
if NOT exist ScoreboardDamage goto VFTICheck
if exist ScoreboardDamage (
REM ПРОВЕРЯЕМ УСТАНОВЛЕН ЛИ SCOREBOARD...
	if NOT exist scoreboard goto SCRBRD_NE
	if exist scoreboard echo ScoreboardDamage>>mod_load_order.txt
)
REM ---------------------------/SCOREBOARD_PLUGINS------------------------------‼

:VFTICheck
REM VOLLEY FIRE TIMER
if NOT exist volleyfiretimer goto HUDTCheck
if exist volleyfiretimer echo volleyfiretimer>>mod_load_order.txt

:HUDTCheck
REM HUD TWEAKER
if NOT exist HUDTweaker goto WRBECheck
if exist HUDTweaker echo HUDTweaker>>mod_load_order.txt

:WRBECheck
REM TALENT REFUND BELOW
if NOT exist TalentRefundBelow goto BHUDICheck
if exist TalentRefundBelow echo TalentRefundBelow>>mod_load_order.txt

:BHUDICheck
REM BUFF HUD IMPROVEMENTS
if NOT exist BuffHUDImprovements goto KFIMCheck
if exist BuffHUDImprovements echo BuffHUDImprovements>>mod_load_order.txt

:KFIMCheck
REM KILLFEED IMPROVEMENTS
if NOT exist KillfeedImprovements goto RULFBTNCheck
if exist KillfeedImprovements echo KillfeedImprovements>>mod_load_order.txt

:RULFBTNCheck
REM RU LOCALIZATION FIX BLESS N TALENTS NAMES
if NOT exist RULocalizationFIXBlessnTalentsNames goto RULFBCheck
if exist RULocalizationFIXBlessnTalentsNames echo RULocalizationFIXBlessnTalentsNames>>mod_load_order.txt

:RULFBCheck
REM RU LOCALIZATION FIX BLESSINGS
if NOT exist RULocalizationFIXBlessings goto RULFECheck
if exist RULocalizationFIXBlessings echo RULocalizationFIXBlessings>>mod_load_order.txt

:RULFECheck
REM RU LOCALIZATION FIX ENEMIES
if NOT exist RULocalizationFIXEnemies goto RULFACheck
if exist RULocalizationFIXEnemies echo RULocalizationFIXEnemies>>mod_load_order.txt

:RULFACheck
REM RU LOCALIZATION FIX ACHIEVEMENTS
if NOT exist RULocalizationFIXAchievements goto RULFSCheck
if exist RULocalizationFIXAchievements echo --RULocalizationFIXAchievements>>mod_load_order.txt

:RULFSCheck
REM RU LOCALIZATION FIX STORES
if NOT exist RULocalizationFIXStores goto RULFMCheck
if exist RULocalizationFIXStores echo RULocalizationFIXStores>>mod_load_order.txt

:RULFMCheck
REM RU LOCALIZATION FIX MENUS
if NOT exist RULocalizationFIXMenus goto RULFWNCheck
if exist RULocalizationFIXMenus echo RULocalizationFIXMenus>>mod_load_order.txt

:RULFWNCheck
REM RU LOCALIZATION FIX WEAPON NAMES
if NOT exist RULocalizationFIXWeaponnames goto RULFCCheck
if exist RULocalizationFIXWeaponnames echo RULocalizationFIXWeaponnames>>mod_load_order.txt

:RULFCCheck
REM RU LOCALIZATION FIX CURIOS
if NOT exist RULocalizationFIXCurios goto RULFTACheck
if exist RULocalizationFIXCurios echo RULocalizationFIXCurios>>mod_load_order.txt

:RULFTACheck
REM RU LOCALIZATION FIX TALENTS
if NOT exist RULocalizationFIXTalents goto RULFTRCheck
if exist RULocalizationFIXTalents echo RULocalizationFIXTalents>>mod_load_order.txt

:RULFTRCheck
REM RU LOCALIZATION FIX TRAITS
if NOT exist RULocalizationFIXTraits goto SMTTCheck
if exist RULocalizationFIXTraits echo RULocalizationFIXTraits>>mod_load_order.txt

:SMTTCheck
REM SMALLER TALENT TREE
if NOT exist smaller_talent_tree goto IBCOCheck
if exist smaller_talent_tree echo smaller_talent_tree>>mod_load_order.txt

:IBCOCheck
REM ITEM BORDER COLOR
if NOT exist ItemBorderColor goto MICOCheck
if exist ItemBorderColor echo ItemBorderColor>>mod_load_order.txt

:MICOCheck
REM MODIFICATION ICON COLOR
if NOT exist ModificationIconColor goto SPICheck
if exist ModificationIconColor echo ModificationIconColor>>mod_load_order.txt

:SPICheck
REM STIMMS PICKUP ICON
if NOT exist StimmsPickupIcon goto OUCOCheck
if exist StimmsPickupIcon echo StimmsPickupIcon>>mod_load_order.txt

:OUCOCheck
REM OUTLINE COLOURS
if NOT exist outline_colours goto DICOCheck
if exist outline_colours echo outline_colours>>mod_load_order.txt

:DICOCheck
REM DIFFICULTY COLOR
if NOT exist DifficultyColor goto STCOCheck
if exist DifficultyColor echo DifficultyColor>>mod_load_order.txt

:STCOCheck
REM STATUS COLOURS
if NOT exist status_colours goto CHBLCheck
if exist status_colours echo status_colours>>mod_load_order.txt

:CHBLCheck
REM CHAT BLOCK
if NOT exist ChatBlock goto NUUICheck
if exist ChatBlock echo ChatBlock>>mod_load_order.txt

:NUUICheck
REM NUMERIC UI
if NOT exist NumericUI goto CFBLCheck
if exist NumericUI echo NumericUI>>mod_load_order.txt

:CFBLCheck
REM CLEAN FORCE BLOCKING
if NOT exist CleanForceBlocking goto WTLOCheck
if exist CleanForceBlocking echo CleanForceBlocking>>mod_load_order.txt

:WTLOCheck
REM WHAT THE LOCALIZATION
if NOT exist WhatTheLocalization goto Mklist
if exist WhatTheLocalization echo WhatTheLocalization>>mod_load_order.txt

REM СОЗДАЁМ СПИСОК ОСТАЛЬНЫХ МОДОВ, НЕ ВОШЕДШИХ В СОРТИРОВКУ, ИСКЛЮЧАЯ BASE, DMF, ANIMATION ЕVENTS И ТД В АЛФАВИТНОМ ПОРЯДКЕ...
:Mklist
for /f "tokens=*" %%i in (' dir /b /ad ^|findstr /iv /c:"AfterGrenade" /c:"animation_events" /c:"barter_with_hadron" /c:"base" /c:"BetterFireGrenade" /c:"BetterMelk" /c:"BornReady" /c:"BuffHUDImprovements" /c:"bugfix_loc_markers" /c:"buy_until_rating" /c:"camera_freeflight" /c:"CareerColourOutlines" /c:"ChatBlock" /c:"ChatFix" /c:"claim_all_penances" /c:"CleanForceBlocking" /c:"CollectibleFinder" /c:"ConstantFov" /c:"CorrectMissionVotingInfo" /c:"creature_spawner" /c:"crosshairs_fix" /c:"CThruShields" /c:"custom_hud" /c:"DarkCache" /c:"DarktideLocalServer" /c:"debuff_indicator" /c:"DifficultyColor" /c:"DisableScreenEffects" /c:"Disconnect" /c:"dmf" /c:"EquippedIconPlus" /c:"fancy_bots" /c:"ForTheEmperor" /c:"FoundYa" /c:"FullAuto" /c:"Healthbars" /c:"hideprompts" /c:"hub_hotkey_menus" /c:"HUDTweaker" /c:"InspectFromSocial" /c:"InventoryStats" /c:"ItemBorderColor" /c:"ItemSorting" /c:"kill_tracker" /c:"KillfeedImprovements" /c:"loadinglore" /c:"LogMeIn" /c:"ManyMoreTry" /c:"MergedTalentStats" /c:"ModificationIconColor" /c:"modular_menu_buttons" /c:"more_characters_and_loadouts" /c:"MoreGraphicsOptions" /c:"MultipleKeybinds" /c:"MyFavorites" /c:"NoSkull" /c:"NumericUI" /c:"OpenPlayerProfile" /c:"outline_colours" /c:"PerilGauge" /c:"pickup_notif_tweaker" /c:"PingMonitor" /c:"PlayerOutlines" /c:"psych_ward" /c:"PsykaniumDefaultDifficulty" /c:"quickest_play" /c:"QuickLookCard" /c:"range_finder" /c:"Ration Pack" /c:"Reconnect" /c:"ReorderChars" /c:"reveal_blessings" /c:"RULocalizationFIX" /c:"scoreboard" /c:"ShareTalents" /c:"ShowEquippedInLobby" /c:"ShowInsignias" /c:"ShowMeRealWeaponStats" /c:"smaller_talent_tree" /c:"SortBrunt" /c:"sorted_mission_grid" /c:"Speak Up" /c:"Spidey Sense" /c:"StaminaVis" /c:"status_colours" /c:"StimmsPickupIcon" /c:"TalentRefundBelow" /c:"true_level" /c:"volleyfiretimer" /c:"weapon_customization" /c:"WhatTheLocalization" /c:"which_book" /c:"who_are_you"') do set "mydirs_%%~snxi=%%~nxi" 2>nul
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
start mod_load_order.txt
goto EOF

REM SCOREBOARD СКАЧАТЬ?---------------------------------------------------------‼
:SCRBRD_NE
REM Красный текст
color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ ОЙ‼ Вы не установили мод мод Scoreboard‼                     █
	echo █ Без него мод этот плагин не будет работать‼                  █
	echo █                                                              █
	echo █                                                              █
	echo █ Открыть вам в браузере страницу мода Scoreboard?             █
	echo █                                                              █
	echo █  Y - Да, открой мне страницу мода. ВЫХОД‼                    █
	echo █  N - Не нужно, я сделаю всё сам. ВЫХОД‼                      █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
Choice /c YN
	If Errorlevel 2 goto NoSB2
	If Errorlevel 1 goto YesSB2 
REM ОТКРЫТЬ СТРАНИЦУ МОДА SCOREBOARD В БРАУЗЕРЕ?--------------------------------‼
:YesSB2
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ Сейчас откроется страница мода, а это окно закроется‼        █
	echo █ УСТАНОВИТЕ МОД SCOREBOARD И ПЕРЕЗАПУСТИТЕ ЭТОТ ФАЙЛ‼         █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
pause
start https://www.nexusmods.com/warhammer40kdarktide/mods/22
exit
:NoSB2
cls
REM Красный текст
	color 0C
	echo.
	echo ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
	echo █ УСТАНОВИТЕ МОД SCOREBOARD И ПЕРЕЗАПУСТИТЕ ЭТОТ ФАЙЛ‼         █
	echo ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
	echo.
pause
exit
REM ----------------------------------------------------------------------------‼

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
