execute if score #keep_inv mem matches 0 run summon marker ~ ~ ~ {Tags:["display1"],CustomName:'[{"text":"[死亡不掉落]","color":"white"}]'}
execute if score #keep_inv mem matches 1 run summon marker ~ ~ ~ {Tags:["display1"],CustomName:'[{"text":"[死亡不掉落]","color":"green"}]'}

execute if score #night_vision mem matches 0 run summon marker ~ ~ ~ {Tags:["display2"],CustomName:'[{"text":"[永久夜视]","color":"white"}]'}
execute if score #night_vision mem matches 1 run summon marker ~ ~ ~ {Tags:["display2"],CustomName:'[{"text":"[永久夜视]","color":"green"}]'}

execute if score #tools mem matches 0 run summon marker ~ ~ ~ {Tags:["display3"],CustomName:'[{"text":"[初始工具]","color":"white"}]'}
execute if score #tools mem matches 1 run summon marker ~ ~ ~ {Tags:["display3"],CustomName:'[{"text":"[初始工具]","color":"green"}]'}

tellraw @a ["玩家属性：",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/function init:settings/set_inv"}},"  ",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/function init:settings/set_vision"}},"  ",{"selector":"@e[tag=display3]","clickEvent":{"action":"run_command","value":"/function init:settings/set_tools"}}]

kill @e[type=marker]