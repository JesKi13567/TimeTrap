execute if score #init_punish jk_tt_mem matches 1 run summon marker ~ ~ ~ {Tags:["display1"],CustomName:'[{"text":"[时间减半]","color":"green"}]'}
execute if score #init_punish jk_tt_mem matches 2 run summon marker ~ ~ ~ {Tags:["display2"],CustomName:'[{"text":"[无惩罚]","color":"green"}]'}
execute if score #init_punish jk_tt_mem matches 3 run summon marker ~ ~ ~ {Tags:["display3"],CustomName:'[{"text":"[减5分钟]","color":"green"}]'}
execute if score #init_punish jk_tt_mem matches 4 run summon marker ~ ~ ~ {Tags:["display4"],CustomName:'[{"text":"[减10分钟]","color":"green"}]'}

execute unless score #init_punish jk_tt_mem matches 1 run summon marker ~ ~ ~ {Tags:["display1"],CustomName:'[{"text":"[时间减半]","color":"white"}]'}
execute unless score #init_punish jk_tt_mem matches 2 run summon marker ~ ~ ~ {Tags:["display2"],CustomName:'[{"text":"[无惩罚]","color":"white"}]'}
execute unless score #init_punish jk_tt_mem matches 3 run summon marker ~ ~ ~ {Tags:["display3"],CustomName:'[{"text":"[减5分钟]","color":"white"}]'}
execute unless score #init_punish jk_tt_mem matches 4 run summon marker ~ ~ ~ {Tags:["display4"],CustomName:'[{"text":"[减10分钟]","color":"white"}]'}

tellraw @a ["死亡惩罚：",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/function jk_tt_init:settings/set_punish1"}},"  ",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/function jk_tt_init:settings/set_punish2"}},"  ",{"selector":"@e[tag=display3]","clickEvent":{"action":"run_command","value":"/function jk_tt_init:settings/set_punish3"}},"  ",{"selector":"@e[tag=display4]","clickEvent":{"action":"run_command","value":"/function jk_tt_init:settings/set_punish4"}}]

kill @e[type=marker]