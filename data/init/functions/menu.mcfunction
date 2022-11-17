schedule clear timing:sec1
schedule clear timing:tick1

stopsound @a
playsound block.note_block.bell player @a

scoreboard players reset @a death
scoreboard players reset @a sneak
advancement revoke @a everything
tag @a remove on_game
scoreboard players set @a leave_game 0

tellraw @a [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n================","color":"green"},{"text":" 时间陷阱 ","color":"light_purple"},"================\n"]

function init:set_tab
function init:set_time
function init:set_life
function init:set_punish
function init:set_difficulty
function init:set_game
function init:set_public

tellraw @a ["我是占位：",{"text":"[游戏规则]","color":"yellow","clickEvent":{"action":"run_command","value":"/function init:help"}},"  ",{"text":"[作者介绍]","color":"aqua","clickEvent":{"action":"run_command","value":"/function init:author"}},"  ",{"text":"[开始游戏]","color":"light_purple","clickEvent":{"action":"run_command","value":"/function gaming:start"}}]

# 载入设置

execute as @a at @s run function init:settings

execute if score #game_on mem matches 2.. run tellraw @a [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n这个世界玩过了，重新开一个存档吧！"},{"text":"强行再玩","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/function init:force_reload"}}]
