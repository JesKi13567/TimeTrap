# 每 2 刻执行一次
# do it once in per 2 ticks
function jk_tt:play/death/global
function jk_tt:play/add_time/global

# 清理
tag @a remove jk_tt_murder
tag @a remove jk_tt_victim
scoreboard players reset @a jk_tt_sneak