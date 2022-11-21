execute if score #tab jk_tt_mem matches 0 run summon marker ~ ~ ~ {Tags:["display1"],CustomName:'[{"text":"[无]","color":"green"}]'}
execute if score #tab jk_tt_mem matches 1 run summon marker ~ ~ ~ {Tags:["display2"],CustomName:'[{"text":"[生命值]","color":"green"}]'}
execute if score #tab jk_tt_mem matches 2 run summon marker ~ ~ ~ {Tags:["display3"],CustomName:'[{"text":"[剩余生命]","color":"green"}]'}
execute if score #tab jk_tt_mem matches 3 run summon marker ~ ~ ~ {Tags:["display4"],CustomName:'[{"text":"[剩余时间]","color":"green"}]'}

execute unless score #tab jk_tt_mem matches 0 run summon marker ~ ~ ~ {Tags:["display1"],CustomName:'[{"text":"[无]","color":"white"}]'}
execute unless score #tab jk_tt_mem matches 1 run summon marker ~ ~ ~ {Tags:["display2"],CustomName:'[{"text":"[生命值]","color":"white"}]'}
execute unless score #tab jk_tt_mem matches 2 run summon marker ~ ~ ~ {Tags:["display3"],CustomName:'[{"text":"[剩余生命]","color":"white"}]'}
execute unless score #tab jk_tt_mem matches 3 run summon marker ~ ~ ~ {Tags:["display4"],CustomName:'[{"text":"[剩余时间]","color":"white"}]'}

tellraw @a ["Tab界面：",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/function jk_tt_init:settings/set_tab0"}},"  ",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/function jk_tt_init:settings/set_tab1"}},"  ",{"selector":"@e[tag=display3]","clickEvent":{"action":"run_command","value":"/function jk_tt_init:settings/set_tab2"}},"  ",{"selector":"@e[tag=display4]","clickEvent":{"action":"run_command","value":"/function jk_tt_init:settings/set_tab3"}},"  ",{"text":"[提示]","color":"gray","hoverEvent":{"action":"show_text","value":"按 Tab键 可以查看玩家对应 Tab选项 中的分数。"}}]

kill @e[type=marker]