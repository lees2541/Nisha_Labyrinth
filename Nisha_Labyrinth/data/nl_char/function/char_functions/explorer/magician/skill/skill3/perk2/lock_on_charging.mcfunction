execute as @e[tag=lock_on] at @s run function nl_system:systems/status_effects/rooted/rooted {time:5}
execute as @s[team=explorer,tag=lock_on] at @s run tp @s ~ ~ ~ facing entity @n[team=roamer]

execute if score @s NL_timer matches 1.. run scoreboard players remove @s NL_timer 1
execute if score @s NL_timer matches ..0 run damage @s 1 magic by @s
execute if score @s NL_timer matches ..0 run scoreboard players set @s NL_timer 11

