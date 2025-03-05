say 스킬 2!!!

execute as @e[type=interaction,tag=trap,tag=occupied,limit=1] at @s run function nl_char:char_functions/roamer/hunter/skill/skill1/remove_trap
scoreboard players add @s NL_trap_count 1