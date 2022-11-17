# 成就
execute as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run advancement grant @p[tag=on_game] only gaming:clock/learn
execute as @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run advancement grant @p[tag=on_game] only gaming:clock/learn
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run advancement grant @p[tag=on_game] only gaming:clock/learn
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run advancement grant @p[tag=on_game] only gaming:clock/learn
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run advancement grant @p[tag=on_game] only gaming:clock/learn
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run advancement grant @p[tag=on_game] only gaming:clock/learn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run advancement grant @p[tag=on_game] only gaming:clock/learn
execute as @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run advancement grant @p[tag=on_game] only gaming:clock/learn
execute as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run advancement grant @p[tag=on_game] only gaming:clock/learn

execute as @a[tag=on_game,scores={sneak=1..}] at @s if block ~ ~-1 ~ #gaming:ore_blocks run advancement grant @s only gaming:clock/learn
