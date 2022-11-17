scoreboard players set @s death 0
scoreboard players remove @s death_limit 1

# 死亡惩罚
execute if score #init_punish mem matches 1 run scoreboard players operation @s time_limit /= #2 mem
execute if score #init_punish mem matches 3 run scoreboard players remove @s time_limit 300
execute if score #init_punish mem matches 4 run scoreboard players remove @s time_limit 600

tellraw @a [{"text":"※  ","color":"green"},{"selector":"@s"}," 还剩 ",{"score":{"name":"@s","objective":"death_limit"},"color":"red"}," 条生命！"]
gamemode spectator @s[scores={death_limit=..0}]
execute if entity @s[scores={death_limit=..0}] run tellraw @a [{"text":"※  ","color":"green"},{"selector":"@s"},{"text":" 用尽了死亡次数！","color":"red"},{"text":"等待剩余的玩家获胜。。","color":"aqua"}]
