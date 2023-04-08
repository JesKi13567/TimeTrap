schedule function jk_tt:play/author 2s replace
scoreboard players add #author jk_tt_mem 1
execute if score #author jk_tt_mem matches 4 run function jk_tt:author

execute unless score #lang jk_tt_mem matches 1 if score #author jk_tt_mem matches 1 run tellraw @a [{"text":"JK137加入了游戏","color":"yellow"}]
execute unless score #lang jk_tt_mem matches 1 if score #author jk_tt_mem matches 2 run tellraw @a "<JK137> 哈喽啊各位，我是本数据包的作者，祝贺各位成功完成了游戏！"
execute unless score #lang jk_tt_mem matches 1 if score #author jk_tt_mem matches 3 run tellraw @a "<JK137> 如果觉得该数据包不错的话，可以关注一下我的社交账号："
execute unless score #lang jk_tt_mem matches 1 if score #author jk_tt_mem matches 5 run tellraw @a "<JK137> 我会给大家带来更多数据包作品的！"
execute unless score #lang jk_tt_mem matches 1 if score #author jk_tt_mem matches 6 run tellraw @a [{"text":"JK137退出了游戏","color":"yellow"}]
execute unless score #lang jk_tt_mem matches 1 if score #author jk_tt_mem matches 10 run tellraw @a ["担心计分板被占用？",{"text":"点我卸载本数据包","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/function jk_tt:init/uninstall"}}]

execute if score #lang jk_tt_mem matches 1 if score #author jk_tt_mem matches 1 run tellraw @a [{"text":"JK137 joined the game.","color":"yellow"}]
execute if score #lang jk_tt_mem matches 1 if score #author jk_tt_mem matches 2 run tellraw @a "<JK137> Congratulations! I'm the author of the TimeTrap datapack."
execute if score #lang jk_tt_mem matches 1 if score #author jk_tt_mem matches 3 run tellraw @a "<JK137> If you think this is a great datapack, just subscribe me :)"
execute if score #lang jk_tt_mem matches 1 if score #author jk_tt_mem matches 5 run tellraw @a "<JK137> And I'll make more datapacks for you!"
execute if score #lang jk_tt_mem matches 1 if score #author jk_tt_mem matches 6 run tellraw @a [{"text":"JK137 left the game.","color":"yellow"}]
execute if score #lang jk_tt_mem matches 1 if score #author jk_tt_mem matches 10 run tellraw @a ["Worried for occupied scoreboard?",{"text":"Click me to uninstall","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/function jk_tt:init/uninstall"}}]

execute if score #author jk_tt_mem matches 11.. run schedule clear jk_tt:play/author