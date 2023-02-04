# 每 1 秒执行一次
schedule function jk_tt:timing/sec1 1s replace

execute if score #game_on jk_tt_mem matches 1 run function jk_tt:timing/gaming