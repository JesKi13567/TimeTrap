scoreboard players add #keep_inv jk_tt_mem 1
execute if score #keep_inv jk_tt_mem matches 2.. run scoreboard players set #keep_inv jk_tt_mem 0

execute if score #keep_inv jk_tt_mem matches 0 in minecraft:overworld run gamerule keepInventory false
execute if score #keep_inv jk_tt_mem matches 0 in minecraft:the_nether run gamerule keepInventory false
execute if score #keep_inv jk_tt_mem matches 0 in minecraft:the_end run gamerule keepInventory false

execute if score #keep_inv jk_tt_mem matches 1 in minecraft:overworld run gamerule keepInventory true
execute if score #keep_inv jk_tt_mem matches 1 in minecraft:the_nether run gamerule keepInventory true
execute if score #keep_inv jk_tt_mem matches 1 in minecraft:the_end run gamerule keepInventory true

function jk_tt:init/menu