#execute if score @s NL_mode matches 1 run data merge entity @s {WanderTarget:{X:702,Y:39,Z:565}}
execute if score @s NL_mode matches 1 run data modify entity @s WanderTarget merge from storage nl:lib_point_pos point1
