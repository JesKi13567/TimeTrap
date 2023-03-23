tellraw @a [{"text":"看来确实是出现了这个bug，妈咪妈咪哄！","color":"light_purple"},{"text":"\n为你增加了 10 秒的时间！","color":"yellow"}]
execute if score #public jk_tt_mem matches 0 run scoreboard players add @p jk_tt_timelimit 10
execute if score #public jk_tt_mem matches 1 run scoreboard players add #public jk_tt_timelimit 10
tellraw @a ["",{"text":"【时间陷阱】","color":"green"},"现在bug已经解决了，尽情游玩吧！"]
playsound entity.villager.yes player @a
scoreboard players set #game_on jk_tt_mem 1