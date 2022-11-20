scoreboard players set #game_on mem 1
title @a title "游戏开始！"
playsound entity.ender_dragon.growl player @a
tag @a add on_game
gamemode survival @a
clear @a
effect clear @a
tp @a @s
effect give @a speed 5
tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n祝君好运。\n"

schedule function timing:sec1 8t replace
schedule function timing:tick2 10t replace

execute if score #tools mem matches 1 as @a[tag=on_game] at @s run function gaming:tools