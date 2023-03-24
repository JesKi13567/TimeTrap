execute as @a[tag=jk_tt_on_game] at @s run scoreboard players operation @s jk_tt_timeadd /= #3 jk_tt_mem
scoreboard players operation #public jk_tt_timeadd /= #3 jk_tt_mem
scoreboard players operation #team_red jk_tt_timeadd /= #3 jk_tt_mem
scoreboard players operation #team_blue jk_tt_timeadd /= #3 jk_tt_mem
scoreboard players operation #team_green jk_tt_timeadd /= #3 jk_tt_mem
scoreboard players operation #team_yellow jk_tt_timeadd /= #3 jk_tt_mem

execute as @a[tag=jk_tt_on_game] at @s run scoreboard players operation @s jk_tt_timeadd *= #2 jk_tt_mem
scoreboard players operation #public jk_tt_timeadd *= #2 jk_tt_mem
scoreboard players operation #team_red jk_tt_timeadd *= #2 jk_tt_mem
scoreboard players operation #team_blue jk_tt_timeadd *= #2 jk_tt_mem
scoreboard players operation #team_green jk_tt_timeadd *= #2 jk_tt_mem
scoreboard players operation #team_yellow jk_tt_timeadd *= #2 jk_tt_mem