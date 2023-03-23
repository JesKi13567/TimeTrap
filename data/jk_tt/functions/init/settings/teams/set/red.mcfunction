execute if score #init_time jk_tt_mem matches 1 run scoreboard players set #team_red jk_tt_timelimit 300
execute if score #init_time jk_tt_mem matches 2 run scoreboard players set #team_red jk_tt_timelimit 600
execute if score #init_time jk_tt_mem matches 3 run scoreboard players set #team_red jk_tt_timelimit 1200
execute if score #init_time jk_tt_mem matches 4 run scoreboard players set #team_red jk_tt_timelimit 1800

execute if score #init_life jk_tt_mem matches 1 run scoreboard players set #team_red jk_tt_deathlimit 1
execute if score #init_life jk_tt_mem matches 2 run scoreboard players set #team_red jk_tt_deathlimit 3
execute if score #init_life jk_tt_mem matches 3 run scoreboard players set #team_red jk_tt_deathlimit 5
execute if score #init_life jk_tt_mem matches 4 run scoreboard players set #team_red jk_tt_deathlimit 99999