# 每 1 秒执行一次
# do it once in per sec
schedule function jk_tt:play/ticks/sec1 1s replace
execute if score #game_on jk_tt_mem matches 1 run function jk_tt:play/sec1