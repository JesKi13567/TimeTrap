execute unless score #lang jk_tt_mem matches 1 run tellraw @a [{"text":"你在骗人...你明明都输掉了..."},{"text":"必将狠狠地惩罚，哼","color":"red"}]
execute if score #lang jk_tt_mem matches 1 run tellraw @a [{"text":"You are lying..you even lost the game.."},{"text":"\nI will punish you now~","color":"red"}]
kill @a
playsound entity.villager.no player @a