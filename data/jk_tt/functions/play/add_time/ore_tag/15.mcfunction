tag @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] add jk_tt_ore
tag @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] add jk_tt_ore
tag @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] add jk_tt_ore
tag @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] add jk_tt_ore
tag @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}}] add jk_tt_ore
tag @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] add jk_tt_ore
execute if score #version jk_tt_mem matches 16.. run function jk_tt:play/add_time/ore_tag/16