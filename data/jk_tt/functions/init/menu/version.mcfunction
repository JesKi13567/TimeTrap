execute unless score #version jk_tt_mem matches 15.. run function jk_tt:init/settings/version/check
execute unless score #lang jk_tt_mem matches 1 if score #version jk_tt_mem matches 15 run tellraw @a {"text":"当前服务端版本：1.15.x！","color":"yellow"}
execute unless score #lang jk_tt_mem matches 1 if score #version jk_tt_mem matches 16 run tellraw @a {"text":"当前服务端版本：1.16.x！","color":"yellow"}
execute unless score #lang jk_tt_mem matches 1 if score #version jk_tt_mem matches 17 run tellraw @a {"text":"当前服务端版本：1.17.x！（或者更高）","color":"yellow"}
execute if score #lang jk_tt_mem matches 1 if score #version jk_tt_mem matches 15 run tellraw @a {"text":"Current server version: 1.15.x!","color":"yellow"}
execute if score #lang jk_tt_mem matches 1 if score #version jk_tt_mem matches 16 run tellraw @a {"text":"Current server version: 1.16.x!","color":"yellow"}
execute if score #lang jk_tt_mem matches 1 if score #version jk_tt_mem matches 17 run tellraw @a {"text":"Current server version: 1.17.x! (or higher)","color":"yellow"}