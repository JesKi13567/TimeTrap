schedule clear jk_tt_timing:sec1
schedule clear jk_tt_timing:tick2

stopsound @a
playsound block.note_block.bell player @a
tag @a remove jk_tt_on_game
effect give @a saturation 3 5 true
effect give @a resistance 1000000 5
effect give @a mining_fatigue 1000000 5
#effect give @a strength 1000000 50

tellraw @a [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n================","color":"green"},{"text":" 时间陷阱 ","color":"yellow"},"================\n",{"text":"小提示：所有界面仅由管理员操作！","color":"gray"}]

function jk_tt_init:menu_set/set_tab
function jk_tt_init:menu_set/set_time
function jk_tt_init:menu_set/set_life
function jk_tt_init:menu_set/set_punish
function jk_tt_init:menu_set/set_difficulty
function jk_tt_init:menu_set/set_game
function jk_tt_init:menu_set/set_public

tellraw @a ["我是占位：",{"text":"[游戏规则]","color":"yellow","clickEvent":{"action":"run_command","value":"/function jk_tt_init:help"}},"  ",{"text":"[作者介绍]","color":"aqua","clickEvent":{"action":"run_command","value":"/function jk_tt_init:author"}},"  ",{"text":"[开始游戏]","color":"light_purple","clickEvent":{"action":"run_command","value":"/function jk_tt_gaming:start"}}]

# 载入设置
execute as @a at @s run function jk_tt_init:settings