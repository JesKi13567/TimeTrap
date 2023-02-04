# 每 2 刻执行一次
schedule function jk_tt:timing/tick2 2t replace

execute if score #version jk_tt_mem matches 15 if score #game_on jk_tt_mem matches 1 run function jk_tt:gaming/add_time/15/tick2
execute if score #version jk_tt_mem matches 16 if score #game_on jk_tt_mem matches 1 run function jk_tt:gaming/add_time/16/tick2
execute if score #version jk_tt_mem matches 17.. if score #game_on jk_tt_mem matches 1 run function jk_tt:gaming/add_time/17/tick2