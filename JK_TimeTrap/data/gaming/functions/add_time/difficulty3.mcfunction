# 铜锭，绿宝石，铁锭，金锭，钻石，下界合金锭，紫水晶，红石，青金石
#  10    15    20    30   40     240       4      5     6
execute if score #public mem matches 0 as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron as @p[tag=on_game] run scoreboard players add @s time_limit 10
execute if score #public mem matches 0 as @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron as @p[tag=on_game] run scoreboard players add @s time_limit 15
execute if score #public mem matches 0 as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron as @p[tag=on_game] run scoreboard players add @s time_limit 20
execute if score #public mem matches 0 as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron as @p[tag=on_game] run scoreboard players add @s time_limit 30
execute if score #public mem matches 0 as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron as @p[tag=on_game] run scoreboard players add @s time_limit 40
execute if score #public mem matches 0 as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron as @p[tag=on_game] run scoreboard players add @s time_limit 240
execute if score #public mem matches 0 as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron as @p[tag=on_game] run scoreboard players add @s time_limit 4
execute if score #public mem matches 0 as @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron as @p[tag=on_game] run scoreboard players add @s time_limit 5
execute if score #public mem matches 0 as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron as @p[tag=on_game] run scoreboard players add @s time_limit 6

execute if score #public mem matches 1 as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add #public time_limit 10
execute if score #public mem matches 1 as @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add #public time_limit 15
execute if score #public mem matches 1 as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add #public time_limit 20
execute if score #public mem matches 1 as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add #public time_limit 30
execute if score #public mem matches 1 as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add #public time_limit 40
execute if score #public mem matches 1 as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add #public time_limit 240
execute if score #public mem matches 1 as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add #public time_limit 4
execute if score #public mem matches 1 as @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add #public time_limit 5
execute if score #public mem matches 1 as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add #public time_limit 6
