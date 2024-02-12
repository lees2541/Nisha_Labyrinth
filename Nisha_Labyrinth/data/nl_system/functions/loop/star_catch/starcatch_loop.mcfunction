execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_timer=20}] if entity @s[tag=right] run function nl_system:modules/star_catch/point_moving/left/left1
execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_timer=5}] if entity @s[tag=left] run function nl_system:modules/star_catch/point_moving/left/left2
execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_timer=9}] if entity @s[tag=left] run function nl_system:modules/star_catch/point_moving/left/left3
execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_timer=11}] if entity @s[tag=left] run function nl_system:modules/star_catch/point_moving/left/left4
execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_timer=15}] if entity @s[tag=left] run function nl_system:modules/star_catch/point_moving/left/left5

execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_timer=20}] if entity @s[tag=left] run function nl_system:modules/star_catch/point_moving/right/right1
execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_timer=5}] if entity @s[tag=right] run function nl_system:modules/star_catch/point_moving/right/right2
execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_timer=9}] if entity @s[tag=right] run function nl_system:modules/star_catch/point_moving/right/right3
execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_timer=11}] if entity @s[tag=right] run function nl_system:modules/star_catch/point_moving/right/right4
execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_timer=15}] if entity @s[tag=right] run function nl_system:modules/star_catch/point_moving/right/right5







##
scoreboard players add @e[type=text_display,tag=gauge_bar,tag=point,tag=!pause,scores={NL_timer=0..}] NL_timer 1