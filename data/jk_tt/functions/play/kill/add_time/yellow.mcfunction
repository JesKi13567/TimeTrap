execute if score #init_punish jk_tt_mem matches 1 run scoreboard players operation #temp jk_tt_timeadd = #team_yellow jk_tt_timelimit
execute if score #init_punish jk_tt_mem matches 1 run scoreboard players operation #temp jk_tt_timeadd /= #2 jk_tt_mem
execute if score #init_punish jk_tt_mem matches 3 if score #team_yellow jk_tt_timelimit matches 300.. run scoreboard players set #temp jk_tt_timeadd 300
execute if score #init_punish jk_tt_mem matches 3 if score #team_yellow jk_tt_timelimit matches ..299 run scoreboard players operation #temp jk_tt_timeadd = #team_yellow jk_tt_timelimit
execute if score #init_punish jk_tt_mem matches 4 if score #team_yellow jk_tt_timelimit matches 600.. run scoreboard players set #temp jk_tt_timeadd 600
execute if score #init_punish jk_tt_mem matches 4 if score #team_yellow jk_tt_timelimit matches ..599 run scoreboard players operation #temp jk_tt_timeadd = #team_yellow jk_tt_timelimit

execute if entity @p[tag=jk_tt_murder,team=jk_tt_red] run scoreboard players operation #team_red jk_tt_timeadd += #temp jk_tt_timeadd
execute unless score #lang jk_tt_mem matches 1 if entity @p[tag=jk_tt_murder,team=jk_tt_red] run tellraw @a ["",{"text":">> ","color":"gold"},{"selector":"@p[tag=jk_tt_murder]"}," 击杀 ",{"selector":"@s"},"，",{"text":"红队","color":"red"},"时间 + ",{"score":{"name":"#temp","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #lang jk_tt_mem matches 1 if entity @p[tag=jk_tt_murder,team=jk_tt_red] run tellraw @a ["",{"text":">> ","color":"gold"},{"selector":"@p[tag=jk_tt_murder]"}," killed ",{"selector":"@s"},",",{"text":" Team Red","color":"red"},"'s time + ",{"score":{"name":"#temp","objective":"jk_tt_timeadd"},"color":"yellow"}]

execute if entity @p[tag=jk_tt_murder,team=jk_tt_blue] run scoreboard players operation #team_blue jk_tt_timeadd += #temp jk_tt_timeadd
execute unless score #lang jk_tt_mem matches 1 if entity @p[tag=jk_tt_murder,team=jk_tt_blue] run tellraw @a ["",{"text":">> ","color":"gold"},{"selector":"@p[tag=jk_tt_murder]"}," 击杀 ",{"selector":"@s"},"，",{"text":"蓝队","color":"blue"},"时间 + ",{"score":{"name":"#temp","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #lang jk_tt_mem matches 1 if entity @p[tag=jk_tt_murder,team=jk_tt_blue] run tellraw @a ["",{"text":">> ","color":"gold"},{"selector":"@p[tag=jk_tt_murder]"}," killed ",{"selector":"@s"},",",{"text":" Team Blue","color":"blue"},"'s time + ",{"score":{"name":"#temp","objective":"jk_tt_timeadd"},"color":"yellow"}]

execute if entity @p[tag=jk_tt_murder,team=jk_tt_green] run scoreboard players operation #team_green jk_tt_timeadd += #temp jk_tt_timeadd
execute unless score #lang jk_tt_mem matches 1 if entity @p[tag=jk_tt_murder,team=jk_tt_green] run tellraw @a ["",{"text":">> ","color":"gold"},{"selector":"@p[tag=jk_tt_murder]"}," 击杀 ",{"selector":"@s"},"，",{"text":"绿队","color":"green"},"时间 + ",{"score":{"name":"#temp","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #lang jk_tt_mem matches 1 if entity @p[tag=jk_tt_murder,team=jk_tt_green] run tellraw @a ["",{"text":">> ","color":"gold"},{"selector":"@p[tag=jk_tt_murder]"}," killed ",{"selector":"@s"},",",{"text":" Team Green","color":"green"},"'s time + ",{"score":{"name":"#temp","objective":"jk_tt_timeadd"},"color":"yellow"}]