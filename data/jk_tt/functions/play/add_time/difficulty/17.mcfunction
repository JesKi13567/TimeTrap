execute as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players operation @p[gamemode=!spectator,tag=jk_tt_on_game] jk_tt_timeadd = #copper jk_tt_mem
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players operation @p[gamemode=!spectator,tag=jk_tt_on_game] jk_tt_timeadd = #amethyst jk_tt_mem

execute as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ copper_block run scoreboard players operation @s jk_tt_timeadd = #copper_block jk_tt_mem
execute as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ amethyst_block run scoreboard players operation @s jk_tt_timeadd = #amethyst_block jk_tt_mem