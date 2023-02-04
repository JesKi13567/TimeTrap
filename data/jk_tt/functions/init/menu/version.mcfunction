execute unless score #version jk_tt_mem matches 15.. run function jk_tt:init/settings/version/check
execute if score #version jk_tt_mem matches 15 run tellraw @a {"text":"当前服务端版本：1.15.x！","color":"yellow"}
execute if score #version jk_tt_mem matches 16 run tellraw @a {"text":"当前服务端版本：1.16.x！","color":"yellow"}
execute if score #version jk_tt_mem matches 17 run tellraw @a {"text":"当前服务端版本：1.17.x！（或者更高）","color":"yellow"}