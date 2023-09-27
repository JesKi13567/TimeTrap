# 每 1 秒执行一次
# 计算时间

#   jk_tt_timelimit     jk_tt_s    jk_tt_m   jk_tt_h 
#    当前时间               秒          分        时

scoreboard players remove @s jk_tt_timelimit 1

scoreboard players operation @s jk_tt_s = @s jk_tt_timelimit
scoreboard players operation @s jk_tt_s %= #60 jk_tt_mem

scoreboard players operation @s jk_tt_m = @s jk_tt_timelimit
scoreboard players operation @s jk_tt_m /= #60 jk_tt_mem
scoreboard players operation @s jk_tt_m %= #60 jk_tt_mem

scoreboard players operation @s jk_tt_h = @s jk_tt_timelimit
scoreboard players operation @s jk_tt_h /= #60 jk_tt_mem
scoreboard players operation @s jk_tt_h /= #60 jk_tt_mem

gamemode spectator @s[scores={jk_tt_timelimit=..0}]
execute unless score #lang jk_tt_mem matches 1 as @s[scores={jk_tt_timelimit=..0}] run tellraw @a [{"text":"※  ","color":"green"},{"selector":"@s"},{"text":" 的怀表停了！","color":"white"},{"text":"等待剩余的玩家获胜。。","color":"aqua"}]
execute if score #lang jk_tt_mem matches 1 as @s[scores={jk_tt_timelimit=..0}] run tellraw @a [{"text":"※  ","color":"green"},{"selector":"@s"},{"text":" has run out of the time!","color":"white"},{"text":"\nWaiting for other players..","color":"aqua"}]

title @s title ""
execute if score @s jk_tt_m matches ..9 if score @s jk_tt_s matches ..9 run title @s subtitle ["",{"score":{"name":"@s","objective":"jk_tt_h"},"color":"aqua"},{"text":":","color":"white"},{"text": "0", "color": "aqua"},{"score":{"name":"@s","objective":"jk_tt_m"},"color":"aqua"},{"text":":","color":"white"},{"text": "0", "color": "aqua"},{"score":{"name":"@s","objective":"jk_tt_s"},"color":"aqua"}]
execute if score @s jk_tt_m matches ..9 if score @s jk_tt_s matches 10.. run title @s subtitle ["",{"score":{"name":"@s","objective":"jk_tt_h"},"color":"aqua"},{"text":":","color":"white"},{"text": "0", "color": "aqua"},{"score":{"name":"@s","objective":"jk_tt_m"},"color":"aqua"},{"text":":","color":"white"},{"score":{"name":"@s","objective":"jk_tt_s"},"color":"aqua"}]
execute if score @s jk_tt_m matches 10.. if score @s jk_tt_s matches ..9 run title @s subtitle ["",{"score":{"name":"@s","objective":"jk_tt_h"},"color":"aqua"},{"text":":","color":"white"},{"score":{"name":"@s","objective":"jk_tt_m"},"color":"aqua"},{"text":":","color":"white"},{"text": "0", "color": "aqua"},{"score":{"name":"@s","objective":"jk_tt_s"},"color":"aqua"}]
execute if score @s jk_tt_m matches 10.. if score @s jk_tt_s matches 10.. run title @s subtitle ["",{"score":{"name":"@s","objective":"jk_tt_h"},"color":"aqua"},{"text":":","color":"white"},{"score":{"name":"@s","objective":"jk_tt_m"},"color":"aqua"},{"text":":","color":"white"},{"score":{"name":"@s","objective":"jk_tt_s"},"color":"aqua"}]