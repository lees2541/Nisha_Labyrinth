#execute as @p run say 아얏
execute as @e[type=interaction,tag=trap] at @s if entity @p[distance=..0.7,tag=explorer] run function nl_char:char_functions/roamer/hunter/skill/skill1/active_trap

execute as @e[type=wolf,tag=wolf,tag=pet,predicate=nl_test:test1] run data modify entity @s Sitting set value 1b
execute as @e[type=wolf,tag=wolf,tag=pet,predicate=nl_test:test1] run data modify entity @s Sitting set value 0b 

execute as @n[type=wolf,tag=hunter,tag=pet,tag=NL] if data entity @s AngryAt unless data entity @s active_effects[{id:"minecraft:speed"}] at @s run function nl_char:char_functions/roamer/hunter/skill/skill3/stop_chasing

execute as @n[type=wolf,tag=pet,tag=hunter] at @s if entity @a[team=explorer,tag=debuff,distance=..9] run effect give @s glowing 1

