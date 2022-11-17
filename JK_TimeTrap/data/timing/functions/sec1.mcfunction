# 每 1 秒执行一次
schedule function timing:sec1 1s replace

execute if score #game_on mem matches 1 run function timing:gaming