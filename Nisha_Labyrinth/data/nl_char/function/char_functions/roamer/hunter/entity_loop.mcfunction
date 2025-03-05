#execute as @p run say 아얏
execute as @e[type=interaction,tag=trap] at @s if entity @p[distance=..0.2,tag=explorer] run function nl_char:char_functions/roamer/hunter/skill/skill1/active_trap