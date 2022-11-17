execute if score #init_life mem matches 1 run summon marker ~ ~ ~ {Tags:["display1"],CustomName:'[{"text":"[1条命]","color":"green"}]'}
execute if score #init_life mem matches 2 run summon marker ~ ~ ~ {Tags:["display2"],CustomName:'[{"text":"[3条命]","color":"green"}]'}
execute if score #init_life mem matches 3 run summon marker ~ ~ ~ {Tags:["display3"],CustomName:'[{"text":"[5条命]","color":"green"}]'}
execute if score #init_life mem matches 4 run summon marker ~ ~ ~ {Tags:["display4"],CustomName:'[{"text":"[∞条命]","color":"green"}]'}

execute unless score #init_life mem matches 1 run summon marker ~ ~ ~ {Tags:["display1"],CustomName:'[{"text":"[1条命]","color":"white"}]'}
execute unless score #init_life mem matches 2 run summon marker ~ ~ ~ {Tags:["display2"],CustomName:'[{"text":"[3条命]","color":"white"}]'}
execute unless score #init_life mem matches 3 run summon marker ~ ~ ~ {Tags:["display3"],CustomName:'[{"text":"[5条命]","color":"white"}]'}
execute unless score #init_life mem matches 4 run summon marker ~ ~ ~ {Tags:["display4"],CustomName:'[{"text":"[∞条命]","color":"white"}]'}

tellraw @a ["初始生命：",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/function init:settings/set_life1"}},"  ",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/function init:settings/set_life2"}},"  ",{"selector":"@e[tag=display3]","clickEvent":{"action":"run_command","value":"/function init:settings/set_life3"}},"  ",{"selector":"@e[tag=display4]","clickEvent":{"action":"run_command","value":"/function init:settings/set_life4"}}]

kill @e[type=marker]