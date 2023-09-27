scoreboard players set #game_on jk_tt_mem 3
execute unless score #lang jk_tt_mem matches 1 run tellraw @a [{"text":"\n恭喜大家，","color":"yellow"},{"text":"游戏失败了。\n","color":"red"}]
execute unless score #lang jk_tt_mem matches 1 run title @a title {"text":"游戏失败","color":"red"}

execute if score #lang jk_tt_mem matches 1 run tellraw @a [{"text":"\nCongratulations,","color":"yellow"},{"text":" the game failed.\n","color":"red"}]
execute if score #lang jk_tt_mem matches 1 run title @a title {"text":"Game Failed","color":"red"}

scoreboard objectives setdisplay sidebar jk_tt_record
title @a subtitle ""
stopsound @a
playsound entity.ender_dragon.growl player @a 0 -1000000 0 72000 1
function jk_tt:play/playsound/global
execute unless score #lang jk_tt_mem matches 1 run tellraw @a [{"text":"管理员可以输入"},{"text":"/function #load","color":"yellow","underlined":true,"clickEvent":{"action":"suggest_command","value":"/function #load"}},{"text":"来重新游玩。\n"}]
execute if score #lang jk_tt_mem matches 1 run tellraw @a [{"text":"OPs can type "},{"text":"/function #load","color":"yellow","underlined":true,"clickEvent":{"action":"suggest_command","value":"/function #load"}},{"text":" to restart the game.\n"}]