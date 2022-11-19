# 每 2 刻执行一次
schedule function timing:tick2 2t replace

execute if score #game_on mem matches 1 run function gaming:add_time/tick2