playsound block.note_block.bell player @a
execute unless score #lang jk_tt_mem matches 1 run tellraw @a [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n================","color":"green"},{"text":" 时间陷阱 ","color":"yellow"},"================\n"]
execute unless score #lang jk_tt_mem matches 1 run tellraw @a ["关于作者：",{"text":"JK137\n","color":"aqua"}]

execute if score #lang jk_tt_mem matches 1 run tellraw @a [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n================","color":"green"},{"text":" TimeTrap ","color":"yellow"},"================\n"]
execute if score #lang jk_tt_mem matches 1 run tellraw @a ["About the author: ",{"text":"JK137\n","color":"aqua"}]

function jk_tt:author

execute unless score #lang jk_tt_mem matches 1 run tellraw @a [{"text":"\n[返回设置界面]","color":"blue","clickEvent":{"action":"run_command","value":"/function jk_tt:init/menu"}},"  ",{"text":"[游戏规则]","color":"yellow","clickEvent":{"action":"run_command","value":"/function jk_tt:init/help"}}]
execute if score #lang jk_tt_mem matches 1 run tellraw @a [{"text":"\n[Back to Settings]","color":"blue","clickEvent":{"action":"run_command","value":"/function jk_tt:init/menu"}},"  ",{"text":"[How to Play]","color":"yellow","clickEvent":{"action":"run_command","value":"/function jk_tt:init/help"}}]