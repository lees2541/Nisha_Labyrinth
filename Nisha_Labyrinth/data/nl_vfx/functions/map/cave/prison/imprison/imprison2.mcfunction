execute as @e[type=armor_stand,tag=coordinate,tag=NL,tag=imprison,tag=nl_vfx,tag=imp_arm,limit=1] at @s run playsound minecraft:imprison_chain master @a
execute as @e[type=armor_stand,tag=coordinate,tag=NL,tag=imprison,tag=nl_vfx,tag=imp_arm,limit=1] at @s run summon item_display ~ ~ ~ {Silent:1b,Tags:["nl_vfx","NL","vind"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:diamond_axe",Count:1b,tag:{CustomModelData:80003}}}
execute at @e[tag=vind] run particle squid_ink ~ ~ ~ 1 2 1 0.008 6