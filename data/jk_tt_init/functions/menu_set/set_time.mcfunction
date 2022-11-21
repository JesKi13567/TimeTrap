execute if score #init_time jk_tt_mem matches 1 run summon marker ~ ~ ~ {Tags:["display1"],CustomName:'[{"text":"[5分钟]","color":"green"}]'}
execute if score #init_time jk_tt_mem matches 2 run summon marker ~ ~ ~ {Tags:["display2"],CustomName:'[{"text":"[10分钟]","color":"green"}]'}
execute if score #init_time jk_tt_mem matches 3 run summon marker ~ ~ ~ {Tags:["display3"],CustomName:'[{"text":"[20分钟]","color":"green"}]'}

execute unless score #init_time jk_tt_mem matches 1 run summon marker ~ ~ ~ {Tags:["display1"],CustomName:'[{"text":"[5分钟]","color":"white"}]'}
execute unless score #init_time jk_tt_mem matches 2 run summon marker ~ ~ ~ {Tags:["display2"],CustomName:'[{"text":"[10分钟]","color":"white"}]'}
execute unless score #init_time jk_tt_mem matches 3 run summon marker ~ ~ ~ {Tags:["display3"],CustomName:'[{"text":"[20分钟]","color":"white"}]'}

tellraw @a ["初始时间：",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/function jk_tt_init:settings/set_time1"}},"  ",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/function jk_tt_init:settings/set_time2"}},"  ",{"selector":"@e[tag=display3]","clickEvent":{"action":"run_command","value":"/function jk_tt_init:settings/set_time3"}}]

kill @e[type=marker]