#> nl_system:loop/entity/allay/allay_loop
# 각각의 알레이가 실행하는 루프
#@context as @e[type=allay,tag=NL,tag=allay]
#@within nl_system:loop/entity/entity_loop

#> 모드변경조건 체크
execute if score @s NL_mode matches ..1 at @s run function nl_system:systems/entity/allay/condition_check with entity @s Passengers[{id:"minecraft:marker"}].data

execute if score @s NL_mode matches 2 run effect give @s glowing infinite
execute unless score @s NL_mode matches 2 run effect clear @s glowing

#> 모드 별 실행
execute if score @s NL_mode matches 0 at @s run function nl_system:systems/entity/allay/mode/mode_0 with entity @s Passengers[{id:"minecraft:marker"}].data
execute if score @s NL_mode matches 1 at @s run function nl_system:systems/entity/allay/mode/mode_1 with entity @s Passengers[{id:"minecraft:marker"}].data
execute if score @s NL_mode matches 2 at @s run function nl_system:systems/entity/allay/mode/mode_2 with entity @s Passengers[{id:"minecraft:marker"}].data