# 炼药锅版
execute if score #init_difficulty jk_tt_mem matches 1 run function jk_tt_gaming:add_time/difficulty1
execute if score #init_difficulty jk_tt_mem matches 2 run function jk_tt_gaming:add_time/difficulty2
execute if score #init_difficulty jk_tt_mem matches 3 run function jk_tt_gaming:add_time/difficulty3

# 矿石块版
execute if score #init_difficulty jk_tt_mem matches 1 run function jk_tt_gaming:add_time/difficulty1p
execute if score #init_difficulty jk_tt_mem matches 2 run function jk_tt_gaming:add_time/difficulty2p
execute if score #init_difficulty jk_tt_mem matches 3 run function jk_tt_gaming:add_time/difficulty3p

function jk_tt_gaming:add_time/special
function jk_tt_gaming:add_time/advancement
function jk_tt_gaming:add_time/clear

scoreboard players reset @a jk_tt_sneak