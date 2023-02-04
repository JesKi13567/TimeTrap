# 成就
execute as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run advancement grant @p[tag=jk_tt_on_game] only jk_tt:clock/learn
execute as @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run advancement grant @p[tag=jk_tt_on_game] only jk_tt:clock/learn
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run advancement grant @p[tag=jk_tt_on_game] only jk_tt:clock/learn
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run advancement grant @p[tag=jk_tt_on_game] only jk_tt:clock/learn
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run advancement grant @p[tag=jk_tt_on_game] only jk_tt:clock/learn
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run advancement grant @p[tag=jk_tt_on_game] only jk_tt:clock/learn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run advancement grant @p[tag=jk_tt_on_game] only jk_tt:clock/learn
execute as @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run advancement grant @p[tag=jk_tt_on_game] only jk_tt:clock/learn
execute as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run advancement grant @p[tag=jk_tt_on_game] only jk_tt:clock/learn

execute as @a[tag=jk_tt_on_game,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks run advancement grant @s only jk_tt:clock/learn


execute if score #public jk_tt_mem matches 0 run advancement grant @a[tag=jk_tt_on_game,scores={jk_tt_timelimit=1800..}] only jk_tt:clock/30min
execute if score #public jk_tt_mem matches 0 run advancement grant @a[tag=jk_tt_on_game,scores={jk_tt_timelimit=3600..}] only jk_tt:clock/1h

execute if score #public jk_tt_mem matches 1 if score #public jk_tt_timelimit matches 1800.. run advancement grant @a[tag=jk_tt_on_game] only jk_tt:clock/30min
execute if score #public jk_tt_mem matches 1 if score #public jk_tt_timelimit matches 3600.. run advancement grant @a[tag=jk_tt_on_game] only jk_tt:clock/1h
