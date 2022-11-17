scoreboard players add #keep_inv mem 1
execute if score #keep_inv mem matches 2.. run scoreboard players set #keep_inv mem 0
execute if score #keep_inv mem matches 0 run gamerule keepInventory false
execute if score #keep_inv mem matches 1 run gamerule keepInventory true

function init:menu
