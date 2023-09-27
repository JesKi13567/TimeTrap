execute if score #public jk_tt_mem matches 0 run function jk_tt:play/kill/add_time/solo
execute if score #public jk_tt_mem matches 2.. as @s[team=jk_tt_red] run function jk_tt:play/kill/add_time/red
execute if score #public jk_tt_mem matches 2.. as @s[team=jk_tt_blue] run function jk_tt:play/kill/add_time/blue
execute if score #public jk_tt_mem matches 2.. as @s[team=jk_tt_green] run function jk_tt:play/kill/add_time/green
execute if score #public jk_tt_mem matches 2.. as @s[team=jk_tt_yellow] run function jk_tt:play/kill/add_time/yellow

scoreboard players operation @p[tag=jk_tt_murder] jk_tt_timeadd += #temp jk_tt_timeadd
execute unless score #lang jk_tt_mem matches 1 run tellraw @a ["",{"text":">> ","color":"gold"},{"selector":"@p[tag=jk_tt_murder]"}," 击杀 ",{"selector":"@s"},"，时间 + ",{"score":{"name":"#temp","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #lang jk_tt_mem matches 1 run tellraw @a ["",{"text":">> ","color":"gold"},{"selector":"@p[tag=jk_tt_murder]"}," killed ",{"selector":"@s"},", time + ",{"score":{"name":"#temp","objective":"jk_tt_timeadd"},"color":"yellow"}]