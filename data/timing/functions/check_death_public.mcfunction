scoreboard players set @s death 0
scoreboard players remove #public death_limit 1
scoreboard players operation @a[tag=on_game] death_limit = #public death_limit

# 死亡惩罚
execute if score #init_punish mem matches 1 run scoreboard players operation #public time_limit /= #2 mem
execute if score #init_punish mem matches 3 run scoreboard players remove #public time_limit 300
execute if score #init_punish mem matches 4 run scoreboard players remove #public time_limit 600

tellraw @a [{"text":"※  所有玩家 还剩 ","color":"green"},{"score":{"name":"#public","objective":"death_limit"},"color":"red"}," 条生命！"]
execute if score #public death_limit matches ..0 run gamemode spectator @a
execute if score #public death_limit matches ..0 run tellraw @a [{"text":"※  所有玩家 用光了死亡次数！","color":"aqua"}]
