# 本页面为 /reload 后第一个执行的页面
scoreboard objectives add jk_tt_mem dummy
execute unless score #game_on jk_tt_mem matches 0.. run function jk_tt:init/stat
execute if score #game_on jk_tt_mem matches 1 run schedule function jk_tt:init/delay 2t replace
execute if score #game_on jk_tt_mem matches 2.. run tellraw @a [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n这个世界玩过了，重新开一个存档吧！"},{"text":"强行再玩\n\n","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/function jk_tt:init/force_reload"}},{"text":"卸载本数据包（删除计分板等）","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/function jk_tt:init/unload"}}]