scoreboard players set #game_on jk_tt_mem 2
execute unless score #mode jk_tt_mem matches 1.. run tp @a[tag=jk_tt_on_game] @p[tag=jk_tt_on_game,advancements={end/kill_dragon=true}]
execute if score #mode jk_tt_mem matches 1 run tp @a[tag=jk_tt_on_game] @p[tag=jk_tt_on_game,advancements={jk_tt:clock/2h=true}]

effect give @a resistance 120 9
effect give @a saturation 1 9
effect give @a levitation 3 4

scoreboard players operation #game_time jk_tt_s = #game_time jk_tt_mem
scoreboard players operation #game_time jk_tt_s %= #60 jk_tt_mem
scoreboard players operation #game_time jk_tt_m = #game_time jk_tt_mem
scoreboard players operation #game_time jk_tt_m /= #60 jk_tt_mem
scoreboard players operation #game_time jk_tt_m %= #60 jk_tt_mem
scoreboard players operation #game_time jk_tt_h = #game_time jk_tt_mem
scoreboard players operation #game_time jk_tt_h /= #60 jk_tt_mem
scoreboard players operation #game_time jk_tt_h /= #60 jk_tt_mem

execute unless score #lang jk_tt_mem matches 1 run tellraw @a [{"text":"\n恭喜大家，","color":"yellow"},{"text":"游戏成功了。\n","color":"gold"},"耗时： ",{"score":{"name":"#game_time","objective":"jk_tt_h"},"color":"gold"},{"text":" : ","color":"aqua"},{"score":{"name":"#game_time","objective":"jk_tt_m"},"color":"gold"},{"text":" : ","color":"aqua"},{"score":{"name":"#game_time","objective":"jk_tt_s"},"color":"gold"}]
execute unless score #lang jk_tt_mem matches 1 run title @a title {"text":"游戏成功","color":"gold"}

execute if score #lang jk_tt_mem matches 1 run tellraw @a [{"text":"\nCongratulations,","color":"yellow"},{"text":" game completed. \n","color":"gold"},"It costs:",{"score":{"name":"#game_time","objective":"jk_tt_h"},"color":"gold"},{"text":":","color":"aqua"},{"score":{"name":"#game_time","objective":"jk_tt_m"},"color":"gold"},{"text":":","color":"aqua"},{"score":{"name":"#game_time","objective":"jk_tt_s"},"color":"gold"}]
execute if score #lang jk_tt_mem matches 1 run title @a title {"text":"Game Completed","color":"gold"}

title @a times 10 80 10
title @a subtitle ""
execute unless score #mode jk_tt_mem matches 1.. run advancement grant @a[tag=jk_tt_on_game,gamemode=survival] only jk_tt:clock/win
execute unless score #mode jk_tt_mem matches 1.. run advancement grant @a[advancements={jk_tt:clock/learn=false}] only jk_tt:clock/winner
function jk_tt:play/playsound/global
scoreboard players set #author jk_tt_mem 0
schedule function jk_tt:play/author 8s replace