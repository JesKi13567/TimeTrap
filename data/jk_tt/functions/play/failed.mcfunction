scoreboard players set #game_on jk_tt_mem 3
tellraw @a [{"text":"\n恭喜大家，","color":"yellow"},{"text":"游戏失败了。\n","color":"red"}]
title @a title {"text":"游戏失败","color":"red"}
title @a subtitle ""
stopsound @a
playsound entity.ender_dragon.growl player @a 0 -1000000 0 72000 1
function jk_tt:play/playsound/global
tellraw @a [{"text":"管理员可以输入"},{"text":"/function #load","color":"yellow","underlined":true,"clickEvent":{"action":"suggest_command","value":"/function #load"}},{"text":"来重新游玩。\n"}]