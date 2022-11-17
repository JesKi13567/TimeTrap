scoreboard players set #game_on mem 1
title @a title "游戏开始！"
playsound entity.ender_dragon.growl player @a
tag @a add on_game
tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n祝君好运。\n"

gamemode survival @a
clear @a
effect clear @a

schedule function timing:sec1 8t replace
schedule function timing:tick1 10t replace

effect give @a speed 5
effect give @a saturation 3 5

execute if score #tools mem matches 1 as @a[tag=on_game] at @s run function gaming:tools