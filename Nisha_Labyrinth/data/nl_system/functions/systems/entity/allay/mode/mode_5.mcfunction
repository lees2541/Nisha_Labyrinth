#> nl_system:systems/entity/allay/mode/mode_5
# 알레이가 열쇠를 얻고 자동으로 감옥으로 가는 모드
#@within nl_system:loop/entity/allay/allay_loop


execute at @s facing entity @e[type=marker,tag=NL,tag=prison,tag=area,limit=1,sort=nearest] eyes positioned ^ ^ ^0.1 run tp @s ~ ~ ~ facing entity @e[type=marker,tag=NL,tag=prison,tag=area,limit=1,sort=nearest] eyes



execute at @s if entity @e[type=marker,tag=NL,tag=area,tag=prison,distance=..0.5] if entity @e[type=allay,tag=allay,tag=NL,scores={NL_mode=6}] run return run function nl_system:systems/prison/escape/escape_prison

execute at @s if entity @e[type=marker,tag=NL,tag=area,tag=prison,distance=..0.5] run scoreboard players set @s NL_mode 6