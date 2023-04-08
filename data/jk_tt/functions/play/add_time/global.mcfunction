# 每 2 刻执行一次
# do it once in per 2 ticks

# 矿石加tag
# ore that add tag
function jk_tt:play/add_time/ore_tag/15

# 炼药锅 + 矿石块检查
# cauldron and ore blocks checking
function jk_tt:play/add_time/difficulty/check/15

# 难度（按倍数乘除）
# difficuty(divides)
# *3/2=1.5
execute if score #init_diff jk_tt_mem matches 2 run function jk_tt:play/add_time/difficulty/normal
# /2=0.5
execute if score #init_diff jk_tt_mem matches 3 run function jk_tt:play/add_time/difficulty/hard

# 特效、显示、加分处理
# particle, display, add time.. etc.
function jk_tt:play/add_time/special/15

scoreboard players reset @a jk_tt_sneak