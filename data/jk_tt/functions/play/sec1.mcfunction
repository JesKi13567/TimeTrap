# 每 1 秒执行一次
# do it once in per sec
scoreboard players add #game_time jk_tt_mem 1
title @a[gamemode=survival] times 0 30 0

# 时间流逝
# time passing
function jk_tt:play/count/global

# 获胜
# win
execute unless score #mode jk_tt_mem matches 1.. if entity @p[tag=jk_tt_on_game,advancements={end/kill_dragon=true}] run function jk_tt:play/win
execute if score #mode jk_tt_mem matches 1 if entity @p[tag=jk_tt_on_game,advancements={jk_tt:clock/2h=true}] run function jk_tt:play/win

# 失败
# lose
execute store result score #jk_tt_on_game_all jk_tt_mem if entity @a[tag=jk_tt_on_game]
execute store result score #jk_tt_on_game_sp jk_tt_mem if entity @a[tag=jk_tt_on_game,gamemode=spectator]
execute if score #jk_tt_on_game_sp jk_tt_mem >= #jk_tt_on_game_all jk_tt_mem run function jk_tt:play/failed

# 新玩家中途加入（提示仅一次）
# new players joining when the game has started (tips for only once)
execute as @a[tag=!jk_tt_on_game,team=!jk_tt_public] run function jk_tt:play/started
execute if score #public jk_tt_mem matches 2.. as @a[tag=!jk_tt_on_game,scores={jk_tt_team_tri=1..}] run function jk_tt:play/team/join

# 夜视 & 急迫
# night vision & haste
execute if score #night_vision jk_tt_mem matches 1 run effect give @a night_vision 1000000 0 true
execute if score #haste jk_tt_mem matches 1 run effect give @a haste 1000000 1 true