## 矿石物品
## ore items
execute as @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players operation @p[gamemode=!spectator,tag=jk_tt_on_game] jk_tt_timeadd = #emerald jk_tt_mem
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players operation @p[gamemode=!spectator,tag=jk_tt_on_game] jk_tt_timeadd = #iron jk_tt_mem
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players operation @p[gamemode=!spectator,tag=jk_tt_on_game] jk_tt_timeadd = #gold jk_tt_mem
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players operation @p[gamemode=!spectator,tag=jk_tt_on_game] jk_tt_timeadd = #diamond jk_tt_mem
execute as @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players operation @p[gamemode=!spectator,tag=jk_tt_on_game] jk_tt_timeadd = #redstone jk_tt_mem
execute as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players operation @p[gamemode=!spectator,tag=jk_tt_on_game] jk_tt_timeadd = #lapis jk_tt_mem

## 矿石块
## ore blocks
execute as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ emerald_block run scoreboard players operation @s jk_tt_timeadd = #emerald_block jk_tt_mem
execute as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ iron_block run scoreboard players operation @s jk_tt_timeadd = #iron_block jk_tt_mem
execute as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ gold_block run scoreboard players operation @s jk_tt_timeadd = #gold_block jk_tt_mem
execute as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ diamond_block run scoreboard players operation @s jk_tt_timeadd = #diamond_block jk_tt_mem
execute as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ redstone_block run scoreboard players operation @s jk_tt_timeadd = #redstone_block jk_tt_mem
execute as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ lapis_block run scoreboard players operation @s jk_tt_timeadd = #lapis_block jk_tt_mem

## 更高版本
## higher versions
execute if score #version jk_tt_mem matches 16.. run function jk_tt:play/add_time/difficulty/16