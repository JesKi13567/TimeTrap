# 绿宝石，铁锭，金锭，钻石，红石，青金石
#Emerald,Iron,Gold,Diamond,Redstone,Lapis
#   30    40    60   80   10    12

## 矿石物品
## ore items

execute if score #public jk_tt_mem matches 0 as @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add @p[gamemode=!spectator,tag=jk_tt_on_game] jk_tt_timeadd 30
execute if score #public jk_tt_mem matches 0 as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add @p[gamemode=!spectator,tag=jk_tt_on_game] jk_tt_timeadd 40
execute if score #public jk_tt_mem matches 0 as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add @p[gamemode=!spectator,tag=jk_tt_on_game] jk_tt_timeadd 60
execute if score #public jk_tt_mem matches 0 as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add @p[gamemode=!spectator,tag=jk_tt_on_game] jk_tt_timeadd 80
execute if score #public jk_tt_mem matches 0 as @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add @p[gamemode=!spectator,tag=jk_tt_on_game] jk_tt_timeadd 10
execute if score #public jk_tt_mem matches 0 as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add @p[gamemode=!spectator,tag=jk_tt_on_game] jk_tt_timeadd 12

execute if score #public jk_tt_mem matches 1 as @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add #public jk_tt_timeadd 30
execute if score #public jk_tt_mem matches 1 as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add #public jk_tt_timeadd 40
execute if score #public jk_tt_mem matches 1 as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add #public jk_tt_timeadd 60
execute if score #public jk_tt_mem matches 1 as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add #public jk_tt_timeadd 80
execute if score #public jk_tt_mem matches 1 as @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add #public jk_tt_timeadd 10
execute if score #public jk_tt_mem matches 1 as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run scoreboard players add #public jk_tt_timeadd 12

execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_red] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_red jk_tt_timeadd 30
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_red] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_red jk_tt_timeadd 40
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_red] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_red jk_tt_timeadd 60
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_red] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_red jk_tt_timeadd 80
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_red] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_red jk_tt_timeadd 10
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_red] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_red jk_tt_timeadd 12

execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_blue] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_blue jk_tt_timeadd 30
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_blue] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_blue jk_tt_timeadd 40
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_blue] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_blue jk_tt_timeadd 60
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_blue] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_blue jk_tt_timeadd 80
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_blue] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_blue jk_tt_timeadd 10
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_blue] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_blue jk_tt_timeadd 12

execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_green] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_green jk_tt_timeadd 30
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_green] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_green jk_tt_timeadd 40
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_green] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_green jk_tt_timeadd 60
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_green] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_green jk_tt_timeadd 80
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_green] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_green jk_tt_timeadd 10
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_green] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_green jk_tt_timeadd 12

execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_yellow] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_yellow jk_tt_timeadd 30
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_yellow] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_yellow jk_tt_timeadd 40
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_yellow] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_yellow jk_tt_timeadd 60
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_yellow] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_yellow jk_tt_timeadd 80
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_yellow] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_yellow jk_tt_timeadd 10
execute if score #public jk_tt_mem matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] anchored feet at @s if entity @p[gamemode=!spectator,team=jk_tt_yellow] if block ~ ~ ~ minecraft:cauldron run scoreboard players add #team_yellow jk_tt_timeadd 12

## 矿石块
## ore blocks

execute if score #public jk_tt_mem matches 0 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ emerald_block run scoreboard players add @s jk_tt_timeadd 270
execute if score #public jk_tt_mem matches 0 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ iron_block run scoreboard players add @s jk_tt_timeadd 360
execute if score #public jk_tt_mem matches 0 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ gold_block run scoreboard players add @s jk_tt_timeadd 540
execute if score #public jk_tt_mem matches 0 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ diamond_block run scoreboard players add @s jk_tt_timeadd 720
execute if score #public jk_tt_mem matches 0 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ redstone_block run scoreboard players add @s jk_tt_timeadd 90
execute if score #public jk_tt_mem matches 0 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ lapis_block run scoreboard players add @s jk_tt_timeadd 108

execute if score #public jk_tt_mem matches 1 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ emerald_block run scoreboard players add #public jk_tt_timeadd 270
execute if score #public jk_tt_mem matches 1 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ iron_block run scoreboard players add #public jk_tt_timeadd 360
execute if score #public jk_tt_mem matches 1 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ gold_block run scoreboard players add #public jk_tt_timeadd 540
execute if score #public jk_tt_mem matches 1 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ diamond_block run scoreboard players add #public jk_tt_timeadd 720
execute if score #public jk_tt_mem matches 1 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ redstone_block run scoreboard players add #public jk_tt_timeadd 90
execute if score #public jk_tt_mem matches 1 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ lapis_block run scoreboard players add #public jk_tt_timeadd 108

execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_red,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ emerald_block run scoreboard players add #team_red jk_tt_timeadd 270
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_red,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ iron_block run scoreboard players add #team_red jk_tt_timeadd 360
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_red,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ gold_block run scoreboard players add #team_red jk_tt_timeadd 540
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_red,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ diamond_block run scoreboard players add #team_red jk_tt_timeadd 720
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_red,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ redstone_block run scoreboard players add #team_red jk_tt_timeadd 90
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_red,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ lapis_block run scoreboard players add #team_red jk_tt_timeadd 108

execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_blue,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ emerald_block run scoreboard players add #team_blue jk_tt_timeadd 270
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_blue,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ iron_block run scoreboard players add #team_blue jk_tt_timeadd 360
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_blue,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ gold_block run scoreboard players add #team_blue jk_tt_timeadd 540
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_blue,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ diamond_block run scoreboard players add #team_blue jk_tt_timeadd 720
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_blue,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ redstone_block run scoreboard players add #team_blue jk_tt_timeadd 90
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_blue,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ lapis_block run scoreboard players add #team_blue jk_tt_timeadd 108

execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_green,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ emerald_block run scoreboard players add #team_green jk_tt_timeadd 270
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_green,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ iron_block run scoreboard players add #team_green jk_tt_timeadd 360
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_green,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ gold_block run scoreboard players add #team_green jk_tt_timeadd 540
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_green,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ diamond_block run scoreboard players add #team_green jk_tt_timeadd 720
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_green,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ redstone_block run scoreboard players add #team_green jk_tt_timeadd 90
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_green,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ lapis_block run scoreboard players add #team_green jk_tt_timeadd 108

execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_yellow,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ emerald_block run scoreboard players add #team_yellow jk_tt_timeadd 270
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_yellow,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ iron_block run scoreboard players add #team_yellow jk_tt_timeadd 360
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_yellow,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ gold_block run scoreboard players add #team_yellow jk_tt_timeadd 540
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_yellow,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ diamond_block run scoreboard players add #team_yellow jk_tt_timeadd 720
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_yellow,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ redstone_block run scoreboard players add #team_yellow jk_tt_timeadd 90
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_yellow,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ lapis_block run scoreboard players add #team_yellow jk_tt_timeadd 108

## 更高版本
## higher versions
execute if score #version jk_tt_mem matches 16.. run function jk_tt:play/add_time/difficulty/check/16