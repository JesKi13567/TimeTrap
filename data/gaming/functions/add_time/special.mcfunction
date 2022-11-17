# 特效
execute as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run playsound entity.arrow.hit_player player @a[distance=..5]
execute as @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run playsound entity.arrow.hit_player player @a[distance=..5]
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run playsound entity.arrow.hit_player player @a[distance=..5]
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run playsound entity.arrow.hit_player player @a[distance=..5]
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run playsound entity.arrow.hit_player player @a[distance=..5]
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run playsound entity.arrow.hit_player player @a[distance=..5]
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run playsound entity.arrow.hit_player player @a[distance=..5]
execute as @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run playsound entity.arrow.hit_player player @a[distance=..5]
execute as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run playsound entity.arrow.hit_player player @a[distance=..5]

execute as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run particle wax_off ~ ~ ~ 0.2 0.1 0.2 1 15
execute as @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run particle wax_off ~ ~ ~ 0.2 0.1 0.2 1 15
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run particle wax_off ~ ~ ~ 0.2 0.1 0.2 1 15
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run particle wax_off ~ ~ ~ 0.2 0.1 0.2 1 15
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run particle wax_off ~ ~ ~ 0.2 0.1 0.2 1 15
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run particle wax_off ~ ~ ~ 0.2 0.1 0.2 1 15
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run particle wax_off ~ ~ ~ 0.2 0.1 0.2 1 15
execute as @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run particle wax_off ~ ~ ~ 0.2 0.1 0.2 1 15
execute as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run particle wax_off ~ ~ ~ 0.2 0.1 0.2 1 15

execute as @a[tag=on_game,scores={sneak=1..}] at @s if block ~ ~-1 ~ #gaming:ore_blocks run playsound entity.experience_orb.pickup player @a[distance=..5]
execute as @a[tag=on_game,scores={sneak=1..}] at @s if block ~ ~-1 ~ #gaming:ore_blocks run particle end_rod ~ ~-0.2 ~ 0.3 0.2 0.3 0.003 30