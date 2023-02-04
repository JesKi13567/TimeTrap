scoreboard players set #game_on jk_tt_mem 2
tp @a[tag=jk_tt_on_game] @p[tag=jk_tt_on_game,advancements={end/kill_dragon=true}]

scoreboard players operation #game_time jk_tt_s = #game_time jk_tt_mem
scoreboard players operation #game_time jk_tt_s %= #60 jk_tt_mem
scoreboard players operation #game_time jk_tt_m = #game_time jk_tt_mem
scoreboard players operation #game_time jk_tt_m /= #60 jk_tt_mem
scoreboard players operation #game_time jk_tt_m %= #60 jk_tt_mem
scoreboard players operation #game_time jk_tt_h = #game_time jk_tt_mem
scoreboard players operation #game_time jk_tt_h /= #60 jk_tt_mem
scoreboard players operation #game_time jk_tt_h /= #60 jk_tt_mem
tellraw @a [{"text":"\n恭喜大家，","color":"yellow"},{"text":"游戏成功了。\n","color":"gold"},"耗时：",{"score":{"name":"#game_time","objective":"jk_tt_h"},"color":"gold"},{"text":":","color":"aqua"},{"score":{"name":"#game_time","objective":"jk_tt_m"},"color":"gold"},{"text":":","color":"aqua"},{"score":{"name":"#game_time","objective":"jk_tt_s"},"color":"gold"}]

title @a title {"text":"游戏成功","color":"gold"}
title @a subtitle ""
advancement grant @a only jk_tt:clock/win
advancement grant @a[advancements={jk_tt:clock/learn=false}] only jk_tt:clock/winner
function jk_tt:gaming/playsound/global
scoreboard players set #author jk_tt_mem 0
schedule function jk_tt:gaming/author 8s replace