execute as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_16 run playsound entity.experience_orb.pickup player @a[distance=..5]
execute as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_16 run particle end_rod ~ ~-0.2 ~ 0.3 0.2 0.3 0.003 30

execute if score #public jk_tt_mem matches 0 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_16 run title @s actionbar [" + ",{"score":{"name":"@p[tag=jk_tt_on_game]","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #public jk_tt_mem matches 1 as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_16 run title @s actionbar [" + ",{"score":{"name":"#public","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_red,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_16 run title @s actionbar [" + ",{"score":{"name":"#team_red","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_blue,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_16 run title @s actionbar [" + ",{"score":{"name":"#team_blue","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_green,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_16 run title @s actionbar [" + ",{"score":{"name":"#team_green","objective":"jk_tt_timeadd"},"color":"yellow"}]
execute if score #public jk_tt_mem matches 2.. as @a[team=jk_tt_yellow,tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_16 run title @s actionbar [" + ",{"score":{"name":"#team_yellow","objective":"jk_tt_timeadd"},"color":"yellow"}]

execute as @a[tag=jk_tt_on_game,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_16 run advancement grant @s only jk_tt:clock/learn
execute as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s if block ~ ~-1 ~ #jk_tt:ore_blocks_16 run setblock ~ ~-1 ~ air replace

execute if score #version jk_tt_mem matches 17.. run function jk_tt:play/add_time/special/17