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
effect give @a speed 10 1
effect give @a resistance 10 2
effect give @a saturation 1 9 true
execute unless score #lang jk_tt_mem matches 1 run tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n祝君好运。\n"
execute if score #lang jk_tt_mem matches 1 run tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nGood luck :)\n"

schedule function jk_tt:play/ticks/sec1 1t replace
schedule function jk_tt:play/ticks/tick2 2t replace

execute if score #tools jk_tt_mem matches 1 as @a[tag=jk_tt_on_game] at @s run function jk_tt:play/tools