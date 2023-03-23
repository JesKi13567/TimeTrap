# 分配队伍
scoreboard players reset #temp jk_tt_mem
execute as @a[sort=random] store result score @s jk_tt_team run scoreboard players add #temp jk_tt_mem 1
scoreboard players operation @a jk_tt_team %= #public jk_tt_mem
execute as @a run function jk_tt:init/settings/teams/player_team