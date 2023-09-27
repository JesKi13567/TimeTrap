execute if score #public jk_tt_mem matches 2..4 run team join jk_tt_red @s[scores={jk_tt_team_tri=1}]
execute if score #public jk_tt_mem matches 2..4 run team join jk_tt_blue @s[scores={jk_tt_team_tri=2}]
execute if score #public jk_tt_mem matches 3..4 run team join jk_tt_green @s[scores={jk_tt_team_tri=3}]
execute if score #public jk_tt_mem matches 4 run team join jk_tt_yellow @s[scores={jk_tt_team_tri=4}]

tp @s[team=jk_tt_red] @p[team=jk_tt_red,distance=1..]
tp @s[team=jk_tt_blue] @p[team=jk_tt_blue,distance=1..]
tp @s[team=jk_tt_green] @p[team=jk_tt_green,distance=1..]
tp @s[team=jk_tt_yellow] @p[team=jk_tt_yellow,distance=1..]
gamemode survival

execute if entity @s[team=jk_tt_red] run scoreboard players add #team_red jk_tt_timelimit 300
execute if entity @s[team=jk_tt_blue] run scoreboard players add #team_blue jk_tt_timelimit 300
execute if entity @s[team=jk_tt_green] run scoreboard players add #team_green jk_tt_timelimit 300
execute if entity @s[team=jk_tt_yellow] run scoreboard players add #team_yellow jk_tt_timelimit 300

execute unless score #lang jk_tt_mem matches 1 run tellraw @s[team=jk_tt_red] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"你已加入红队！","color":"red"}]
execute unless score #lang jk_tt_mem matches 1 as @s[team=jk_tt_red] run tellraw @a[team=jk_tt_red] ["",{"selector":"@s"},"的到来为你们队伍增加了 300 秒！"]
execute unless score #lang jk_tt_mem matches 1 if entity @a[gamemode=spectator,team=jk_tt_red] run tellraw @a[team=jk_tt_red] "但是逝者已逝，不能复活。"

execute unless score #lang jk_tt_mem matches 1 run tellraw @s[team=jk_tt_blue] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"你已加入蓝队！","color":"blue"}]
execute unless score #lang jk_tt_mem matches 1 as @s[team=jk_tt_blue] run tellraw @a[team=jk_tt_blue] ["",{"selector":"@s"},"的到来为你们队伍增加了 300 秒！"]
execute unless score #lang jk_tt_mem matches 1 if entity @a[gamemode=spectator,team=jk_tt_blue] run tellraw @a[team=jk_tt_blue] "但是逝者已逝，不能复活。"

execute unless score #lang jk_tt_mem matches 1 run tellraw @s[team=jk_tt_green] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"你已加入绿队！","color":"green"}]
execute unless score #lang jk_tt_mem matches 1 as @s[team=jk_tt_green] run tellraw @a[team=jk_tt_green] ["",{"selector":"@s"},"的到来为你们队伍增加了 300 秒！"]
execute unless score #lang jk_tt_mem matches 1 if entity @a[gamemode=spectator,team=jk_tt_green] run tellraw @a[team=jk_tt_green] "但是逝者已逝，不能复活。"

execute unless score #lang jk_tt_mem matches 1 run tellraw @s[team=jk_tt_yellow] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"你已加入黄队！","color":"yellow"}]
execute unless score #lang jk_tt_mem matches 1 as @s[team=jk_tt_yellow] run tellraw @a[team=jk_tt_yellow] ["",{"selector":"@s"},"的到来为你们队伍增加了 300 秒！"]
execute unless score #lang jk_tt_mem matches 1 if entity @a[gamemode=spectator,team=jk_tt_yellow] run tellraw @a[team=jk_tt_yellow] "但是逝者已逝，不能复活。"


execute if score #lang jk_tt_mem matches 1 run tellraw @s[team=jk_tt_red] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"You joined in Team Red!","color":"red"}]
execute if score #lang jk_tt_mem matches 1 as @s[team=jk_tt_red] run tellraw @a[team=jk_tt_red] ["",{"selector":"@s"}," added 300 seconds for joining in your team!"]
execute if score #lang jk_tt_mem matches 1 if entity @a[gamemode=spectator,team=jk_tt_red] run tellraw @a[team=jk_tt_red] "..but the death could not back to life."

execute if score #lang jk_tt_mem matches 1 run tellraw @s[team=jk_tt_blue] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"You joined in Team Blue!","color":"blue"}]
execute if score #lang jk_tt_mem matches 1 as @s[team=jk_tt_blue] run tellraw @a[team=jk_tt_blue] ["",{"selector":"@s"}," added 300 seconds for joining in your team!"]
execute if score #lang jk_tt_mem matches 1 if entity @a[gamemode=spectator,team=jk_tt_blue] run tellraw @a[team=jk_tt_blue] "..but the death could not back to life."

execute if score #lang jk_tt_mem matches 1 run tellraw @s[team=jk_tt_green] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"You joined in Team Green!","color":"green"}]
execute if score #lang jk_tt_mem matches 1 as @s[team=jk_tt_green] run tellraw @a[team=jk_tt_green] ["",{"selector":"@s"}," added 300 seconds for joining in your team!"]
execute if score #lang jk_tt_mem matches 1 if entity @a[gamemode=spectator,team=jk_tt_green] run tellraw @a[team=jk_tt_green] "..but the death could not back to life."

execute if score #lang jk_tt_mem matches 1 run tellraw @s[team=jk_tt_yellow] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"You joined in Team Yellow!","color":"yellow"}]
execute if score #lang jk_tt_mem matches 1 as @s[team=jk_tt_yellow] run tellraw @a[team=jk_tt_yellow] ["",{"selector":"@s"}," added 300 seconds for joining in your team!"]
execute if score #lang jk_tt_mem matches 1 if entity @a[gamemode=spectator,team=jk_tt_yellow] run tellraw @a[team=jk_tt_yellow] "..but the death could not back to life."

tag @s add jk_tt_on_game
scoreboard players reset @s jk_tt_team_tri