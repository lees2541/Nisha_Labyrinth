#> nl_system:systems/flashlight/alarm/condition_check
# 앞에 배회자가 있는지 체크하는 재귀함수 (실제 화면기준 그 범위안에 배회자가 있는 지 체크)
#@context
#@within nl_system:loop/player/explorer/explorer_loop


#execute store result storage nl:buffer operation.result float 0.3 run scoreboard players add #alarm NL_flashlight 1
#execute if score #alarm NL_flashlight matches 4.. run return fail
#$execute if entity @e[team=roamer,distance=..$(result)] run return 1
## if function 은 매크로 지원이 안되서 폐기
#execute positioned ^ ^ ^1 if function nl_system:systems/flashlight/alarm/condition_check run return 1 
#return fail



execute positioned ^ ^ ^1 if entity @e[team=roamer,distance=..0.4] run return 1
execute positioned ^ ^ ^2 if entity @e[team=roamer,distance=..0.8] run return 1
execute positioned ^ ^ ^3 if entity @e[team=roamer,distance=..1.2] run return 1
execute positioned ^ ^ ^4 if entity @e[team=roamer,distance=..1.6] run return 1
execute positioned ^ ^ ^5 if entity @e[team=roamer,distance=..2.0] run return 1
execute positioned ^ ^ ^6 if entity @e[team=roamer,distance=..2.4] run return 1
execute positioned ^ ^ ^7 if entity @e[team=roamer,distance=..2.8] run return 1
execute positioned ^ ^ ^8 if entity @e[team=roamer,distance=..3.2] run return 1
execute positioned ^ ^ ^9 if entity @e[team=roamer,distance=..3.6] run return 1
execute positioned ^ ^ ^10 if entity @e[team=roamer,distance=..4.0] run return 1
return 0
