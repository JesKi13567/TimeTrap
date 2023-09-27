## 特效
## particle
execute as @e[type=item,tag=jk_tt_ore] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run function jk_tt:play/add_time/special/throw
execute as @a[tag=jk_tt_on_game,gamemode=!spectator,scores={jk_tt_sneak=1..}] at @s run function jk_tt:play/add_time/special/15

## 成就
## achievements
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

## 加分
## adding scores
execute as @a[tag=jk_tt_on_game,gamemode=survival,scores={jk_tt_timeadd=1..}] run function jk_tt:play/add_time/special/add_score

## 清理
## clear
execute as @e[type=item,tag=jk_tt_ore] anchored feet at @s if block ~ ~ ~ minecraft:cauldron run kill @s