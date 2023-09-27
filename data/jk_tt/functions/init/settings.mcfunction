execute if score #public jk_tt_mem matches 0..1 run team join jk_tt_public @a

# 对抗模式设置
execute if score #public jk_tt_mem matches 0 as @a run function jk_tt:init/settings/teams/set/solo

# 合作模式设置
execute if score #public jk_tt_mem matches 1 run function jk_tt:init/settings/teams/set/public

execute if score #public jk_tt_mem matches 2..4 run function jk_tt:init/settings/teams/set/red
execute if score #public jk_tt_mem matches 2..4 run function jk_tt:init/settings/teams/set/blue
execute if score #public jk_tt_mem matches 3..4 run function jk_tt:init/settings/teams/set/green
execute if score #public jk_tt_mem matches 4 run function jk_tt:init/settings/teams/set/yellow

# tab展示栏
execute if score #public jk_tt_mem matches 1..4 run function jk_tt:init/settings/teams/show