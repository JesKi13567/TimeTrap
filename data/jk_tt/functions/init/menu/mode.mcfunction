execute unless score #lang jk_tt_mem matches 1 unless score #mode jk_tt_mem matches 1.. run tellraw @a ["游戏模式：",{"text":"[杀死末影龙]","color":"green","clickEvent":{"action":"run_command","value":"/function jk_tt:init/settings/mode/0"}},"  ",{"text":"[达成两小时]","clickEvent":{"action":"run_command","value":"/function jk_tt:init/settings/mode/1"}}]
execute unless score #lang jk_tt_mem matches 1 if score #mode jk_tt_mem matches 1 run tellraw @a ["游戏模式：",{"text":"[杀死末影龙]","clickEvent":{"action":"run_command","value":"/function jk_tt:init/settings/mode/0"}},"  ",{"text":"[达成两小时]","color":"green","clickEvent":{"action":"run_command","value":"/function jk_tt:init/settings/mode/1"}}]
execute if score #lang jk_tt_mem matches 1 unless score #mode jk_tt_mem matches 1.. run tellraw @a ["GameMode: ",{"text":"[KillDragon]","color":"green","clickEvent":{"action":"run_command","value":"/function jk_tt:init/settings/mode/0"}},"  ",{"text":"[Reach_2hours]","clickEvent":{"action":"run_command","value":"/function jk_tt:init/settings/mode/1"}}]
execute if score #lang jk_tt_mem matches 1 if score #mode jk_tt_mem matches 1 run tellraw @a ["GameMode: ",{"text":"[KillDragon]","clickEvent":{"action":"run_command","value":"/function jk_tt:init/settings/mode/0"}},"  ",{"text":"[Reach_2hours]","color":"green","clickEvent":{"action":"run_command","value":"/function jk_tt:init/settings/mode/1"}}]