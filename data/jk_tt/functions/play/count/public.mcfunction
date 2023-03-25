# 每 1 秒执行一次
# 计算时间

#   jk_tt_timelimit     jk_tt_s    jk_tt_m   jk_tt_h 
#    当前时间               秒          分        时

scoreboard players remove #public jk_tt_timelimit 1
execute if score #tab jk_tt_mem matches 3 run scoreboard players operation @a[tag=jk_tt_on_game] jk_tt_timelimit = #public jk_tt_timelimit

scoreboard players operation #public jk_tt_s = #public jk_tt_timelimit
scoreboard players operation #public jk_tt_s %= #60 jk_tt_mem

scoreboard players operation #public jk_tt_m = #public jk_tt_timelimit
scoreboard players operation #public jk_tt_m /= #60 jk_tt_mem
scoreboard players operation #public jk_tt_m %= #60 jk_tt_mem

scoreboard players operation #public jk_tt_h = #public jk_tt_timelimit
scoreboard players operation #public jk_tt_h /= #60 jk_tt_mem
scoreboard players operation #public jk_tt_h /= #60 jk_tt_mem

execute if score #public jk_tt_timelimit matches ..0 run tellraw @a [{"text":"※  所有玩家的怀表都停了！","color":"white"}]
execute if score #public jk_tt_timelimit matches ..0 run gamemode spectator @a

title @a[gamemode=!spectator] title ""
execute if score #public jk_tt_m matches ..9 if score #public jk_tt_s matches ..9 run title @a[gamemode=!spectator] subtitle ["",{"score":{"name":"#public","objective":"jk_tt_h"},"color":"aqua"},{"text":":","color":"white"},{"text": "0", "color": "aqua"},{"score":{"name":"#public","objective":"jk_tt_m"},"color":"aqua"},{"text":":","color":"white"},{"text": "0", "color": "aqua"},{"score":{"name":"#public","objective":"jk_tt_s"},"color":"aqua"}]
execute if score #public jk_tt_m matches ..9 if score #public jk_tt_s matches 10.. run title @a[gamemode=!spectator] subtitle ["",{"score":{"name":"#public","objective":"jk_tt_h"},"color":"aqua"},{"text":":","color":"white"},{"text": "0", "color": "aqua"},{"score":{"name":"#public","objective":"jk_tt_m"},"color":"aqua"},{"text":":","color":"white"},{"score":{"name":"#public","objective":"jk_tt_s"},"color":"aqua"}]
execute if score #public jk_tt_m matches 10.. if score #public jk_tt_s matches ..9 run title @a[gamemode=!spectator] subtitle ["",{"score":{"name":"#public","objective":"jk_tt_h"},"color":"aqua"},{"text":":","color":"white"},{"score":{"name":"#public","objective":"jk_tt_m"},"color":"aqua"},{"text":":","color":"white"},{"text": "0", "color": "aqua"},{"score":{"name":"#public","objective":"jk_tt_s"},"color":"aqua"}]
execute if score #public jk_tt_m matches 10.. if score #public jk_tt_s matches 10.. run title @a[gamemode=!spectator] subtitle ["",{"score":{"name":"#public","objective":"jk_tt_h"},"color":"aqua"},{"text":":","color":"white"},{"score":{"name":"#public","objective":"jk_tt_m"},"color":"aqua"},{"text":":","color":"white"},{"score":{"name":"#public","objective":"jk_tt_s"},"color":"aqua"}]
