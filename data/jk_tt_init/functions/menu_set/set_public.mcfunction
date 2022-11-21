execute if score #public jk_tt_mem matches 0 run summon marker ~ ~ ~ {Tags:["display0"],CustomName:'[{"text":"[对抗模式]","color":"green"}]'}
execute unless score #public jk_tt_mem matches 0 run summon marker ~ ~ ~ {Tags:["display0"],CustomName:'[{"text":"[对抗模式]","color":"white"}]'}

execute if score #public jk_tt_mem matches 1.. run summon marker ~ ~ ~ {Tags:["display1"],CustomName:'[{"text":"[合作模式]","color":"green"}]'}
execute if score #public jk_tt_mem matches 0 run summon marker ~ ~ ~ {Tags:["display1"],CustomName:'[{"text":"[合作模式]","color":"white"}]'}

execute if score #pvp jk_tt_mem matches 0 run summon marker ~ ~ ~ {Tags:["display2"],CustomName:'[{"text":"[队内pvp]","color":"white"}]'}
execute if score #pvp jk_tt_mem matches 1 run summon marker ~ ~ ~ {Tags:["display2"],CustomName:'[{"text":"[队内pvp]","color":"green"}]'}


tellraw @a ["多人模式：",{"selector":"@e[tag=display0]","clickEvent":{"action":"run_command","value":"/function jk_tt_init:settings/set_public0"}},"  ",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/function jk_tt_init:settings/set_public1"}},"  ",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/function jk_tt_init:settings/teams/set_pvp"}},"  ",{"text":"[提示]","color":"gray","hoverEvent":{"action":"show_text","value":"对抗模式：各位玩家有独立的死亡数和时间。 合作模式：分队伍共有死亡数和时间。 多人游戏中设置为合作模式，可分配队伍！"}}]

kill @e[type=marker]

execute unless score #public jk_tt_mem matches 1 run summon marker ~ ~ ~ {Tags:["display1"],CustomName:'[{"text":"[公共]","color":"white"}]'}
execute unless score #public jk_tt_mem matches 2 run summon marker ~ ~ ~ {Tags:["display2"],CustomName:'[{"text":"[2支]","color":"white"}]'}
execute unless score #public jk_tt_mem matches 3 run summon marker ~ ~ ~ {Tags:["display3"],CustomName:'[{"text":"[3支]","color":"white"}]'}
execute unless score #public jk_tt_mem matches 4 run summon marker ~ ~ ~ {Tags:["display4"],CustomName:'[{"text":"[4支]","color":"white"}]'}

execute if score #public jk_tt_mem matches 1 run summon marker ~ ~ ~ {Tags:["display1"],CustomName:'[{"text":"[公共]","color":"green"}]'}
execute if score #public jk_tt_mem matches 2 run summon marker ~ ~ ~ {Tags:["display2"],CustomName:'[{"text":"[2支]","color":"green"}]'}
execute if score #public jk_tt_mem matches 3 run summon marker ~ ~ ~ {Tags:["display3"],CustomName:'[{"text":"[3支]","color":"green"}]'}
execute if score #public jk_tt_mem matches 4 run summon marker ~ ~ ~ {Tags:["display4"],CustomName:'[{"text":"[4支]","color":"green"}]'}
execute if score #public jk_tt_mem matches 2..4 run summon marker ~ ~ ~ {Tags:["display5"],CustomName:'[{"text":"[分配队伍]","color":"red"}]'}

execute store result score #team_all jk_tt_mem if entity @a

execute if score #team_all jk_tt_mem matches 2.. if score #public jk_tt_mem matches 1.. run tellraw @a ["",{"text":"队伍数量"},"：",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/function jk_tt_init:settings/set_public1"}},"  ",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/function jk_tt_init:settings/set_public2"}},"  ",{"selector":"@e[tag=display3]","clickEvent":{"action":"run_command","value":"/function jk_tt_init:settings/set_public3"}},"  ",{"selector":"@e[tag=display4]","clickEvent":{"action":"run_command","value":"/function jk_tt_init:settings/set_public4"}},"  ",{"selector":"@e[tag=display5]","clickEvent":{"action":"run_command","value":"/function jk_tt_init:settings/teams/roll_teams"}}]

kill @e[type=marker]