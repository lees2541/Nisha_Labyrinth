function nl_system:systems/library/mob_path/lib_path_moving
function nl_system:loop/library/alarm_gauge_loop
#function nl_system:loop/library/mob_gauge_bar_loop
#execute if score r NL_lib_alarm_status matches 2 run function nishalabyrinth:system/prison/loop/jail_break_loop
execute as @a[advancements={nl_system:location/library/in_the_library=true},predicate=!nl_system:location/library/in_the_library] run advancement grant @s only nl_system:location/main/in_the_main


#function nishalabyrinth:system/prison/loop/prison_loop
#execute as @a[advancements={nishalabyrinth:system/location/in_the_lib=false},predicate=nishalabyrinth:system/library/in_the_library] run advancement grant @s only nishalabyrinth:system/location/in_the_lib


execute store result bossbar nl:lib_alarm_gauge value run scoreboard players get #library NL_lib_alarm_gauge