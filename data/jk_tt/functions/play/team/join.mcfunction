execute if score #public jk_tt_mem matches 2..4 run team join jk_tt_red @s[scores={jk_tt_team_tri=1}]
execute if score #public jk_tt_mem matches 2..4 run team join jk_tt_blue @s[scores={jk_tt_team_tri=2}]
execute if score #public jk_tt_mem matches 3..4 run team join jk_tt_green @s[scores={jk_tt_team_tri=3}]
execute if score #public jk_tt_mem matches 4 run team join jk_tt_yellow @s[scores={jk_tt_team_tri=4}]

execute if entity @s[team=jk_tt_red] run scoreboard players add #team_red jk_tt_timelimit 300
execute if entity @s[team=jk_tt_blue] run scoreboard players add #team_blue jk_tt_timelimit 300
execute if entity @s[team=jk_tt_green] run scoreboard players add #team_green jk_tt_timelimit 300
execute if entity @s[team=jk_tt_yellow] run scoreboard players add #team_yellow jk_tt_timelimit 300

tellraw @s[team=jk_tt_red] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"你已加入红队！","color":"red"}]
execute as @s[team=jk_tt_red] run tellraw @a[team=jk_tt_red] ["",{"selector":"@s"},"的到来为你们队伍增加了 300 秒！"]
execute if entity @a[gamemode=spectator,team=jk_tt_red] run tellraw @a[team=jk_tt_red] "但是逝者已逝，不能复活。"

tellraw @s[team=jk_tt_blue] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"你已加入蓝队！","color":"blue"}]
execute as @s[team=jk_tt_blue] run tellraw @a[team=jk_tt_blue] ["",{"selector":"@s"},"的到来为你们队伍增加了 300 秒！"]
execute if entity @a[gamemode=spectator,team=jk_tt_blue] run tellraw @a[team=jk_tt_blue] "但是逝者已逝，不能复活。"

tellraw @s[team=jk_tt_green] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"你已加入绿队！","color":"green"}]
execute as @s[team=jk_tt_green] run tellraw @a[team=jk_tt_green] ["",{"selector":"@s"},"的到来为你们队伍增加了 300 秒！"]
execute if entity @a[gamemode=spectator,team=jk_tt_green] run tellraw @a[team=jk_tt_green] "但是逝者已逝，不能复活。"

tellraw @s[team=jk_tt_yellow] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"你已加入黄队！","color":"yellow"}]
execute as @s[team=jk_tt_yellow] run tellraw @a[team=jk_tt_yellow] ["",{"selector":"@s"},"的到来为你们队伍增加了 300 秒！"]
execute if entity @a[gamemode=spectator,team=jk_tt_yellow] run tellraw @a[team=jk_tt_yellow] "但是逝者已逝，不能复活。"

tag @s[team=!jk_tt_public] add jk_tt_on_game
scoreboard players reset @s jk_tt_team_tri