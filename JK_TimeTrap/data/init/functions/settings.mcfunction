# 对抗模式设置
execute if score #public mem matches 0 if score #init_time mem matches 1 run scoreboard players set @s time_limit 300
execute if score #public mem matches 0 if score #init_time mem matches 2 run scoreboard players set @s time_limit 600
execute if score #public mem matches 0 if score #init_time mem matches 3 run scoreboard players set @s time_limit 1200

execute if score #public mem matches 0 if score #init_life mem matches 1 run scoreboard players set @s death_limit 1
execute if score #public mem matches 0 if score #init_life mem matches 2 run scoreboard players set @s death_limit 3
execute if score #public mem matches 0 if score #init_life mem matches 3 run scoreboard players set @s death_limit 5
execute if score #public mem matches 0 if score #init_life mem matches 4 run scoreboard players set @s death_limit 99999

# 合作模式设置
execute if score #public mem matches 1 if score #init_time mem matches 1 run scoreboard players set #public time_limit 300
execute if score #public mem matches 1 if score #init_time mem matches 2 run scoreboard players set #public time_limit 600
execute if score #public mem matches 1 if score #init_time mem matches 3 run scoreboard players set #public time_limit 1200

execute if score #public mem matches 1 if score #init_life mem matches 1 run scoreboard players set #public death_limit 1
execute if score #public mem matches 1 if score #init_life mem matches 2 run scoreboard players set #public death_limit 3
execute if score #public mem matches 1 if score #init_life mem matches 3 run scoreboard players set #public death_limit 5
execute if score #public mem matches 1 if score #init_life mem matches 4 run scoreboard players set #public death_limit 99999

execute if score #public mem matches 1 run scoreboard players operation @a death_limit = #public death_limit