execute if score #init_punish jk_tt_mem matches 1 run scoreboard players operation #temp jk_tt_timeadd = #team_red jk_tt_timelimit
execute if score #init_punish jk_tt_mem matches 1 run scoreboard players operation #temp jk_tt_timeadd /= #2 jk_tt_mem
execute if score #init_punish jk_tt_mem matches 3 if score #team_red jk_tt_timelimit matches 300.. run scoreboard players set #temp jk_tt_timeadd 300
execute if score #init_punish jk_tt_mem matches 3 if score #team_red jk_tt_timelimit matches ..299 run scoreboard players operation #temp jk_tt_timeadd = #team_red jk_tt_timelimit
execute if score #init_punish jk_tt_mem matches 4 if score #team_red jk_tt_timelimit matches 600.. run scoreboard players set #temp jk_tt_timeadd 600
execute if score #init_punish jk_tt_mem matches 4 if score #team_red jk_tt_timelimit matches ..599 run scoreboard players operation #temp jk_tt_timeadd = #team_red jk_tt_timelimit

execute if entity @p[tag=jk_tt_murder,team=jk_tt_blue] run scoreboard players operation #team_blue jk_tt_timeadd += #temp jk_tt_timeadd
execute if entity @p[tag=jk_tt_murder,team=jk_tt_blue] run tellraw @a ["",{"text":">> ","color":"gold"},{"selector":"@p[tag=jk_tt_murder]"}," 击杀 ",{"selector":"@s"},"，",{"text":"蓝队","color":"blue"},"时间 + ",{"score":{"name":"#temp","objective":"jk_tt_timeadd"},"color":"yellow"}]

execute if entity @p[tag=jk_tt_murder,team=jk_tt_green] run scoreboard players operation #team_green jk_tt_timeadd += #temp jk_tt_timeadd
execute if entity @p[tag=jk_tt_murder,team=jk_tt_green] run tellraw @a ["",{"text":">> ","color":"gold"},{"selector":"@p[tag=jk_tt_murder]"}," 击杀 ",{"selector":"@s"},"，",{"text":"绿队","color":"green"},"时间 + ",{"score":{"name":"#temp","objective":"jk_tt_timeadd"},"color":"yellow"}]

execute if entity @p[tag=jk_tt_murder,team=jk_tt_yellow] run scoreboard players operation #team_yellow jk_tt_timeadd += #temp jk_tt_timeadd
execute if entity @p[tag=jk_tt_murder,team=jk_tt_yellow] run tellraw @a ["",{"text":">> ","color":"gold"},{"selector":"@p[tag=jk_tt_murder]"}," 击杀 ",{"selector":"@s"},"，",{"text":"黄队","color":"yellow"},"时间 + ",{"score":{"name":"#temp","objective":"jk_tt_timeadd"},"color":"yellow"}]