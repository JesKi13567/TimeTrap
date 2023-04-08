#scoreboard objectives add jk_tt_mem dummy
gamerule sendCommandFeedback false

scoreboard objectives add jk_tt_s dummy "秒"
scoreboard objectives add jk_tt_m dummy "分"
scoreboard objectives add jk_tt_h dummy "时"

# 检测
scoreboard objectives add jk_tt_death deathCount "死亡接口"
scoreboard objectives add jk_tt_deathlimit dummy "死亡剩余次数"
scoreboard objectives add jk_tt_timeadd dummy "增加时间"
scoreboard objectives add jk_tt_timelimit dummy "剩余时间"
scoreboard objectives add jk_tt_sneak minecraft.custom:sneak_time "潜行检测"

# 额外
scoreboard objectives add jk_tt_hp health "♥"
scoreboard objectives add jk_tt_team dummy "队伍分数"
scoreboard objectives add jk_tt_team_tri trigger "队伍触发"

## 虚拟实体分数 -> jk_tt_mem

# #init_time   #init_life   #init_punish   #init_diff
#  初始时间      初始生命       死亡惩罚       游戏难度

scoreboard players set #init_time jk_tt_mem 1
scoreboard players set #init_life jk_tt_mem 1
scoreboard players set #init_punish jk_tt_mem 1
scoreboard players set #init_diff jk_tt_mem 1

#  #keep_inv   #night_vision   #haste     #tools      #tab
#  死亡不掉落     永久夜视      永久急迫    初始工具   tab显示分数
scoreboard players set #keep_inv jk_tt_mem 0
scoreboard players set #night_vision jk_tt_mem 0
scoreboard players set #haste jk_tt_mem 0
scoreboard players set #tools jk_tt_mem 0
scoreboard players set #tab jk_tt_mem 0
scoreboard objectives setdisplay list

#     #public      #pvp     #game_on   #mode   #lang
#     分队模式     队内pvp    游戏进度  游戏模式  语言

scoreboard players set #public jk_tt_mem 0
scoreboard players set #pvp jk_tt_mem 0
scoreboard players reset #game_on jk_tt_mem
scoreboard players reset #mode jk_tt_mem
scoreboard players reset #lang jk_tt_mem

# 计算相关
scoreboard players set #1 jk_tt_mem 1
scoreboard players set #2 jk_tt_mem 2
scoreboard players set #3 jk_tt_mem 3
scoreboard players set #4 jk_tt_mem 4
scoreboard players set #60 jk_tt_mem 60
scoreboard players set #temp jk_tt_mem 0

# 队伍
team add jk_tt_public "公共队伍"
team modify jk_tt_public friendlyFire false

team add jk_tt_red "红队"
team modify jk_tt_red color red
team modify jk_tt_red friendlyFire false

team add jk_tt_blue "蓝队"
team modify jk_tt_blue color blue
team modify jk_tt_blue friendlyFire false

team add jk_tt_green "绿队"
team modify jk_tt_green color green
team modify jk_tt_green friendlyFire false

team add jk_tt_yellow "黄队"
team modify jk_tt_yellow color yellow
team modify jk_tt_yellow friendlyFire false

function jk_tt:init/menu