# 除以2
execute as @a[tag=jk_tt_on_game] at @s run scoreboard players operation @s jk_tt_timelimit /= #2 jk_tt_mem
scoreboard players operation #public jk_tt_timelimit /= #2 jk_tt_mem
scoreboard players operation #team_red jk_tt_timelimit /= #2 jk_tt_mem
scoreboard players operation #team_blue jk_tt_timelimit /= #2 jk_tt_mem
scoreboard players operation #team_green jk_tt_timelimit /= #2 jk_tt_mem
scoreboard players operation #team_yellow jk_tt_timelimit /= #2 jk_tt_mem

# *3，因为 1.5=3/2
execute if score #init_diff jk_tt_mem matches 2 run function jk_tt:play/add_time/difficulty/normal