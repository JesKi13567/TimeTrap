scoreboard players set @s jk_tt_death 0
scoreboard players remove #public jk_tt_deathlimit 1
execute if score #tab jk_tt_mem matches 2 run scoreboard players operation @a[tag=jk_tt_on_game] jk_tt_deathlimit = #public jk_tt_deathlimit

# 死亡惩罚
execute if score #init_punish jk_tt_mem matches 1 run scoreboard players operation #public jk_tt_timelimit /= #2 jk_tt_mem
execute if score #init_punish jk_tt_mem matches 3 run scoreboard players remove #public jk_tt_timelimit 300
execute if score #init_punish jk_tt_mem matches 4 run scoreboard players remove #public jk_tt_timelimit 600

tellraw @a [{"text":"※  都怪 ","color":"green"},{"selector":"@s"},"，所有玩家只剩 ",{"score":{"name":"#public","objective":"jk_tt_deathlimit"},"color":"red"}," 条生命，",{"score":{"name":"#public","objective":"jk_tt_timelimit"},"color":"yellow"}," 秒时间了！"]
execute if score #public jk_tt_deathlimit matches ..0 run gamemode spectator @a
execute if score #public jk_tt_deathlimit matches ..0 run tellraw @a [{"text":"※  所有玩家 用光了死亡次数！","color":"aqua"}]
