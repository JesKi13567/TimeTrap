scoreboard players add #pvp jk_tt_mem 1
execute if score #pvp jk_tt_mem matches 2.. run scoreboard players set #pvp jk_tt_mem 0
execute if score #pvp jk_tt_mem matches 0 run team modify jk_tt_public friendlyFire false
execute if score #pvp jk_tt_mem matches 0 run team modify jk_tt_red friendlyFire false
execute if score #pvp jk_tt_mem matches 0 run team modify jk_tt_blue friendlyFire false
execute if score #pvp jk_tt_mem matches 0 run team modify jk_tt_green friendlyFire false
execute if score #pvp jk_tt_mem matches 0 run team modify jk_tt_yellow friendlyFire false

execute if score #pvp jk_tt_mem matches 1 run team modify jk_tt_public friendlyFire true
execute if score #pvp jk_tt_mem matches 1 run team modify jk_tt_red friendlyFire true
execute if score #pvp jk_tt_mem matches 1 run team modify jk_tt_blue friendlyFire true
execute if score #pvp jk_tt_mem matches 1 run team modify jk_tt_green friendlyFire true
execute if score #pvp jk_tt_mem matches 1 run team modify jk_tt_yellow friendlyFire true
function jk_tt:init/menu