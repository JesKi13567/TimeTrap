schedule function gaming:author 2s replace

scoreboard players add #author mem 1
execute if score #author mem matches 1 run tellraw @a [{"text":"JK137加入了游戏","color":"yellow"}]
execute if score #author mem matches 2 run tellraw @a "<JK137> 哈喽啊各位，我是本数据包的作者，祝贺各位屠龙成功了！"
execute if score #author mem matches 3 run tellraw @a "<JK137> 如果觉得该数据包不错的话，可以关注一下我的b站账号："
execute if score #author mem matches 4 run tellraw @a [{"text":"<JK137> "},{"text":"我的b站主页","color":"aqua","underlined":true,"clickEvent":{"action":"open_url","value":"https://space.bilibili.com/285801820"}}]
execute if score #author mem matches 5 run tellraw @a "<JK137> 我会给大家带来更多数据包作品的！"
execute if score #author mem matches 6 run tellraw @a [{"text":"JK137退出了游戏","color":"yellow"}]
execute if score #author mem matches 6.. run schedule clear gaming:author
