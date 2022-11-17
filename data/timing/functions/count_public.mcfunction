# 每 1 秒执行一次
# 计算时间

#   time_limit     s    m   h 
#    当前时间      秒    分   时

scoreboard players remove #public time_limit 1

scoreboard players operation #public s = #public time_limit
scoreboard players operation #public s %= #60 mem

scoreboard players operation #public m = #public time_limit
scoreboard players operation #public m /= #60 mem
scoreboard players operation #public m %= #60 mem

scoreboard players operation #public h = #public time_limit
scoreboard players operation #public h /= #60 mem
scoreboard players operation #public h /= #60 mem

execute if score #public time_limit matches ..0 run function gaming:failed_time

title @a title ""
title @a subtitle ["",{"score":{"name":"#public","objective":"h"},"color":"aqua"},{"text":":","color":"white"},{"score":{"name":"#public","objective":"m"},"color":"aqua"},{"text":":","color":"white"},{"score":{"name":"#public","objective":"s"},"color":"aqua"}]
