execute if score #init_punish jk_tt_mem matches 1 run scoreboard players operation #temp jk_tt_timeadd = #team_blue jk_tt_timelimit
execute if score #init_punish jk_tt_mem matches 1 run scoreboard players operation #temp jk_tt_timeadd /= #2 jk_tt_mem
execute if score #init_punish jk_tt_mem matches 3 if score #team_blue jk_tt_timelimit matches 300.. run scoreboard players set #temp jk_tt_timeadd 300
execute if score #init_punish jk_tt_mem matches 3 if score #team_blue jk_tt_timelimit matches ..299 run scoreboard players operation #temp jk_tt_timeadd = #team_blue jk_tt_timelimit
execute if score #init_punish jk_tt_mem matches 4 if score #team_blue jk_tt_timelimit matches 600.. run scoreboard players set #temp jk_tt_timeadd 600
execute if score #init_punish jk_tt_mem matches 4 if score #team_blue jk_tt_timelimit matches ..599 run scoreboard players operation #temp jk_tt_timeadd = #team_blue jk_tt_timelimit