schedule clear timing:sec1
schedule clear timing:tick2

stopsound @a
playsound block.note_block.bell player @a

scoreboard players reset @a death
scoreboard players reset @a sneak
advancement revoke @a everything
tag @a remove on_game
xp set @a 0 points
xp set @a 0 levels
effect give @a saturation 1 5 true
effect give @a resistance 30 4

tellraw @a [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n================","color":"green"},{"text":" 时间陷阱 ","color":"yellow"},"================\n"]

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