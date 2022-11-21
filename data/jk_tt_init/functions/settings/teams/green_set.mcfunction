execute if score #init_time jk_tt_mem matches 1 run scoreboard players set #team_green jk_tt_time_limit 300
execute if score #init_time jk_tt_mem matches 2 run scoreboard players set #team_green jk_tt_time_limit 600
execute if score #init_time jk_tt_mem matches 3 run scoreboard players set #team_green jk_tt_time_limit 1200

execute if score #init_life jk_tt_mem matches 1 run scoreboard players set #team_green jk_tt_death_limit 1
execute if score #init_life jk_tt_mem matches 2 run scoreboard players set #team_green jk_tt_death_limit 3
execute if score #init_life jk_tt_mem matches 3 run scoreboard players set #team_green jk_tt_death_limit 5
execute if score #init_life jk_tt_mem matches 4 run scoreboard players set #team_green jk_tt_death_limit 99999
