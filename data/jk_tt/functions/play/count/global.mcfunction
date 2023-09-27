# 每 1 秒执行一次
# do it once in per sec
# 时间流逝
execute if score #public jk_tt_mem matches 0 as @a[tag=jk_tt_on_game,gamemode=!spectator] run function jk_tt:play/count/solo
execute if score #public jk_tt_mem matches 1 run function jk_tt:play/count/public

execute if entity @a[gamemode=!spectator,team=jk_tt_red] if score #public jk_tt_mem matches 2..4 run function jk_tt:play/count/red
execute if entity @a[gamemode=!spectator,team=jk_tt_blue] if score #public jk_tt_mem matches 2..4 run function jk_tt:play/count/blue
execute if entity @a[gamemode=!spectator,team=jk_tt_green] if score #public jk_tt_mem matches 3..4 run function jk_tt:play/count/green
execute if entity @a[gamemode=!spectator,team=jk_tt_yellow] if score #public jk_tt_mem matches 4 run function jk_tt:play/count/yellow