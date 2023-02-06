# 每 1 秒执行一次
scoreboard players add #game_time jk_tt_mem 1
title @a times 0 30 0
# 检测死亡
execute if score #public jk_tt_mem matches 0 as @a[tag=jk_tt_on_game,scores={jk_tt_death=1..}] at @s run function jk_tt:timing/death/solo
execute if score #public jk_tt_mem matches 1 as @a[tag=jk_tt_on_game,scores={jk_tt_death=1..}] at @s run function jk_tt:timing/death/public

execute if score #public jk_tt_mem matches 2..4 as @a[team=jk_tt_red,tag=jk_tt_on_game,scores={jk_tt_death=1..}] at @s run function jk_tt:timing/death/red
execute if score #public jk_tt_mem matches 2..4 as @a[team=jk_tt_blue,tag=jk_tt_on_game,scores={jk_tt_death=1..}] at @s run function jk_tt:timing/death/blue
execute if score #public jk_tt_mem matches 3..4 as @a[team=jk_tt_green,tag=jk_tt_on_game,scores={jk_tt_death=1..}] at @s run function jk_tt:timing/death/green
execute if score #public jk_tt_mem matches 4 as @a[team=jk_tt_yellow,tag=jk_tt_on_game,scores={jk_tt_death=1..}] at @s run function jk_tt:timing/death/yellow

# 时间流逝
execute if score #public jk_tt_mem matches 0 as @a[tag=jk_tt_on_game,gamemode=!spectator] at @s run function jk_tt:timing/count/solo
execute if score #public jk_tt_mem matches 1 run function jk_tt:timing/count/public

execute if entity @a[gamemode=!spectator,team=jk_tt_red] if score #public jk_tt_mem matches 2..4 run function jk_tt:timing/count/red
execute if entity @a[gamemode=!spectator,team=jk_tt_blue] if score #public jk_tt_mem matches 2..4 run function jk_tt:timing/count/blue
execute if entity @a[gamemode=!spectator,team=jk_tt_green] if score #public jk_tt_mem matches 3..4 run function jk_tt:timing/count/green
execute if entity @a[gamemode=!spectator,team=jk_tt_yellow] if score #public jk_tt_mem matches 4 run function jk_tt:timing/count/yellow

# 获胜
execute if entity @p[tag=jk_tt_on_game,advancements={end/kill_dragon=true}] run function jk_tt:gaming/win

# 失败
execute store result score #jk_tt_on_game_all jk_tt_mem if entity @a[tag=jk_tt_on_game]
execute store result score #jk_tt_on_game_sp jk_tt_mem if entity @a[tag=jk_tt_on_game,gamemode=spectator]
execute if score #jk_tt_on_game_sp jk_tt_mem >= #jk_tt_on_game_all jk_tt_mem run function jk_tt:gaming/failed

# 多人游戏中途加入
tellraw @a[tag=!jk_tt_on_game] ["",{"text":"【时间陷阱】","color":"green"},"检测到您从游戏开始才加入，已为您重置背包与数据！"]
clear @a[tag=!jk_tt_on_game]
execute if score #tools jk_tt_mem matches 1 as @a[tag=!jk_tt_on_game] at @s run function jk_tt:gaming/tools

execute if score #public jk_tt_mem matches 0 as @a[tag=!jk_tt_on_game] at @s run function jk_tt:init/settings/teams/set/solo
execute if score #public jk_tt_mem matches 0..1 run team join jk_tt_public @a[team=!jk_tt_public]
execute if score #public jk_tt_mem matches 0..1 run tag @a[team=jk_tt_public,tag=!jk_tt_on_game] add jk_tt_on_game

execute if score #public jk_tt_mem matches 2.. run function jk_tt:timing/gaming/player_team

# 夜视
execute if score #night_vision jk_tt_mem matches 1 run effect give @a night_vision 1000000 0 true