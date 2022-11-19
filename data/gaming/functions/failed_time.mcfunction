execute if score #public mem matches 0 run gamemode spectator @s
execute if score #public mem matches 0 run tellraw @a [{"text":"※  ","color":"green"},{"selector":"@s"},{"text":" 的怀表停了！","color":"white"},{"text":"等待剩余的玩家获胜。。","color":"aqua"}]

execute if score #public mem matches 1 run tellraw @a [{"text":"※  所有玩家 的怀表都停了！","color":"white"}]
execute if score #public mem matches 1 run gamemode spectator @a
