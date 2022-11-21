execute if score #public jk_tt_mem matches 0..1 run team join jk_tt_public @a

# 对抗模式设置
execute if score #public jk_tt_mem matches 0 run function jk_tt_init:settings/teams/solo_set

# 合作模式设置
execute if score #public jk_tt_mem matches 1 run function jk_tt_init:settings/teams/public_set

execute if score #public jk_tt_mem matches 2..4 run function jk_tt_init:settings/teams/red_set
execute if score #public jk_tt_mem matches 2..4 run function jk_tt_init:settings/teams/blue_set
execute if score #public jk_tt_mem matches 3..4 run function jk_tt_init:settings/teams/green_set
execute if score #public jk_tt_mem matches 4 run function jk_tt_init:settings/teams/yellow_set

# tab展示栏
execute if score #public jk_tt_mem matches 1..4 run function jk_tt_init:settings/teams/show
