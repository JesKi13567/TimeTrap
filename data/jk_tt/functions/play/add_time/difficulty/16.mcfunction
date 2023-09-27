execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players operation @p[gamemode=!spectator,tag=jk_tt_on_game] jk_tt_timeadd = #netherite jk_tt_mem

execute as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ netherite_block run scoreboard players operation @s jk_tt_timeadd = #netherite_block jk_tt_mem

execute if score #version jk_tt_mem matches 17.. run function jk_tt:play/add_time/difficulty/17