schedule function jk_tt:gaming/author 2s replace

scoreboard players add #author jk_tt_mem 1
execute if score #author jk_tt_mem matches 1 run tellraw @a [{"text":"JK137加入了游戏","color":"yellow"}]
execute if score #author jk_tt_mem matches 2 run tellraw @a "<JK137> 哈喽啊各位，我是本数据包的作者，祝贺各位屠龙成功了！"
execute if score #author jk_tt_mem matches 3 run tellraw @a "<JK137> 如果觉得该数据包不错的话，可以关注一下我的社交账号："
execute if score #author jk_tt_mem matches 4 run tellraw @a ["",{"text":"  b站账号","color":"light_purple"},"          ",{"text":"mcbbs账号","color":"yellow"},"          ",{"text":"github账号","color":"blue"},{"text":"\n凤凰院i凶真","color":"light_purple","underlined":true,"clickEvent":{"action":"open_url","value":"https://space.bilibili.com/285801820"}},"    ",{"text":"qweasdzxc_haha","color":"yellow","underlined":true,"clickEvent":{"action":"open_url","value":"https://www.mcbbs.net/?1479963"}},"    ",{"text":"JesKi13567","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/JesKi13567"}}]
execute if score #author jk_tt_mem matches 5 run tellraw @a "<JK137> 我会给大家带来更多数据包作品的！"
execute if score #author jk_tt_mem matches 6 run tellraw @a [{"text":"JK137退出了游戏","color":"yellow"}]
execute if score #author jk_tt_mem matches 12 run tellraw @a ["担心计分板被占用？",{"text":"点我卸载本数据包","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/function jk_tt:init/unload"}}]
execute if score #author jk_tt_mem matches 13.. run schedule clear jk_tt:gaming/author