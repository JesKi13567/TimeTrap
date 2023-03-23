scoreboard players set @s jk_tt_death 0
scoreboard players remove #team_red jk_tt_deathlimit 1
execute if score #tab jk_tt_mem matches 2 run scoreboard players operation @a[team=jk_tt_red,tag=jk_tt_on_game] jk_tt_deathlimit = #team_red jk_tt_deathlimit

# 死亡惩罚
execute unless score #init_punish jk_tt_mem matches 2 as @s[tag=jk_tt_victim] run function jk_tt:play/kill/add_time/global
execute if score #init_punish jk_tt_mem matches 1 run scoreboard players operation #team_red jk_tt_timelimit /= #2 jk_tt_mem
execute if score #init_punish jk_tt_mem matches 3 run scoreboard players remove #team_red jk_tt_timelimit 300
execute if score #init_punish jk_tt_mem matches 4 run scoreboard players remove #team_red jk_tt_timelimit 600

tellraw @a [{"text":"※  都怪 ","color":"aqua"},{"selector":"@s"},"，",{"text":"红队 ","color":"red","bold":true},"只剩 ",{"score":{"name":"#team_red","objective":"jk_tt_deathlimit"},"color":"red"}," 条生命，",{"score":{"name":"#team_red","objective":"jk_tt_timelimit"},"color":"red"}," 秒时间了！"]

execute if score #team_red jk_tt_deathlimit matches ..0 run gamemode spectator @a[team=jk_tt_red]
execute if score #team_red jk_tt_deathlimit matches ..0 run tellraw @a [{"text":"※  ","color":"aqua"},{"text":"红队 ","color":"red","bold":true},{"text":"用光了死亡次数！"}]