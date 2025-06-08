schedule function nl_char:char_functions/explorer/guard/skill/skill2/give_glowing 1t
effect give @s[team=explorer, tag=guard] absorption infinite 1
execute as @a[team=roamer] at @s run tp @s ~ ~ ~ facing entity @p[team=explorer,tag=guard] eyes


#advancement grant @s only nl_char:skill/guard/get_absorption
#function nl_char:char_functions/explorer/guard/skill/passive/get_absorption
function nl_system:modules/storage/scoreboard/operation/resource_count/calc_resource {resource:lifestone, operator:remove, operand:1}


## 연출
execute at @s run playsound minecraft:guard_roar player @a ^ ^ ^ 1 1.25 0.4
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 1 250
say 크아앙