execute as @e[type=block_display,tag=NL,tag=prison_door] run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,2f]}}

execute as @e[type=block_display,tag=prison_door] at @s run playsound minecraft:prison_door_close block @a ~ ~ ~ 0.6

schedule function nl_vfx:map/cave/prison/jail_break/set_barrier 10t replace