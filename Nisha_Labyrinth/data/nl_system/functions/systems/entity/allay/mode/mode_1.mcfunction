#> nl_system:systems/entity/allay/mode/mode_1
# 알레이가 원래 장소로 돌아가는 모드
#@within nl_system:loop/entity/allay/allay_loop

$execute at @s facing entity @e[type=marker,tag=area,tag=$(tag),limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.1 facing entity @e[type=marker,tag=area,tag=$(tag),limit=1,sort=nearest] eyes

$execute if entity @e[type=marker,tag=area,tag=$(tag),distance=..0.1] run scoreboard players set @s NL_mode 0