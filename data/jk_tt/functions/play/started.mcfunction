# as @a[tag=!jk_tt_on_game,team=!jk_tt_public]
clear @s
effect clear @s
team join jk_tt_public @s
scoreboard players reset @s jk_tt_record

function jk_tt:init/help
execute unless score #lang jk_tt_mem matches 1 run tellraw @s ["",{"text":"【时间陷阱】","color":"green"},"检测到您从游戏开始才加入，已为您重置背包！"]
execute if score #lang jk_tt_mem matches 1 run tellraw @s ["",{"text":"【TimeTrap】","color":"green"},"You joined the world when the game started, so we cleared your inventory!"]

execute if score #tools jk_tt_mem matches 1 run function jk_tt:play/tools
execute if score #public jk_tt_mem matches 0 run function jk_tt:init/settings/teams/set/solo
execute if score #public jk_tt_mem matches 0..1 run tag @s add jk_tt_on_game
execute if score #public jk_tt_mem matches 0..1 run gamemode survival
execute if score #public jk_tt_mem matches 2.. run function jk_tt:play/team/choose