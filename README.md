# TimeTrap | 时间陷阱
**中文** | [English](https://github.com/JesKi13567/TimeTrap/blob/main/README_English.md)

当前版本 1.4

时间陷阱数据包，适合 Minecraft 1.15+ 版本游玩，支持多人。

在 1.19.4 有个[特性](https://bugs.mojang.com/browse/MC-260903)，会导致击杀的人头落入伤害最高的玩家身上，请勿报告此bug！

请从 [Releases](https://github.com/JesKi13567/TimeTrap/releases) 下载稳定版数据包！

[【原创参考】](https://www.youtube.com/watch?v=ace5_aA2XkE)  [【mcbbs地址】](https://www.mcbbs.net/thread-1397232-1-1.html)  [【mcmod地址】](https://www.mcmod.cn/class/9519.html)  [【PMC地址】](https://www.planetminecraft.com/data-pack/time-trap-5891518/)

==================

**玩法**

你获得了一种诅咒，智子（不是）印在你瞳孔上的时间在不断流逝，

但你听说破除它的办法需要击败末影龙？！

你需要挖矿并消耗矿物来维持不断流逝的时间，

可以用锭丢进炼药锅内或者潜行于矿物方块上来增加时间。

==================

**如何装载数据包**

游玩时请先让管理员获得使用指令权限，

将数据包丢进datapacks文件夹后，

输入/reload开启菜单，（插件端请使用/minecraft:reload）

如未检测到数据包请使用/datapack list检查。

作为压缩包使用时，次级目录须为data文件夹和mcmeta简介。

==================

更新日志：

v1.4
+ 现在矿物分数可自定义了。
+ 删除了一堆没用的 "at @s" 和优化文件结构。
+ 将开始游戏时的位置作为出生点，设置为基岩。
+ 重写了游戏进行时加入的新玩家处理。
+ 结束时在侧边栏展示个人战绩，即时间分数。

v1.3.2
+ 修复了 1.16+ 矿物块上潜行不显示时间的bug。
+ 略微修改了游戏开始时给予的药效。
+ 加入初始属性选项：急迫。
+ 新选项：达成 2 小时获胜。
+ 不分语言包了，只需在菜单选择 [lang]

v1.3.1
+ 修复了选择普通/困难模式时溢出时间。
+ 普通/困难模式分数倍率写错。

v1.3
+ 分版本计算分数部分重写了。
+ 再次重写了文件格式。
+ 不再隐藏成就，加入2小时达成成就。
+ 加入了pvp抢夺时间。
+ 新增选项:初始时间-30分钟。
+ 多语言包已更新！包括菜单与注释。（仅英文）

v1.2.1
+ 单人游戏计时消失现在可以/reload修复了，就是要自己确认一下。
+ v1.2的多人游戏加入队伍的函数名没改，修了。

v1.2
+ 现在兼容1.15+的版本了！测试了1.15-1.19.2都可以正常运行！
+ 增加了一个检测游戏版本的函数，即能够检测1.15,1.16,1.17+的不同版本。
+ 修改了文件格式，大大提高了数据包的可读性！
+ 修复了时间闪闪闪的特性。

v1.1
+ 规范了取名方式，现在所有文件夹及计分板前缀以 “jk_tt_” 开头（来自“jk的timetrap”）。
+ 大幅修改文件夹格式，同时也加入了“卸载数据包”的选项（在游戏失败或成功后提示）。
+ 增加了多队伍模式（仅限多人，且选择“合作模式”时出现），能切换队伍内pvp了！
+ 游戏开始后的玩家有专门选择加入队伍的选项！（仅限合作模式-多队伍模式）。
+ 提示现在专门放出了一个选项，鼠标悬浮于其上方即可。
+ 修复了旁观者模式潜行消耗矿石块的bug。
- 紫水晶块是4个合成一个块（坏了我是云玩），所以减少了下分数。

v1.0.2
+ 修复了“死亡不掉落”选项的多维度掉落问题。

v1.0.1
+ 消耗矿石时能显示增加时间了。
+ 检测当前游戏是否开始，单人档能够暂停重进了！
+ 一些提示的修改，也加入了一些文本颜色。
+ 新增几个成就。
- 删除了重进使背包栏消失的特性（这真的不是bug）。

v1.0
+ 数据包第一次发布。