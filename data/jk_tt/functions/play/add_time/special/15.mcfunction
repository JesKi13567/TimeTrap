## 特效
## particle
execute as @e[type=item,tag=jk_tt_ore] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run playsound entity.arrow.hit_player player @a[distance=..5]
execute as @e[type=item,tag=jk_tt_ore] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run particle end_rod ~ ~ ~ 0.2 0.1 0.2 0.01 15
execute as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_15 run playsound entity.experience_orb.pickup player @a[distance=..5]
execute as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_15 run particle end_rod ~ ~-0.2 ~ 0.3 0.2 0.3 0.003 30

## 显示加上的分数
## display the adding score
execute if score #public jk_tt_mem matches 0 as @e[type=item,tag=jk_tt_ore] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run title @p[tag=jk_tt_on_game] actionbar [" + ",{"score":{"name":"@p[tag=jk_tt_on_game]","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #public jk_tt_mem matches 0 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_15 run title @s actionbar [" + ",{"score":{"name":"@p[tag=jk_tt_on_game]","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #public jk_tt_mem matches 1 as @e[type=item,tag=jk_tt_ore] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run title @p[tag=jk_tt_on_game] actionbar [" + ",{"score":{"name":"#public","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #public jk_tt_mem matches 1 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_15 run title @s actionbar [" + ",{"score":{"name":"#public","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #public jk_tt_mem matches 2.. as @p[team=jk_tt_red,tag=jk_tt_on_game,distance=..5] as @e[type=item,tag=jk_tt_ore] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run title @p[team=jk_tt_red,tag=jk_tt_on_game,distance=..5] actionbar [" + ",{"score":{"name":"#team_red","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_red,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_15 run title @s actionbar [" + ",{"score":{"name":"#team_red","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #public jk_tt_mem matches 2.. as @p[team=jk_tt_blue,tag=jk_tt_on_game,distance=..5] as @e[type=item,tag=jk_tt_ore] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run title @p[team=jk_tt_blue,tag=jk_tt_on_game,distance=..5] actionbar [" + ",{"score":{"name":"#team_blue","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_blue,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_15 run title @s actionbar [" + ",{"score":{"name":"#team_blue","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #public jk_tt_mem matches 2.. as @p[team=jk_tt_green,tag=jk_tt_on_game,distance=..5] as @e[type=item,tag=jk_tt_ore] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run title @p[team=jk_tt_green,tag=jk_tt_on_game,distance=..5] actionbar [" + ",{"score":{"name":"#team_green","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_green,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_15 run title @s actionbar [" + ",{"score":{"name":"#team_green","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #public jk_tt_mem matches 2.. as @p[team=jk_tt_yellow,tag=jk_tt_on_game,distance=..5] as @e[type=item,tag=jk_tt_ore] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run title @p[team=jk_tt_yellow,tag=jk_tt_on_game,distance=..5] actionbar [" + ",{"score":{"name":"#team_yellow","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_yellow,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_15 run title @s actionbar [" + ",{"score":{"name":"#team_yellow","objective":"jk_tt_timeadd"},"color":"yellow"}]

## 更高版本
## higher versions
execute if score #version jk_tt_mem matches 16.. run function jk_tt:play/add_time/special/16

## 加分
## adding scores
execute if score #public jk_tt_mem matches 0 as @a[tag=jk_tt_on_game] at @s run scoreboard players operation @s jk_tt_timelimit += @s jk_tt_timeadd
execute if score #public jk_tt_mem matches 1 run scoreboard players operation #public jk_tt_timelimit += #public jk_tt_timeadd
execute if score #public jk_tt_mem matches 2.. run scoreboard players operation #team_red jk_tt_timelimit += #team_red jk_tt_timeadd
execute if score #public jk_tt_mem matches 2.. run scoreboard players operation #team_blue jk_tt_timelimit += #team_blue jk_tt_timeadd
execute if score #public jk_tt_mem matches 2.. run scoreboard players operation #team_green jk_tt_timelimit += #team_green jk_tt_timeadd
execute if score #public jk_tt_mem matches 2.. run scoreboard players operation #team_yellow jk_tt_timelimit += #team_yellow jk_tt_timeadd
scoreboard players reset * jk_tt_timeadd

