scoreboard objectives remove jk_tt_s
scoreboard objectives remove jk_tt_m
scoreboard objectives remove jk_tt_h
scoreboard objectives remove jk_tt_death
scoreboard objectives remove jk_tt_deathlimit
scoreboard objectives remove jk_tt_timeadd
scoreboard objectives remove jk_tt_timelimit
scoreboard objectives remove jk_tt_sneak
scoreboard objectives remove jk_tt_hp
scoreboard objectives remove jk_tt_team
scoreboard objectives remove jk_tt_team_tri
scoreboard objectives remove jk_tt_record
tag @a remove jk_tt_on_game
team remove jk_tt_public
team remove jk_tt_red
team remove jk_tt_blue
team remove jk_tt_green
team remove jk_tt_yellow

execute unless score #lang jk_tt_mem matches 1 run tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n卸载JK的时间陷阱成功！\n"
execute if score #lang jk_tt_mem matches 1 run tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nSuccessfully uninstalled the datapack--TimeTrap!\n"
scoreboard objectives remove jk_tt_mem
playsound entity.villager.yes player @a