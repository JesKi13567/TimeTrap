# 本页面为 /reload 后第一个执行的页面

#gamerule doImmediateRespawn true

scoreboard objectives add mem dummy

scoreboard objectives add s dummy "秒"
scoreboard objectives add m dummy "分"
scoreboard objectives add h dummy "时"

# 检测
scoreboard objectives add death deathCount "死亡接口"
scoreboard objectives add death_limit dummy "死亡剩余次数"
scoreboard objectives add time_limit dummy "剩余时间"
scoreboard objectives add sneak minecraft.custom:sneak_time "潜行检测"
scoreboard objectives add leave_game minecraft.custom:leave_game "离开游戏"

# 额外
scoreboard objectives add hp health "♥"

# 虚拟实体分数

# #init_time  #init_life   #init_punish   #init_difficulty  
#  初始时间     初始生命       死亡惩罚         游戏难度    

scoreboard players set #init_time mem 1
scoreboard players set #init_life mem 1
scoreboard players set #init_punish mem 1
scoreboard players set #init_difficulty mem 1
scoreboard players set #keep_inv mem 0
scoreboard players set #night_vision mem 0
scoreboard players set #tools mem 0
scoreboard players set #tab mem 0
scoreboard objectives setdisplay list

#        #public             #game_on
#   生命/时间是否公用        游戏是否启动

scoreboard players set #public mem 0
execute unless score #game_on mem matches 1.. run scoreboard players set #game_on mem 0

# 计算相关
scoreboard players set #2 mem 2
scoreboard players set #60 mem 60
scoreboard players set #temp mem 0

function init:menu