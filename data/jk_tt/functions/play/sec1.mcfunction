# 每 1 秒执行一次
# do it once in per sec
scoreboard players add #game_time jk_tt_mem 1
title @a[gamemode=survival] times 0 30 0

# 时间流逝
# time passing
function jk_tt:play/count/global

# 获胜
# win
execute if entity @p[tag=jk_tt_on_game,advancements={end/kill_dragon=true}] run function jk_tt:play/win

# 失败
# lose
execute store result score #jk_tt_on_game_all jk_tt_mem if entity @a[tag=jk_tt_on_game]
execute store result score #jk_tt_on_game_sp jk_tt_mem if entity @a[tag=jk_tt_on_game,gamemode=spectator]
execute if score #jk_tt_on_game_sp jk_tt_mem >= #jk_tt_on_game_all jk_tt_mem run function jk_tt:play/failed

# 多人游戏中途加入
# join when the multiplayer-mode starts
tellraw @a[tag=!jk_tt_on_game] ["",{"text":"【时间陷阱】","color":"green"},"检测到您从游戏开始才加入，已为您重置背包与数据！"]
clear @a[tag=!jk_tt_on_game]
effect clear @a[tag=!jk_tt_on_game]
execute if score #tools jk_tt_mem matches 1 as @a[tag=!jk_tt_on_game] at @s run function jk_tt:play/tools
execute if score #public jk_tt_mem matches 0 as @a[tag=!jk_tt_on_game] at @s run function jk_tt:init/settings/teams/set/solo
execute if score #public jk_tt_mem matches 0..1 run team join jk_tt_public @a[team=!jk_tt_public]
execute if score #public jk_tt_mem matches 0..1 run tag @a[team=jk_tt_public,tag=!jk_tt_on_game] add jk_tt_on_game
execute if score #public jk_tt_mem matches 2.. run function jk_tt:play/team/choose

# 夜视
# night vision
execute if score #night_vision jk_tt_mem matches 1 run effect give @a night_vision 1000000 0 true