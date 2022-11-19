# 本页面为 /reload 后第一个执行的页面
scoreboard objectives add mem dummy
execute unless score #game_on mem matches 0.. run function init:stat
execute if score #game_on mem matches 1 run schedule function init:delay 2t replace
execute if score #game_on mem matches 2.. run tellraw @a [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n这个世界玩过了，重新开一个存档吧！"},{"text":"强行再玩","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/function init:force_reload"}}]