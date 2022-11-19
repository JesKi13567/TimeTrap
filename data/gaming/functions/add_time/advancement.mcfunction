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


execute if score #public mem matches 0 as @p[tag=on_game,scores={time_limit=1800..}] at @s run advancement grant @s only gaming:clock/30min
execute if score #public mem matches 0 as @p[tag=on_game,scores={time_limit=3600..}] at @s run advancement grant @s only gaming:clock/1h

execute if score #public mem matches 1 if score #public time_limit matches 1800.. run advancement grant @a[tag=on_game] only gaming:clock/30min
execute if score #public mem matches 1 if score #public time_limit matches 3600.. run advancement grant @a[tag=on_game] only gaming:clock/1h
