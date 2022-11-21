# 分配队伍
execute if score #temp jk_tt_mem matches 20.. run scoreboard players reset #temp jk_tt_mem
execute as @a[sort=random] store result score @s jk_tt_team run scoreboard players add #temp jk_tt_mem 1
scoreboard players operation @a jk_tt_team %= #public jk_tt_mem
execute as @a run function jk_tt_init:settings/teams/player_team

function jk_tt_init:menu

#execute store result score #team_red jk_tt_mem if entity @a[team=jk_tt_red]
#execute store result score #team_blue jk_tt_mem if entity @a[team=jk_tt_blue]
#execute store result score #team_green jk_tt_mem if entity @a[team=jk_tt_green]
#execute store result score #team_yellow jk_tt_mem if entity @a[team=jk_tt_yellow]

#tellraw @a ["红队：",{"score":{"name":"#team_red","objective":"jk_tt_mem"},"color":"aqua"},{"text":" 蓝队：","color":"white"},{"score":{"name":"#team_blue","objective":"jk_tt_mem"},"color":"aqua"},{"text":" 绿队：","color":"white"},{"score":{"name":"#team_green","objective":"jk_tt_mem"},"color":"aqua"},{"text":" 黄队：","color":"white"},{"score":{"name":"#team_yellow","objective":"jk_tt_mem"},"color":"aqua"}]