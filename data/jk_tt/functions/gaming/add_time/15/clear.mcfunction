# 清理
#execute as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run kill @s
#execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run kill @s
#execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run kill @s

execute as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_15 run setblock ~ ~-1 ~ air replace