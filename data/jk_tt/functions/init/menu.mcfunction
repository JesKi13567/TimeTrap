schedule clear jk_tt:play/ticks/sec1
schedule clear jk_tt:play/ticks/tick2

stopsound @a
playsound block.note_block.bell player @a
tag @a remove jk_tt_on_game
effect give @a saturation 3 5 true
effect give @a resistance 1000000 5
effect give @a mining_fatigue 1000000 5

execute unless score #lang jk_tt_mem matches 1 run tellraw @a [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n================","color":"green"},{"text":" 时间陷阱 ","color":"yellow"},"================\n",{"text":"小提示：所有界面仅由管理员操作！\n还有，本界面不应该在游戏开始时出现！","color":"gray"}]
execute if score #lang jk_tt_mem matches 1 run tellraw @a [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n================","color":"green"},{"text":" TimeTrap ","color":"yellow"},"================\n",{"text":"Tip: All the options can only be operated by OPs!\nAnd this page should not be appeared when started!","color":"gray"}]

function jk_tt:init/menu/version
function jk_tt:init/menu/tab
function jk_tt:init/menu/time
function jk_tt:init/menu/life
function jk_tt:init/menu/punish
function jk_tt:init/menu/difficulty
function jk_tt:init/menu/attributor
function jk_tt:init/menu/public
function jk_tt:init/menu/mode

execute unless score #lang jk_tt_mem matches 1 run tellraw @a ["我是占位：",{"text":"[如何游玩]","color":"yellow","clickEvent":{"action":"run_command","value":"/function jk_tt:init/help"}},"  ",{"text":"[开始游戏]","color":"light_purple","hoverEvent":{"action":"show_text","value":"开始游戏时所有玩家传送到你的位置。"},"clickEvent":{"action":"run_command","value":"/function jk_tt:play/start"}},"  ",{"text":"[lang]","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"切换为English","color":"green"}},"clickEvent":{"action":"run_command","value":"/function jk_tt:init/settings/lang"}}]
execute if score #lang jk_tt_mem matches 1 run tellraw @a ["Blankspace: ",{"text":"[How to Play]","color":"yellow","clickEvent":{"action":"run_command","value":"/function jk_tt:init/help"}},"  ",{"text":"[Start!]","color":"light_purple","hoverEvent":{"action":"show_text","value":"All the players will teleport to you."},"clickEvent":{"action":"run_command","value":"/function jk_tt:play/start"}},"  ",{"text":"[lang]","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"Switch to 中文","color":"green"}},"clickEvent":{"action":"run_command","value":"/function jk_tt:init/settings/lang"}}]

# 载入设置
# load the settings
execute as @a at @s run function jk_tt:init/settings