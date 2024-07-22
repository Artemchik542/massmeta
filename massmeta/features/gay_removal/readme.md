## Module ID: gay_removal

### Description:

Убирает из репозитория большинство ЛГБТ контента. Заменяет их значки на нейтральные значки с флагами стран.

Убирает из выбора пола "Их" и "Оно", а также не даёт сделать неопределённый пол (убирает выбор тип тела).

(https://github.com/ss220club/Bandastation/pull/339)


### TG Proc/File Changes:

- code/datums/sprite_accessories.dm
- code/modules/holiday/holidays.dm


### Modular Overrides:

- code/modules/loadout/categories/accessories.dm
- code/modules/clothing/under/accessories/badges.dm
- code/modules/client/preferences/body_type.dm
- code/game/objects/structures/mirror.dm
- code/modules/clothing/shoes/sneakers.dm


### Defines:

- N/A


### TGUI Files:

- tgui/packages/tgui/interfaces/PreferencesMenu/MainPage.tsx


### Credits:

- Artemchik542 (код), bee (спрайты), ss220 (выбор пола)
