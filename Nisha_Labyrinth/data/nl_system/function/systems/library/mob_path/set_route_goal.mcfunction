#> nl_system:systems/library/mob_path/set_route_goal
# 경비병이 이동할 좌표를 설정한다
#@context 경비병(wandering trader) with entity @s Passengers[{id:"minecraft:marker"}].data
#@input
#   data:{tag: route_a | route_b , mode:(현재 루트 번호 )),route:[{X:(double),Y:(double),Z:(double)},{X:(double),Y:(double),Z:(double)}]}



$execute unless data entity @s WanderTarget unless data entity @s Passengers[{id:"minecraft:marker"}].data.route[$(mode)] store result entity @e[type=marker,tag=NL,tag=patrol,tag=$(tag),limit=1,sort=nearest] data.mode int 1 run return run scoreboard players set @s NL_mode 0

$execute unless data entity @s WanderTarget run data modify entity @s WanderTarget set from entity @s Passengers[{id:"minecraft:marker"}].data.route[$(mode)]