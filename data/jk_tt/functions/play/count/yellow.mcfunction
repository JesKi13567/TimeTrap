# 每 1 秒执行一次
# 计算时间

#   jk_tt_timelimit     jk_tt_s    jk_tt_m   jk_tt_h 
#    当前时间               秒          分        时

scoreboard players remove #team_yellow jk_tt_timelimit 1
execute if score #tab jk_tt_mem matches 3 run scoreboard players operation @a[tag=jk_tt_on_game,team=jk_tt_yellow] jk_tt_timelimit = #team_yellow jk_tt_timelimit

scoreboard players operation #team_yellow jk_tt_s = #team_yellow jk_tt_timelimit
scoreboard players operation #team_yellow jk_tt_s %= #60 jk_tt_mem

scoreboard players operation #team_yellow jk_tt_m = #team_yellow jk_tt_timelimit
scoreboard players operation #team_yellow jk_tt_m /= #60 jk_tt_mem
scoreboard players operation #team_yellow jk_tt_m %= #60 jk_tt_mem

scoreboard players operation #team_yellow jk_tt_h = #team_yellow jk_tt_timelimit
scoreboard players operation #team_yellow jk_tt_h /= #60 jk_tt_mem
scoreboard players operation #team_yellow jk_tt_h /= #60 jk_tt_mem

execute if score #team_yellow jk_tt_timelimit matches ..0 run tellraw @a [{"text":"※  黄队玩家的怀表都停了！","color":"yellow"}]
execute if score #team_yellow jk_tt_timelimit matches ..0 run gamemode spectator @a[team=jk_tt_yellow]

title @a[team=jk_tt_yellow] title ""
execute if score #team_yellow jk_tt_m matches ..9 if score #team_yellow jk_tt_s matches ..9 run title @a[team=jk_tt_yellow] subtitle ["",{"score":{"name":"#team_yellow","objective":"jk_tt_h"},"color":"yellow"},{"text":":","color":"white"},{"text": "0", "color": "yellow"},{"score":{"name":"#team_yellow","objective":"jk_tt_m"},"color":"yellow"},{"text":":","color":"white"},{"text": "0", "color": "yellow"},{"score":{"name":"#team_yellow","objective":"jk_tt_s"},"color":"yellow"}]
execute if score #team_yellow jk_tt_m matches ..9 if score #team_yellow jk_tt_s matches 10.. run title @a[team=jk_tt_yellow] subtitle ["",{"score":{"name":"#team_yellow","objective":"jk_tt_h"},"color":"yellow"},{"text":":","color":"white"},{"text": "0", "color": "yellow"},{"score":{"name":"#team_yellow","objective":"jk_tt_m"},"color":"yellow"},{"text":":","color":"white"},{"score":{"name":"#team_yellow","objective":"jk_tt_s"},"color":"yellow"}]
execute if score #team_yellow jk_tt_m matches 10.. if score #team_yellow jk_tt_s matches ..9 run title @a[team=jk_tt_yellow] subtitle ["",{"score":{"name":"#team_yellow","objective":"jk_tt_h"},"color":"yellow"},{"text":":","color":"white"},{"score":{"name":"#team_yellow","objective":"jk_tt_m"},"color":"yellow"},{"text":":","color":"white"},{"text": "0", "color": "yellow"},{"score":{"name":"#team_yellow","objective":"jk_tt_s"},"color":"yellow"}]
execute if score #team_yellow jk_tt_m matches 10.. if score #team_yellow jk_tt_s matches 10.. run title @a[team=jk_tt_yellow] subtitle ["",{"score":{"name":"#team_yellow","objective":"jk_tt_h"},"color":"yellow"},{"text":":","color":"white"},{"score":{"name":"#team_yellow","objective":"jk_tt_m"},"color":"yellow"},{"text":":","color":"white"},{"score":{"name":"#team_yellow","objective":"jk_tt_s"},"color":"yellow"}]
