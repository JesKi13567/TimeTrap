# 下界合金锭
# Netherite
#   480
execute if score #public jk_tt_mem matches 0 as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add @p[gamemode=!spectator,tag=jk_tt_on_game] jk_tt_timeadd 480
execute if score #public jk_tt_mem matches 1 as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add #public jk_tt_timeadd 480
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_red] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_red jk_tt_timeadd 480
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_blue] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_blue jk_tt_timeadd 480
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_green] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_green jk_tt_timeadd 480
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_yellow] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_yellow jk_tt_timeadd 480

execute if score #public jk_tt_mem matches 0 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ netherite_block run scoreboard players add @s jk_tt_timeadd 4320
execute if score #public jk_tt_mem matches 1 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ netherite_block run scoreboard players add #public jk_tt_timeadd 4320
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_red,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ netherite_block run scoreboard players add #team_red jk_tt_timeadd 4320
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_blue,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ netherite_block run scoreboard players add #team_blue jk_tt_timeadd 4320
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_green,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ netherite_block run scoreboard players add #team_green jk_tt_timeadd 4320
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_yellow,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ netherite_block run scoreboard players add #team_yellow jk_tt_timeadd 4320

execute if score #version jk_tt_mem matches 17.. run function jk_tt:play/add_time/difficulty/check/17