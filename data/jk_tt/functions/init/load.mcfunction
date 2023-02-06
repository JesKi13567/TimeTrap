# 本页面为 /reload 后第一个执行的页面
scoreboard objectives add jk_tt_mem dummy
# 游戏第一次加载
execute unless score #game_on jk_tt_mem matches 0.. run function jk_tt:init/stat
# 游戏进行
execute if score #game_on jk_tt_mem matches 1 run tellraw @a ["",{"text":"【时间陷阱】","color":"green"},{"text":"游戏已开始！\n"},{"text":"点我重置游戏","color":"yellow","underlined":true,"clickEvent": {"action":"run_command","value":"/function jk_tt:init/stat"}}]
# 游戏结束
execute if score #game_on jk_tt_mem matches 2 run tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"【时间陷阱】","color":"green"},"这个世界已经获胜了，重新开一个存档吧！"]
execute if score #game_on jk_tt_mem matches 3 run tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"【时间陷阱】","color":"green"},"这个世界已经失败了，也许可以重新游玩？"]

execute if score #game_on jk_tt_mem matches 2.. run tellraw @a [{"text":"强行再玩\n\n","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/function jk_tt:init/force_reload"}},{"text":"卸载本数据包（删除计分板等）","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/function jk_tt:init/unload"}}]

# 单人重进bug
execute if score #game_on jk_tt_mem matches 3 run tellraw @a ["\n单人游戏重进出现bug？",{"text":"点我检查\n","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/function jk_tt:gaming/bug/check"},"hoverEvent":{"action":"show_text","value":"不要骗人哦，否则惩罚你awa"}}]