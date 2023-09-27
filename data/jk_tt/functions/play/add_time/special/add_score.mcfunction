# 分数加到对应目标上
advancement grant @s[tag=!jk_tt_murder] only jk_tt:clock/learn
# 按难度倍数 by difficuty
# *2
execute if score #init_diff jk_tt_mem matches 1 run scoreboard players operation @s[tag=!jk_tt_murder] jk_tt_timeadd *= #2 jk_tt_mem
# *3/2=1.5
execute if score #init_diff jk_tt_mem matches 2 run scoreboard players operation @s[tag=!jk_tt_murder] jk_tt_timeadd *= #3 jk_tt_mem
execute if score #init_diff jk_tt_mem matches 2 run scoreboard players operation @s[tag=!jk_tt_murder] jk_tt_timeadd /= #2 jk_tt_mem

# 真·加分
title @s actionbar [" + ",{"score":{"name":"@s","objective":"jk_tt_timeadd"},"color":"yellow"}]
scoreboard players operation @s jk_tt_record += @s jk_tt_timeadd

execute if score #public jk_tt_mem matches 0 run scoreboard players operation @s jk_tt_timelimit += @s jk_tt_timeadd
execute if score #public jk_tt_mem matches 1 run scoreboard players operation #public jk_tt_timelimit += @s jk_tt_timeadd
execute if score #public jk_tt_mem matches 2.. run scoreboard players operation #team_red jk_tt_timelimit += @s[team=jk_tt_red] jk_tt_timeadd
execute if score #public jk_tt_mem matches 2.. run scoreboard players operation #team_blue jk_tt_timelimit += @s[team=jk_tt_blue] jk_tt_timeadd
execute if score #public jk_tt_mem matches 2.. run scoreboard players operation #team_green jk_tt_timelimit += @s[team=jk_tt_green] jk_tt_timeadd
execute if score #public jk_tt_mem matches 2.. run scoreboard players operation #team_yellow jk_tt_timelimit += @s[team=jk_tt_yellow] jk_tt_timeadd
scoreboard players reset @s jk_tt_timeadd