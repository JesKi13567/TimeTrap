execute if score #init_punish jk_tt_mem matches 1 run scoreboard players operation #temp jk_tt_timeadd = @s jk_tt_timelimit
execute if score #init_punish jk_tt_mem matches 1 run scoreboard players operation #temp jk_tt_timeadd /= #2 jk_tt_mem
execute if score #init_punish jk_tt_mem matches 3 as @s[scores={jk_tt_timelimit=300..}] run scoreboard players set #temp jk_tt_timeadd 300
execute if score #init_punish jk_tt_mem matches 3 as @s[scores={jk_tt_timelimit=..299}] run scoreboard players operation #temp jk_tt_timeadd = @s jk_tt_timelimit
execute if score #init_punish jk_tt_mem matches 4 as @s[scores={jk_tt_timelimit=600..}] run scoreboard players set #temp jk_tt_timeadd 600
execute if score #init_punish jk_tt_mem matches 4 as @s[scores={jk_tt_timelimit=..599}] run scoreboard players operation #temp jk_tt_timeadd = @s jk_tt_timelimit