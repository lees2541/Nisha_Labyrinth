

execute at @s run summon wolf ~ ~ ~ {Sitting:1b,Invulnerable:1b,anger_end_time:0,Tags:["NL","hunter","pet","wolf"],attributes:[{id:"minecraft:follow_range",base:30},{id:"minecraft:scale",base:1.3},{id:"minecraft:movement_speed",base:0.45}]}
execute at @s as @n[type=wolf,tag=hunter,tag=pet] run data modify entity @s Owner set from entity @p[team=roamer,tag=hunter] UUID
execute as @n[type=wolf,tag=hunter,tag=pet] run data modify entity @s Sitting set value 0b

#execute at @s as @n[type=wolf,tag=hunter,tag=pet] run data modify entity @s angry_at set value [I;111,111,111,111]
#execute at @s as @n[type=wolf,tag=hunter,tag=pet] run data modify entity @s anger_end_time set value 1
execute at @s as @n[type=wolf,tag=hunter,tag=pet] run data modify entity @s NoAI set value false
return 1


































