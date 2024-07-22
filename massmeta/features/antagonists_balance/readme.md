## Module ID: antagonists_balance

### Description:

- Меняет минимальное количество игроков для объявления войны на 25 и даёт по формуле общий ТК всем нюкам в зависимости от онлайна ([кол-во игроков]*6), т.е. 25 pop = 150 TC, 50 pop = 300 TC, 100 pop = 600 TC.
- Убирает у Предателя на онлайне ниже 25 - цельки на убийства а также и доп. цельки.


### TG Proc/File Changes:

- code/modules/antagonists/nukeop/equipment/nuclear_challenge.dm
- code/modules/antagonists/traitor/datum_traitor.dm


### Modular Overrides:

- N/A


### Defines:

- ~meta_defines/nukes_pop_reduce.dm


### TGUI Files:

- N/A


### Credits:

- RosSample, Huz2e