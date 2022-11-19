# 炼药锅版
execute if score #init_difficulty mem matches 1 run function gaming:add_time/difficulty1
execute if score #init_difficulty mem matches 2 run function gaming:add_time/difficulty2
execute if score #init_difficulty mem matches 3 run function gaming:add_time/difficulty3

# 矿石块版
execute if score #init_difficulty mem matches 1 run function gaming:add_time/difficulty1p
execute if score #init_difficulty mem matches 2 run function gaming:add_time/difficulty2p
execute if score #init_difficulty mem matches 3 run function gaming:add_time/difficulty3p

function gaming:add_time/special
function gaming:add_time/advancement
function gaming:add_time/clear

scoreboard players reset @a sneak