execute if score #public jk_tt_mem matches 0 run function jk_tt:play/kill/add_time/solo
execute if score #public jk_tt_mem matches 2.. as @s[team=jk_tt_red] run function jk_tt:play/kill/add_time/red
execute if score #public jk_tt_mem matches 2.. as @s[team=jk_tt_blue] run function jk_tt:play/kill/add_time/blue
execute if score #public jk_tt_mem matches 2.. as @s[team=jk_tt_green] run function jk_tt:play/kill/add_time/green
execute if score #public jk_tt_mem matches 2.. as @s[team=jk_tt_yellow] run function jk_tt:play/kill/add_time/yellow

# 清理
tag @a remove jk_tt_murder
tag @a remove jk_tt_victim