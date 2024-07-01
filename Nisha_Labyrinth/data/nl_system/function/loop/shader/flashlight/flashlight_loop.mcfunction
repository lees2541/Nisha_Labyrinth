execute if score @s[tag=explorer] NL_alarm_timer matches 11..20 run function nl_system:systems/flashlight/set/flashlight0
execute if score @s[tag=explorer] NL_alarm_timer matches 1..10 run function nl_system:systems/flashlight/set/flashlight1

execute if score @s[tag=explorer] NL_alarm_timer matches 1.. run return 1

execute if score @s NL_flashlight matches 0 at @s run function nl_system:systems/flashlight/set/flashlight0

execute if score @s NL_flashlight matches 1 at @s run function nl_system:systems/flashlight/set/flashlight1