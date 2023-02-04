# 炼药锅版
execute if score #init_difficulty jk_tt_mem matches 1 run function jk_tt:gaming/add_time/17/difficulty/cauldron/1
execute if score #init_difficulty jk_tt_mem matches 2 run function jk_tt:gaming/add_time/17/difficulty/cauldron/2
execute if score #init_difficulty jk_tt_mem matches 3 run function jk_tt:gaming/add_time/17/difficulty/cauldron/3

# 矿石块版
execute if score #init_difficulty jk_tt_mem matches 1 run function jk_tt:gaming/add_time/17/difficulty/ore/1
execute if score #init_difficulty jk_tt_mem matches 2 run function jk_tt:gaming/add_time/17/difficulty/ore/2
execute if score #init_difficulty jk_tt_mem matches 3 run function jk_tt:gaming/add_time/17/difficulty/ore/3

function jk_tt:gaming/add_time/17/special
function jk_tt:gaming/add_time/17/advancement
function jk_tt:gaming/add_time/17/clear

scoreboard players reset @a jk_tt_sneak