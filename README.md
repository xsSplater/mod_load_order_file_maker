[![Darktide](https://global-uploads.webflow.com/6346a2e14dce674426be40ac/637f9b5a8de2a3c4122f0291_6346ea11b9acfa58c8f5a014_Darktide_Logo_2022-2.png)](https://www.playdarktide.com)

# mod_load_order.txt File Maker v2.0

![Картинка верхняя](https://staticdelivery.nexusmods.com/mods/4943/images/headers/139_1747096632.jpg)

__EN: `Did you removed/added mods? Run my batch file.`__ __RU: `Удалили/добавили моды? Запустите батник.`__

![Разделитель большой](https://steamuserimages-a.akamaihd.net/ugc/2028353600788151662/BDF513AC19E0903BB034F020CE64699887BBDEEF/)
# ﻿ ﻿+++ ENGLISH DESCRIPTION +++
![Разделитель малый](https://images.steamusercontent.com/ugc/2028353600788151668/F7F901141085ADEF920CE9FF2F24EB4AFFDC5C16/)
## ++ HOW TO USE ++
### ﻿ ﻿1. Unpack to **MODS** folder.
### ﻿ ﻿2. Run **2_EN_mod_load_order_file_maker_NObckup.bat**.

![Разделитель малый](https://images.steamusercontent.com/ugc/2028353600788151668/F7F901141085ADEF920CE9FF2F24EB4AFFDC5C16/)
## ++ WHAT THE BAT FILE DOES ++
### ﻿ ﻿1. Checks if the Sorter is in the mods folder. If not, suggests solutions to the problem.
### ﻿ ﻿2. Adds mods to the list that require a special order:
```
╔═══════════════════════════════════════════╗
║  SORTING RULES:                           ║
╠═══════════════════════════════════════════╣
╟+ LogMeIn                                  ║
╟+ psych_ward                               ║
╟+ DarktideLocalServer                      ║
╟+ └─Audio                                  ║
╟+ master_item_community_patch              ║
╟+ animation_events                         ║
╟+ └─scoreboard                             ║
╟+   ├─ScoreboardAmmos                      ║
╟+   ├─ScoreboardDamage                     ║
╟+   ├─scoreboard_enhanced_defense_plugin   ║
╟+   ├─ScoreboardExplosive                  ║
╟+   ├─ScoreboardTagCounter                 ║
╟+   ├─ovenproof_scoreboard_plugin          ║
╟+   └─scoreboard_vermintide_plugin         ║
╟+ weapon_customization                     ║
╟+ ├─for_the_drip                           ║
╟+ │ └─for_the_drip_extra                   ║
╟+ ├─weapon_customization_chains            ║
╟+ ├─weapon_customization_no_gun            ║
╟+ ├─weapon_customization_owo               ║
╟+ ├─weapon_customization_syn_edits         ║
╟+ ├─weapon_customization_mt_stuff          ║
╟+ ├─weapon_customization_no_scope          ║
╟+ └─weapon_customization_plugin_xsSythes   ║
╟+ ChatBlock                                ║
╟+ MultiBind                                ║
╟+ ToggleAltFire                            ║
╟+ hybrid_sprint                            ║
╟+ guarantee_ability_activation             ║
╟+ guarantee_weapon_swap                    ║
╟+ guarantee_special_action                 ║
╟+ Power_DI                                 ║
╟+ │true_level                              ║
╟+ └┴─Do I Know You                         ║
╚═══════════════════════════════════════════╝
```
### ﻿ ﻿﻿3. Checks mods for compatibility. If there are incompatible ones, offers solutions to problems.
   __*﻿If any mod has been updated or is outdated, please let me know!*__
```
╔═══════════════════════════════════════════╗
║ MOD COMPATIBILITY:                        ║
╠═══════════════════════════════════════════╣
╟+ NumericUI VS                             ║
╟+ └─Remove Tag Skulls                      ║
╟+ Skitarius VS                             ║
╟+ ├─UngaBunga                              ║
╟+ ├─KeepSwinging                           ║
╟+ └─FullAuto                               ║
╟+ Custom HUD VS                            ║
╟+ ├─Toggle HUD                             ║
╟+ └─None HUD                               ║
╟+ Toggle HUD VS                            ║
╟+ └─None HUD                               ║
╟+ Solo Play VS                             ║
╟+ └─Prologue                               ║
╟+ Display Ping (Latency) VS                ║
╟+ └─Ping Monitor                           ║
╟+ Show Weapons In Lobby VS                 ║
╟+ └─Mission Lobby - Show Ranged Weapons    ║
╟+ Transparent Shield VS                    ║
╟+ └─C-Thru Shields                         ║
╟+ Markers Improved All-in-One VS           ║
╟+ ├─Ration Pack                            ║
╟+ ├─Stimms Pickup Icon                     ║
╟+ ├─Heretical Idol Markers                 ║
╟+ ├─Tome and Relic Markers                 ║
╟+ ├─Material Markers                       ║
╟+ ├─Ammo and Medical Markers               ║
╟+ ├─Stimm Markers                          ║
╟+ ├─Chest Markers                          ║
╟+ └─TaintedDevices_markers                 ║
╟+ Ammo and Medical Markers VS              ║
╟+ └─Ration Pack                            ║
╟+ Stimm Markers VS                         ║
╟+ ├─Recolor Stimms                         ║
╟+ └─Stimms Pickup Icon                     ║
╚═══════════════════════════════════════════╝
```
### ﻿ ﻿4. Searches for outdated mods:
- **ADS Crosshair** - Deprecated. Closed in favor of Crosshair Remap (Continued).
- ﻿﻿**AimSensitivity** - Outdated, fixed by FS.
- ﻿﻿**Barter At Once** - Obsolete due to changes in-game system in Arsenal.
- ﻿﻿**Barter with Hadron** - Obsolete due to changes in-game system in Arsenal.
- ﻿**Book Finder** - Deprecated. Closed in favor of Collectible Finder, which can be replaced by Markers Improved All-In-One.
- ﻿﻿**Character Screen Wallets** - Deprecated. Closed in favor of Character Screen Contracts (aka Better Melk)
- ﻿﻿**Combat Evolved** - Not updating.
- ﻿﻿**Consistent Flamer Backpacks** - Outdated, introduced into the game by FS.
- ﻿﻿**Contracts Overlay** - Outdated, introduced into the game by FS.
- ﻿﻿**DankTide** - Not updating.
- ﻿﻿**DarkCache** - Not updating.
- ﻿﻿**Direct to Hadron** - Deprecated. Closed in favor of GoToMastery.
- ﻿﻿**Emote Wheel Fix** - Outdated, fixed by FS.
- ﻿**Graphics Options** - Not updating.
- ﻿﻿**Height Changer** - Outdated, introduced into the game by FS.
- ﻿﻿**Holier Revenant** - Not updating.
- ﻿﻿**IgnorePsykerGrenades** - Outdated, fixed by FS.
- ﻿**Minimap** - Not updating.
- ﻿﻿**Modification Icon Color** - Deprecated due to changes in the game's crafting system.
- ﻿﻿**Mute In Background** - Outdated, introduced into the game by FS.
- ~~﻿﻿Mute Peril Sounds - Outdated, introduced into the game by FS.~~
- ﻿﻿**No Skull** - Not updating.
- ﻿﻿**Open Steam Profile** - Deprecated. Closed in favor of Open Player Profile.
- ﻿﻿**Penance Details** - Outdated, introduced into the game by FS.
- ﻿﻿**Private Mission Status** - Not updating.
- ﻿**Quieter Psyker Critical Peril** - Not updating.
- ﻿﻿**Reject Invites While In Mission** - Outdated, introduced into the game by FS.
- ﻿﻿**Reroll-Until-Rarity** - Deprecated due to changes in the game's crafting system.
- ﻿﻿**Restore Ragdoll Interaction** - Outdated, introduced into the game by FS.
- ﻿﻿**Retain Selection** - Outdated, introduced into the game by FS.
- ﻿﻿**Reveal Blessings** - Outdated, introduced into the game by FS.
- ﻿﻿**Settings Extension** - Only needed for the non-updating Graphics Options mod.
- ﻿﻿~~Space To Continue - Outdated, introduced into the game by FS.~~
- ﻿﻿**Spectator HUD** - Outdated, introduced into the game by FS.
- ﻿﻿**True Peril** - Deprecated. Closed in favor of Peril Gauge.
- ﻿﻿**UI Extension** - Not needed for anything.
- ﻿﻿**which_book** - Obsolete folder name. The new version is called **Distinct Side Mission Icons**.
- ﻿﻿**Which Missions** - Outdated, introduced into the game by FS.
### ﻿ List of obsolete versions of **Enhanced Descriptions**:
- ~~﻿﻿ENLocalizationFIX~~
- ﻿﻿~~ENLocalizationFIXAIO~~
- ~~﻿﻿ENLocalizationFIXBlessings~~
- ~~﻿﻿ENLocalizationFIXCurios~~
- ~~﻿﻿ENLocalizationFIXTalents~~
- ﻿﻿~~ENLocalizationFIXTraits~~
- ~~﻿﻿RULocalizationFIX~~
- ~~﻿﻿RULocalizationFIXAchievements~~
- ~~﻿﻿RULocalizationFIXBlessings~~
- ~~﻿﻿RULocalizationFIXBlessnTalentsNames~~
- ~~﻿﻿RULocalizationFIXCurios~~
- ~~﻿﻿RULocalizationFIXEnemies~~
- ~~﻿﻿RULocalizationFIXMenus~~
- ~~﻿﻿RULocalizationFIXStores~~
- ﻿﻿~~RULocalizationFIXTalents~~
- ﻿﻿~~RULocalizationFIXTraits~~
- ﻿﻿~~RULocalizationFIXTitles~~
- ﻿﻿~~RULocalizationFIXWeaponnames~~
- ﻿﻿~~x_Enhanced_RU_Localization~~

###  ﻿5. Creates a list and opens it for you to check.

![Разделитель большой](https://steamuserimages-a.akamaihd.net/ugc/2028353600788151662/BDF513AC19E0903BB034F020CE64699887BBDEEF/)
#  ﻿+++ РУССКОЕ ОПИСАНИЕ +++
![Разделитель малый](https://images.steamusercontent.com/ugc/2028353600788151668/F7F901141085ADEF920CE9FF2F24EB4AFFDC5C16/)
## ++ КАК ИСПОЛЬЗОВАТЬ ++
### ﻿ ﻿1. Распакуйте в папку **MODS**.
### ﻿ ﻿2. Запустите **2_RU_mod_load_order_file_maker_NObckup.bat**.

![Разделитель малый](https://images.steamusercontent.com/ugc/2028353600788151668/F7F901141085ADEF920CE9FF2F24EB4AFFDC5C16/)
## ++ ЧТО БАТНИК ДЕЛАЕТ ++
### ﻿ ﻿1. Проверяет, находится ли Сортировщик в папке mods. Если нет, предлагает решения проблемы.
### ﻿ ﻿2. Добавляет в список моды, которые требуют особого порядка:
```
╔═══════════════════════════════════════════╗
║  ПРАВИЛА СОРТИРОВКИ:                      ║
╠═══════════════════════════════════════════╣
╟+ LogMeIn                                  ║
╟+ psych_ward                               ║
╟+ DarktideLocalServer                      ║
╟+ └─Audio                                  ║
╟+ master_item_community_patch              ║
╟+ animation_events                         ║
╟+ └─scoreboard                             ║
╟+   ├─ScoreboardAmmos                      ║
╟+   ├─ScoreboardDamage                     ║
╟+   ├─scoreboard_enhanced_defense_plugin   ║
╟+   ├─ScoreboardExplosive                  ║
╟+   ├─ScoreboardTagCounter                 ║
╟+   ├─ovenproof_scoreboard_plugin          ║
╟+   └─scoreboard_vermintide_plugin         ║
╟+ weapon_customization                     ║
╟+ ├─for_the_drip                           ║
╟+ │ └─for_the_drip_extra                   ║
╟+ ├─weapon_customization_chains            ║
╟+ ├─weapon_customization_no_gun            ║
╟+ ├─weapon_customization_owo               ║
╟+ ├─weapon_customization_syn_edits         ║
╟+ ├─weapon_customization_mt_stuff          ║
╟+ ├─weapon_customization_no_scope          ║
╟+ └─weapon_customization_plugin_xsSythes   ║
╟+ ChatBlock                                ║
╟+ MultiBind                                ║
╟+ ToggleAltFire                            ║
╟+ hybrid_sprint                            ║
╟+ guarantee_ability_activation             ║
╟+ guarantee_weapon_swap                    ║
╟+ guarantee_special_action                 ║
╟+ Power_DI                                 ║
╟+ │true_level                              ║
╟+ └┴─Do I Know You                         ║
╚═══════════════════════════════════════════╝
```
### ﻿ ﻿﻿3.  Проверяет моды на совместимость. Если есть несовместимые, предлагает варианты решения проблем.
   __*﻿﻿﻿Если какой-то мод был обновлён или устарел, сообщите мне, пожалуйста!*__
```
╔═══════════════════════════════════════════╗
║ СОВМЕСТИМОСТЬ МОДОВ:                      ║
╠═══════════════════════════════════════════╣
╟+ NumericUI VS                             ║
╟+ └─Remove Tag Skulls                      ║
╟+ Skitarius VS                             ║
╟+ ├─UngaBunga                              ║
╟+ ├─KeepSwinging                           ║
╟+ └─FullAuto                               ║
╟+ Custom HUD VS                            ║
╟+ ├─Toggle HUD                             ║
╟+ └─None HUD                               ║
╟+ Toggle HUD VS                            ║
╟+ └─None HUD                               ║
╟+ Solo Play VS                             ║
╟+ └─Prologue                               ║
╟+ Display Ping (Latency) VS                ║
╟+ └─Ping Monitor                           ║
╟+ Show Weapons In Lobby VS                 ║
╟+ └─Mission Lobby - Show Ranged Weapons    ║
╟+ Transparent Shield VS                    ║
╟+ └─C-Thru Shields                         ║
╟+ Markers Improved All-in-One VS           ║
╟+ ├─Ration Pack                            ║
╟+ ├─Stimms Pickup Icon                     ║
╟+ ├─Heretical Idol Markers                 ║
╟+ ├─Tome and Relic Markers                 ║
╟+ ├─Material Markers                       ║
╟+ ├─Ammo and Medical Markers               ║
╟+ ├─Stimm Markers                          ║
╟+ ├─Chest Markers                          ║
╟+ └─TaintedDevices_markers                 ║
╟+ Ammo and Medical Markers VS              ║
╟+ └─Ration Pack                            ║
╟+ Stimm Markers VS                         ║
╟+ ├─Recolor Stimms                         ║
╟+ └─Stimms Pickup Icon                     ║
╚═══════════════════════════════════════════╝
```
### ﻿ ﻿4. Ищет устаревшие моды:
- ﻿**ADS Crosshair** - Устарел. Закрыт в пользу **Crosshair Remap (Continued)**.
- ﻿﻿﻿**AimSensitivity** - Устарел, исправлено ФШ.
- ﻿﻿﻿**Barter At Once** - Устарел из-за изменения ФШ в игре системы продаж.
- ﻿﻿﻿**Barter with Hadron** - Устарел из-за изменения ФШ в игре системы продаж.
- ﻿﻿**Book Finder** - Устарел. Закрыт в пользу Collectible Finder, который можно заменить **Markers Improved All-In-One**.
- **﻿﻿﻿Character Screen Wallets** - Устарел. Закрыт в пользу **Character Screen Contracts (aka Better Melk)**.
- ﻿﻿﻿**Combat Evolved** - Не обновляется.
- **﻿﻿﻿Consistent Flamer Backpacks** - Устарел, введено ФШ в игру.
- ﻿﻿﻿**Contracts Overlay** - Устарел, введено ФШ в игру.
- ﻿﻿﻿**DankTide** - Не обновляется.
- ﻿﻿﻿**DarkCache** - Не обновляется.
- ﻿﻿﻿**Direct to Hadron** - Устарел. Закрыт в пользу **GoToMastery**.
- ﻿﻿﻿**Emote Wheel Fix** - Устарел, исправлено ФШ.
- ﻿﻿**Graphics Options** - Не обновляется.
- ﻿﻿﻿**Height Changer** - Устарел, введено ФШ в игру.
- ﻿﻿﻿**Holier Revenant** - Не обновляется.
- ﻿﻿﻿**IgnorePsykerGrenades** - Устарел, исправлено ФШ.
- ﻿﻿**Minimap** - Не обновляется.
- ﻿﻿﻿**Modification Icon Color** - Устарел из-за изменения в игре системы крафта.
- ﻿﻿﻿**Mute In Background** - Устарел, введено ФШ в игру.
- ~~﻿﻿﻿Mute Peril Sounds - Устарел, введено ФШ в игру.~~
- ﻿﻿﻿**No Skull** - Не обновляется.
- ﻿﻿﻿**Open Steam Profile** - Устарел. Закрыт в пользу **Open Player Profile**.
- ﻿﻿﻿**Penance Details** - Устарел, введено ФШ в игру.
- ﻿﻿﻿**Private Mission Status** - Не обновляется.
- ﻿﻿**Quieter Psyker Critical Peril** - Не обновляется.
- ﻿﻿﻿**Reject Invites While In Mission** - Устарел, введено ФШ в игру.
- ﻿﻿﻿**Reroll-Until-Rarity** - Устарел из-за изменения в игре системы крафта.
- ﻿﻿﻿**Restore Ragdoll Interaction** - Устарел, введено ФШ в игру.
- ﻿﻿﻿**Retain Selection** - Устарел, введено ФШ в игру.
- ﻿﻿﻿**Reveal Blessings** - Устарел, введено ФШ в игру.
- ﻿﻿﻿**Settings Extension** - Нужен только для не обновляющегося мода **Graphics Options**.
- ~~Space To Continue - Устарел, введено ФШ в игру.~~
- ﻿﻿﻿**Spectator HUD** - Устарел, введено ФШ в игру.
- ﻿﻿﻿**True Peril** - Устарел. Закрыт в пользу Peril Gauge.
- ﻿﻿﻿**UI Extension** - Не нужен ни для чего.
- ﻿﻿﻿**which_book** - Устаревшее название папки. Новая версия называется **Distinct Side Mission Icons**.
- ﻿﻿﻿**Which** **Missions** - Устарел, введено ФШ в игру.
### ﻿ ﻿Список устаревших версий **Enhanced Descriptions**:
- ~~﻿ENLocalizationFIX~~
- ~~﻿﻿﻿ENLocalizationFIXAIO~~
- ~~﻿﻿﻿ENLocalizationFIXBlessings~~
- ~~﻿﻿﻿ENLocalizationFIXCurios~~
- ~~﻿﻿﻿ENLocalizationFIXTalents~~
- ~~﻿﻿﻿ENLocalizationFIXTraits~~
- ~~﻿﻿﻿RULocalizationFIX~~
- ~~﻿﻿﻿RULocalizationFIXAchievements~~
- ~~﻿﻿﻿RULocalizationFIXBlessings~~
- ~~﻿﻿﻿RULocalizationFIXBlessnTalentsNames~~
- ﻿﻿﻿~~RULocalizationFIXCurios~~
- ~~﻿﻿﻿RULocalizationFIXEnemies~~
- ~~﻿﻿﻿RULocalizationFIXMenus~~
- ~~﻿﻿﻿RULocalizationFIXStores~~
- ﻿﻿﻿~~RULocalizationFIXTalents~~
- ~~﻿﻿﻿RULocalizationFIXTraits~~
- ~~﻿﻿﻿RULocalizationFIXTitles~~
- ~~﻿﻿﻿RULocalizationFIXWeaponnames~~
- ~~﻿﻿﻿x_Enhanced_RU_Localization~~
###  ﻿5. Создаёт список и открывает вам его на проверку.

![Разделитель большой](https://steamuserimages-a.akamaihd.net/ugc/2028353600788151662/BDF513AC19E0903BB034F020CE64699887BBDEEF/)

Code is under an GPL 3.0 [license](LICENSE)
