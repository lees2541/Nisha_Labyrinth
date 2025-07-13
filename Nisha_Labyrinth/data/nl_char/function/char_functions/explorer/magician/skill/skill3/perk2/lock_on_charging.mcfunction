#execute as @e[tag=lock_on] at @s run function nl_system:systems/status_effects/rooted/rooted {time:5}
execute as @p[team=roamer,tag=lock_on] anchored eyes rotated as @s positioned as @n[type=armor_stand,tag=lock_on, tag=roamer_marker,tag=NL] run tp @s ~ ~ ~ facing entity @p[team=explorer,tag=magician,tag=lock_on]
execute as @n[type=armor_stand,tag=lock_on, tag=magician_marker,tag=NL] at @s as @s[team=explorer,tag=lock_on] run tp @s ~ ~ ~ facing entity @n[team=roamer]

execute if score @s NL_timer matches 1.. run scoreboard players remove @s NL_timer 1
execute if score @s NL_timer matches ..0 run damage @s 1 magic by @s
execute if score @s NL_timer matches ..0 run scoreboard players set @s NL_timer 11

