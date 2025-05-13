[![Darktide](https://global-uploads.webflow.com/6346a2e14dce674426be40ac/637f9b5a8de2a3c4122f0291_6346ea11b9acfa58c8f5a014_Darktide_Logo_2022-2.png)](https://www.playdarktide.com)

# mod_load_order.txt File Maker

## version: 2.0

![Example](https://staticdelivery.nexusmods.com/mods/4943/images/headers/139_1681938046.jpg)

Download from: [Nexus](https://www.nexusmods.com/warhammer40kdarktide/mods/139)

Did you removed/added mods?					﻿﻿﻿﻿﻿﻿Удалили/добавили моды?
Run my batch file.							Запустите батник.

![Example](https://steamuserimages-a.akamaihd.net/ugc/2028353600788151662/BDF513AC19E0903BB034F020CE64699887BBDEEF/)

### +++ WHAT THE BAT FILE DOES:
1. It checks if there are BASE and DMF folders in the MODS folder, which are installed with Darktide Mod Loader and Darktide Mod Framework mods.
2. It makes a backup of the previous version of the MOD_LOAD_ORDER.TXT file. Now backups are created, every time new ones, when you run the file. Or a backup is not created if the file is NO_backup.
3. It checks if the Scoreboard, Log Me In, Psych Ward and Darktide Local Server mods are installed. Also checks if the mods they depend on are installed too and moves those mods up in the list.
4. Than it copies the names of all folders except BASE and DMF.
5. Сhecks for Obsolete mods and disables them. It also suggests deleting the Obsolete mod folder.
6. Creates a list and shows it to you.

### +++INSTALLATION:
Unpack to MODS folder:
...\Steam\steamapps\common\Warhammer 40,000 DARKTIDE\mods

### +++FILES:
1. EN_mod_load_order_file_maker.bat — English. Slow. Lots of progress messages.
Makes a backup copy of the mod_load_order.txt file. Checks for Obsolete mods and disables them. It also suggests deleting the Obsolete mod folder.
2. SL_EN_mod_load_order_file_maker.bat — English, Fast. Makes a backup copy of the mod_load_order.txt file. Checks for Obsolete mods and disables them. It also suggests deleting the Obsolete mod folder.
3. SL_EN_mod_load_order_file_maker_NObckup.bat — English, Fast, NO backup. Checks for Obsolete mods and disables them. It also suggests deleting the Obsolete mod folder.
# +++------------------------------------------------+++

# +++ РУССКОЕ ОПИСАНИЕ +++

### +++ ЧТО БАТНИК ДЕЛАЕТ:
1. Проверяет есть ли данной папке(mods) папки base и dmf, которые устанавливаются вместе с модами Darktide Mod Loader и Darktide Mod Framework.
2. Батник сначала делает резервную копию предыдущей версии файла mod_load_order.txt. Теперь резервные копии создаются, каждый раз новые, когда вы запускаете файл.
3. Затем проверяет установлены ли моды Scoreboard, Log Me In, Psych Ward и Darktide Local Server. Если да, то проверяет установку нужных для их работы зависимостей и поднимает эти моды вверх списка для правильной работы.
4. Копирует ваш список модов на основе всех папок в MODS, исключая, как и должно, папки BASE и DMF.
5. Ищет и отключает устаревшие моды, а также предлагает удалить их папки.
6. Создаёт список и открывает вам его на проверку.

### +++УСТАНОВКА:
Распакуйте в папку MODS:
...\Steam\steamapps\common\Warhammer 40,000 DARKTIDE\mods

### +++ФАЙЛЫ:
1. RU_mod_load_order_file_maker.bat — Русская версия. Медленная. Много сообщений о выполнении. Делает резервную копию файла mod_load_order.txt. Ищет и отключает устаревшие моды, а также предлагает удалить их папки.
2. SL_RU_mod_load_order_file_maker.bat — Русская версия. Быстрая. Делает резервную копию файла mod_load_order.txt. Ищет и отключает устаревшие моды, а также предлагает удалить их папки.
3. SL_RU_mod_load_order_file_maker_NObckup.bat — Русская версия. Быстрая. НЕ делает резервную копию файла mod_load_order.txt. Ищет и отключает устаревшие моды, а также предлагает удалить их папки.
4. SL_RU_Sort_mod_load_order_file_maker_NObckup.bat — Русская версия. Быстрая. НЕ делает резервную копию файла mod_load_order.txt. Ищет и отключает устаревшие моды, а также предлагает удалить их папки. Сортирует моды по русскому алфавиту.
# +++------------------------------------------------+++

Code is under an GPL 3.0 [license](LICENSE)
