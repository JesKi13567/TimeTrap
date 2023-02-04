scoreboard players set #game_on jk_tt_mem 1
title @a title "游戏开始！"
playsound entity.ender_dragon.growl player @a
tag @a add jk_tt_on_game
xp set @a 0 points
xp set @a 0 levels
scoreboard players reset @a jk_tt_death
scoreboard players reset @a jk_tt_sneak
scoreboard players reset #game_time
advancement revoke @a everything
gamemode survival @a
clear @a
effect clear @a
tp @a @s
time set day
effect give @a speed 5
tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n祝君好运。\n"

schedule function jk_tt:timing/sec1 1t replace
schedule function jk_tt:timing/tick2 2t replace

execute if score #tools jk_tt_mem matches 1 as @a[tag=jk_tt_on_game] at @s run function jk_tt:gaming/tools