execute if score #init_difficulty mem matches 1 run summon marker ~ ~ ~ {Tags:["display1"],CustomName:'[{"text":"[简单]","color":"green"}]'}
execute if score #init_difficulty mem matches 2 run summon marker ~ ~ ~ {Tags:["display2"],CustomName:'[{"text":"[普通]","color":"green"}]'}
execute if score #init_difficulty mem matches 3 run summon marker ~ ~ ~ {Tags:["display3"],CustomName:'[{"text":"[困难]","color":"green"}]'}

execute unless score #init_difficulty mem matches 1 run summon marker ~ ~ ~ {Tags:["display1"],CustomName:'[{"text":"[简单]","color":"white"}]'}
execute unless score #init_difficulty mem matches 2 run summon marker ~ ~ ~ {Tags:["display2"],CustomName:'[{"text":"[普通]","color":"white"}]'}
execute unless score #init_difficulty mem matches 3 run summon marker ~ ~ ~ {Tags:["display3"],CustomName:'[{"text":"[困难]","color":"white"}]'}

tellraw @a ["",{"text":"游戏难度","underlined":true,"hoverEvent": {"action":"show_text","contents":"难度越高，矿物所加时间越少"}},"：",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/function init:settings/set_difficulty1"}},"  ",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/function init:settings/set_difficulty2"}},"  ",{"selector":"@e[tag=display3]","clickEvent":{"action":"run_command","value":"/function init:settings/set_difficulty3"}}]

kill @e[type=marker]