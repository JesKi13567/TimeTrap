schedule clear jk_tt:timing/sec1
schedule clear jk_tt:timing/tick2

stopsound @a
playsound block.note_block.bell player @a
tag @a remove jk_tt_on_game
effect give @a saturation 3 5 true
effect give @a resistance 1000000 5
effect give @a mining_fatigue 1000000 5

tellraw @a [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n================","color":"green"},{"text":" 时间陷阱 ","color":"yellow"},"================\n",{"text":"小提示：所有界面仅由管理员操作！","color":"gray"}]

function jk_tt:init/menu/version
function jk_tt:init/menu/tab
function jk_tt:init/menu/time
function jk_tt:init/menu/life
function jk_tt:init/menu/punish
function jk_tt:init/menu/difficulty
function jk_tt:init/menu/game
function jk_tt:init/menu/public

tellraw @a ["我是占位：",{"text":"[游戏规则]","color":"yellow","clickEvent":{"action":"run_command","value":"/function jk_tt:init/help"}},"  ",{"text":"[开始游戏]","color":"light_purple","hoverEvent":{"action":"show_text","value":"开始游戏时所有玩家传送到你的位置。"},"clickEvent":{"action":"run_command","value":"/function jk_tt:gaming/start"}},"    ",{"text":"[点我卸载]","color":"red","hoverEvent":{"action":"show_text","value":"即卸载本数据包--时间陷阱"},"clickEvent":{"action":"run_command","value":"/function jk_tt:init/unload"}}]

# 载入设置
execute as @a at @s run function jk_tt:init/settings