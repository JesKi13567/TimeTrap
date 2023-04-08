# 铜锭，紫水晶
#Copper,Amethyst
#  20    4
execute if score #public jk_tt_mem matches 0 as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add @p[gamemode=!spectator,tag=jk_tt_on_game] jk_tt_timeadd 20
execute if score #public jk_tt_mem matches 1 as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add #public jk_tt_timeadd 20
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_red] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_red jk_tt_timeadd 20
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_blue] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_blue jk_tt_timeadd 20
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_green] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_green jk_tt_timeadd 20
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_yellow] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_yellow jk_tt_timeadd 20

execute if score #public jk_tt_mem matches 0 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ copper_block run scoreboard players add @s jk_tt_timeadd 180
execute if score #public jk_tt_mem matches 1 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ copper_block run scoreboard players add #public jk_tt_timeadd 180
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_red,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ copper_block run scoreboard players add #team_red jk_tt_timeadd 180
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_blue,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ copper_block run scoreboard players add #team_blue jk_tt_timeadd 180
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_green,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ copper_block run scoreboard players add #team_green jk_tt_timeadd 180
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_yellow,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ copper_block run scoreboard players add #team_yellow jk_tt_timeadd 180


execute if score #public jk_tt_mem matches 0 as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add @p[gamemode=!spectator,tag=jk_tt_on_game] jk_tt_timeadd 4
execute if score #public jk_tt_mem matches 1 as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add #public jk_tt_timeadd 4
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_red] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_red jk_tt_timeadd 4
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_blue] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_blue jk_tt_timeadd 4
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_green] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_green jk_tt_timeadd 4
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_yellow] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_yellow jk_tt_timeadd 4

execute if score #public jk_tt_mem matches 0 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ amethyst_block run scoreboard players add @s jk_tt_timeadd 16
execute if score #public jk_tt_mem matches 1 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ amethyst_block run scoreboard players add #public jk_tt_timeadd 16
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_red,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ amethyst_block run scoreboard players add #team_red jk_tt_timeadd 16
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_blue,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ amethyst_block run scoreboard players add #team_blue jk_tt_timeadd 16
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_green,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ amethyst_block run scoreboard players add #team_green jk_tt_timeadd 16
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_yellow,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ amethyst_block run scoreboard players add #team_yellow jk_tt_timeadd 16