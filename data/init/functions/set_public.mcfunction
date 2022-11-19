execute if score #public mem matches 0 run summon marker ~ ~ ~ {Tags:["display1"],CustomName:'[{"text":"[对抗模式]","color":"green"}]'}
execute if score #public mem matches 1 run summon marker ~ ~ ~ {Tags:["display2"],CustomName:'[{"text":"[合作模式]","color":"green"}]'}

execute unless score #public mem matches 0 run summon marker ~ ~ ~ {Tags:["display1"],CustomName:'[{"text":"[对抗模式]","color":"white"}]'}
execute unless score #public mem matches 1 run summon marker ~ ~ ~ {Tags:["display2"],CustomName:'[{"text":"[合作模式]","color":"white"}]'}

tellraw @a ["",{"text":"多人模式","underlined":true,"hoverEvent": {"action":"show_text","contents":"对抗模式：各位玩家有独立的死亡数和时间， 合作模式：共有死亡数和时间"}},"：",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/function init:settings/set_public0"}},"  ",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/function init:settings/set_public1"}}]

kill @e[type=marker]