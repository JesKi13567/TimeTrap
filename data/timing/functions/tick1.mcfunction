# 每 1 刻执行一次
schedule function timing:tick1 1t replace

execute if score #game_on mem matches 1 run function gaming:add_time/tick1