scoreboard players set #game_on mem 2
tp @a[tag=on_game] @p[tag=on_game,advancements={end/kill_dragon=true}]
tellraw @a [{"text":"\n恭喜大家，","color":"yellow"},{"text":"游戏成功了。\n","color":"gold"}]
title @a title {"text":"游戏成功","color":"gold"}
title @a subtitle ""
advancement grant @a only gaming:clock/win
advancement grant @a[advancements={gaming:clock/learn=false}] only gaming:clock/winner
playsound music_disc.pigstep player @a 0 -1000000 0 72000 1
scoreboard players set #author mem 0
schedule function gaming:author 2s replace
