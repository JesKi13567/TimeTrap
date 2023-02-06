# 修复成功（时间和生命上限都在）
execute if score #public jk_tt_mem matches 0 if entity @p[scores={jk_tt_deathlimit=1..,jk_tt_timelimit=1..}] run function jk_tt:gaming/bug/fix
execute if score #public jk_tt_mem matches 1 if score #public jk_tt_deathlimit >= #1 jk_tt_mem if score #public jk_tt_timelimit >= #1 jk_tt_mem run function jk_tt:gaming/bug/fix
# 未修复成功，即失败了
execute if score #public jk_tt_mem matches 0..1 unless score #game_on jk_tt_mem matches 1 run function jk_tt:gaming/bug/trick_failed
# 多人游戏的骗局
execute unless score #public jk_tt_mem matches 0..1 run function jk_tt:gaming/bug/trick_multi