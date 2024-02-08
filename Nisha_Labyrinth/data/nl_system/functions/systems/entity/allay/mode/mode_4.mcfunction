#> nl_system:systems/entity/allay/mode/mode_4
# 알레이가 열쇠를 얻고 자동으로 감옥으로 가는 모드
#@within nl_system:loop/entity/allay/allay_loop


execute at @s facing entity @e[type=marker,tag=NL,tag=area1,tag=area,limit=1,sort=nearest] eyes positioned ^ ^ ^0.1 run tp @s ~ ~ ~ facing entity @e[type=marker,tag=NL,tag=area1,tag=area,limit=1,sort=nearest] eyes
execute at @s if entity @e[type=marker,tag=NL,tag=area,tag=area1,distance=..1.5] run scoreboard players set @s NL_mode 5