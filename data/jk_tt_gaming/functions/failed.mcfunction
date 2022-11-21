scoreboard players set #game_on jk_tt_mem 3
tellraw @a [{"text":"\n恭喜大家，","color":"yellow"},{"text":"游戏失败了。\n","color":"red"}]
title @a title {"text":"游戏失败","color":"red"}
title @a subtitle ""
stopsound @a
playsound entity.ender_dragon.growl player @a 0 -1000000 0 72000 1
playsound music_disc.pigstep player @a 0 -1000000 0 72000 1.1
tellraw @a [{"text":"管理员可以输入"},{"text":"/reload","color":"yellow","underlined":true,"clickEvent":{"action":"suggest_command","value":"/reload"}},{"text":"重新游玩哦\nps:如果是非原版端请用/minecraft:reload\n"}]