# 每 1 秒执行一次

# 检测死亡
execute if score #public mem matches 0 as @a[tag=on_game,scores={death=1..}] at @s run function timing:check_death
execute if score #public mem matches 1 as @a[tag=on_game,scores={death=1..}] at @s run function timing:check_death_public

# 时间流逝
execute unless score #game_on mem matches ..0 if score #public mem matches 0 as @a[tag=on_game,gamemode=!spectator] at @s run function timing:count
execute unless score #game_on mem matches ..0 if score #public mem matches 1 run function timing:count_public

# 获胜
execute if entity @p[tag=on_game,advancements={end/kill_dragon=true}] run function gaming:win

# 失败
execute store result score #all mem if entity @a[tag=on_game]
execute store result score #spectator mem if entity @a[tag=on_game,gamemode=spectator]
execute if score #spectator mem >= #all mem run function gaming:failed

# 多人游戏中途加入
execute as @a unless score @s leave_game matches 0 at @s run tag @s remove on_game
scoreboard players set @a leave_game 0

tellraw @a[tag=!on_game] "检测到您从游戏开始才加入，已为您重置背包与数据！"
clear @a[tag=!on_game]

execute if score #public mem matches 0 as @a[tag=!on_game] at @s run function init:settings
execute if score #tools mem matches 1 as @a[tag=!on_game] at @s run function gaming:tools

tag @a[tag=!on_game] add on_game

# 夜视
execute if score #night_vision mem matches 1 run effect give @a night_vision 1000000 0 true
