# 每 1 秒执行一次
# 计算时间

#   time_limit     s    m   h 
#    当前时间      秒    分   时

scoreboard players remove @s time_limit 1

scoreboard players operation @s s = @s time_limit
scoreboard players operation @s s %= #60 mem

scoreboard players operation @s m = @s time_limit
scoreboard players operation @s m /= #60 mem
scoreboard players operation @s m %= #60 mem

scoreboard players operation @s h = @s time_limit
scoreboard players operation @s h /= #60 mem
scoreboard players operation @s h /= #60 mem

execute as @s[scores={time_limit=..0}] run function gaming:failed_time

title @s title ""
title @s subtitle ["",{"score":{"name":"@s","objective":"h"},"color":"aqua"},{"text":":","color":"white"},{"score":{"name":"@s","objective":"m"},"color":"aqua"},{"text":":","color":"white"},{"score":{"name":"@s","objective":"s"},"color":"aqua"}]
