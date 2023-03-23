# 每 2 刻执行一次
# do it once in per 2 ticks
schedule function jk_tt:play/ticks/tick2 2t replace
execute if score #game_on jk_tt_mem matches 1 run function jk_tt:play/tick2