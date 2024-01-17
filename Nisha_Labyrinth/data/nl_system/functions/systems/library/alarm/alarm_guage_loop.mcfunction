execute if score r NL_lib_alarm_gauge matches ..300 run bossbar set nl:lib_alarm_gauge color white
execute if score r NL_lib_alarm_gauge matches 301..400 run bossbar set nl:lib_alarm_gauge color green
execute if score r NL_lib_alarm_gauge matches 401..800 run bossbar set nl:lib_alarm_gauge color purple
execute if score r NL_lib_alarm_gauge matches 801..999 run bossbar set nl:lib_alarm_gauge color red
execute if score r NL_lib_alarm_status matches 0 if score r NL_lib_alarm_gauge matches 1000.. run advancement grant @a[team=roamer] only nishalabyrinth:system/library/alarm_red_gk
execute if score r NL_lib_alarm_status matches 0 if score r NL_lib_alarm_gauge matches 1000.. run advancement grant @a[team=explorer,advancements={nishalabyrinth:system/location/in_the_lib=true}] only nishalabyrinth:system/library/alarm_red

execute as @a[team=explorer,advancements={nishalabyrinth:system/location/in_the_lib=true}] at @s positioned as @e[type=wandering_trader,tag=patrol,tag=NL,sort=nearest,limit=1] if predicate nishalabyrinth:system/library/lib_patrol_range_dist run tag @s add lib_range

#execute as @e[tag=patrol] at @s if entity @a[team=explorer,distance=..5.5] run tag @a[team=explorer,distance=..5.5] add lib_range
execute as @a[team=explorer,tag=lib_range] at @s positioned as @e[type=wandering_trader,tag=patrol,tag=NL,sort=nearest,limit=1] unless predicate nishalabyrinth:system/library/lib_patrol_range_dist run tag @s remove lib_range
execute if score r NL_lib_alarm_status matches 0 run function nishalabyrinth:system/library/alarm/alarm_guage_calc
execute if score r NL_lib_alarm_gauge matches ..-1 run scoreboard players set r NL_lib_alarm_gauge 0



