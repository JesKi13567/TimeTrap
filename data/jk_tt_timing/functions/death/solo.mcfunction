scoreboard players set @s jk_tt_death 0
scoreboard players remove @s jk_tt_death_limit 1

# 死亡惩罚
execute if score #init_punish jk_tt_mem matches 1 run scoreboard players operation @s jk_tt_time_limit /= #2 jk_tt_mem
execute if score #init_punish jk_tt_mem matches 3 run scoreboard players remove @s jk_tt_time_limit 300
execute if score #init_punish jk_tt_mem matches 4 run scoreboard players remove @s jk_tt_time_limit 600

tellraw @a [{"text":"※  ","color":"green"},{"selector":"@s"}," 只剩 ",{"score":{"name":"@s","objective":"jk_tt_death_limit"},"color":"red"}," 条生命，",{"score":{"name":"@s","objective":"jk_tt_time_limit"},"color":"yellow"}," 秒时间了！"]
gamemode spectator @s[scores={jk_tt_death_limit=..0}]
execute if entity @s[scores={jk_tt_death_limit=..0}] run tellraw @a [{"text":"※  ","color":"green"},{"selector":"@s"},{"text":" 用光了死亡次数！","color":"red"},{"text":"等待剩余的玩家获胜。。","color":"aqua"}]
