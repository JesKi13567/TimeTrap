# 每 2 刻执行一次
schedule function jk_tt_timing:tick2 2t replace

execute if score #game_on jk_tt_mem matches 1 run function jk_tt_gaming:add_time/tick2