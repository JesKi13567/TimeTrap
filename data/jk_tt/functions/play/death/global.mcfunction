# 检测死亡
execute if score #public jk_tt_mem matches 0 as @a[tag=jk_tt_on_game,scores={jk_tt_death=1..}] at @s run function jk_tt:play/death/solo
execute if score #public jk_tt_mem matches 1 as @a[tag=jk_tt_on_game,scores={jk_tt_death=1..}] at @s run function jk_tt:play/death/public

execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_red,tag=jk_tt_on_game,scores={jk_tt_death=1..}] at @s run function jk_tt:play/death/red
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_blue,tag=jk_tt_on_game,scores={jk_tt_death=1..}] at @s run function jk_tt:play/death/blue
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_green,tag=jk_tt_on_game,scores={jk_tt_death=1..}] at @s run function jk_tt:play/death/green
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_yellow,tag=jk_tt_on_game,scores={jk_tt_death=1..}] at @s run function jk_tt:play/death/yellow