## 成就
## achievements
execute as @e[type=item,tag=jk_tt_ore] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run advancement grant @p[tag=jk_tt_on_game] only jk_tt:clock/learn
execute as @a[tag=jk_tt_on_game,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_15 run advancement grant @s only jk_tt:clock/learn
execute if score #public jk_tt_mem matches 0 run advancement grant @a[tag=jk_tt_on_game,scores={jk_tt_timelimit=1800..}] only jk_tt:clock/30min
execute if score #public jk_tt_mem matches 0 run advancement grant @a[tag=jk_tt_on_game,scores={jk_tt_timelimit=3600..}] only jk_tt:clock/1h
execute if score #public jk_tt_mem matches 0 run advancement grant @a[tag=jk_tt_on_game,scores={jk_tt_timelimit=7200..}] only jk_tt:clock/2h
execute if score #public jk_tt_mem matches 1 if score #public jk_tt_timelimit matches 1800.. run advancement grant @a[tag=jk_tt_on_game] only jk_tt:clock/30min
execute if score #public jk_tt_mem matches 1 if score #public jk_tt_timelimit matches 3600.. run advancement grant @a[tag=jk_tt_on_game] only jk_tt:clock/1h
execute if score #public jk_tt_mem matches 1 if score #public jk_tt_timelimit matches 7200.. run advancement grant @a[tag=jk_tt_on_game] only jk_tt:clock/2h
execute if score #public jk_tt_mem matches 2.. if score #team_red jk_tt_timelimit matches 1800.. run advancement grant @a[tag=jk_tt_on_game,team=jk_tt_red] only jk_tt:clock/30min
execute if score #public jk_tt_mem matches 2.. if score #team_red jk_tt_timelimit matches 3600.. run advancement grant @a[tag=jk_tt_on_game,team=jk_tt_red] only jk_tt:clock/1h
execute if score #public jk_tt_mem matches 2.. if score #team_red jk_tt_timelimit matches 7200.. run advancement grant @a[tag=jk_tt_on_game,team=jk_tt_red] only jk_tt:clock/2h
execute if score #public jk_tt_mem matches 2.. if score #team_blue jk_tt_timelimit matches 1800.. run advancement grant @a[tag=jk_tt_on_game,team=jk_tt_blue] only jk_tt:clock/30min
execute if score #public jk_tt_mem matches 2.. if score #team_blue jk_tt_timelimit matches 3600.. run advancement grant @a[tag=jk_tt_on_game,team=jk_tt_blue] only jk_tt:clock/1h
execute if score #public jk_tt_mem matches 2.. if score #team_blue jk_tt_timelimit matches 7200.. run advancement grant @a[tag=jk_tt_on_game,team=jk_tt_blue] only jk_tt:clock/2h
execute if score #public jk_tt_mem matches 2.. if score #team_green jk_tt_timelimit matches 1800.. run advancement grant @a[tag=jk_tt_on_game,team=jk_tt_green] only jk_tt:clock/30min
execute if score #public jk_tt_mem matches 2.. if score #team_green jk_tt_timelimit matches 3600.. run advancement grant @a[tag=jk_tt_on_game,team=jk_tt_green] only jk_tt:clock/1h
execute if score #public jk_tt_mem matches 2.. if score #team_green jk_tt_timelimit matches 7200.. run advancement grant @a[tag=jk_tt_on_game,team=jk_tt_green] only jk_tt:clock/2h
execute if score #public jk_tt_mem matches 2.. if score #team_yellow jk_tt_timelimit matches 1800.. run advancement grant @a[tag=jk_tt_on_game,team=jk_tt_yellow] only jk_tt:clock/30min
execute if score #public jk_tt_mem matches 2.. if score #team_yellow jk_tt_timelimit matches 3600.. run advancement grant @a[tag=jk_tt_on_game,team=jk_tt_yellow] only jk_tt:clock/1h
execute if score #public jk_tt_mem matches 2.. if score #team_yellow jk_tt_timelimit matches 7200.. run advancement grant @a[tag=jk_tt_on_game,team=jk_tt_yellow] only jk_tt:clock/2h

## 清理
## clear
execute as @e[type=item,tag=jk_tt_ore] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run kill @s
execute as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_15 run setblock ~ ~-1 ~ air replace