effect give @e[tag=vind] invisibility 5
execute at @e[tag=imp_arm] run particle minecraft:squid_ink ~ ~ ~ 0 0 0 1 230
execute as @e[type=armor_stand,tag=coordinate,tag=NL,tag=imprison,tag=nl_vfx,tag=imp_arm,limit=1] at @s run playsound minecraft:imprison_end master @a

schedule function nl_vfx:map/cave/prison/imprison/imprison_end2 2t

