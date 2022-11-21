scoreboard objectives remove jk_tt_mem
scoreboard objectives remove jk_tt_s
scoreboard objectives remove jk_tt_m
scoreboard objectives remove jk_tt_h
scoreboard objectives remove jk_tt_death
scoreboard objectives remove jk_tt_death_limit
scoreboard objectives remove jk_tt_time_limit
scoreboard objectives remove jk_tt_sneak
scoreboard objectives remove jk_tt_leave_game
scoreboard objectives remove jk_tt_hp
scoreboard objectives remove jk_tt_team
scoreboard objectives remove jk_tt_team_trigger
tag @a remove jk_tt_on_game
team remove jk_tt_public
team remove jk_tt_red
team remove jk_tt_blue
team remove jk_tt_green
team remove jk_tt_yellow

tellraw @a "\n卸载jk的时间陷阱成功！\n"

datapack disable "file/JK_TimeTrap"
datapack disable "file/JK_TimeTrap.zip"