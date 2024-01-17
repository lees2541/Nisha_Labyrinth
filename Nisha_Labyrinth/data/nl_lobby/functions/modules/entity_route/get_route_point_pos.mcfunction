#> nl_lobby:modules/entity_route/get_route_point_pos
# 루트 포인트의 x , y , z 좌표를 기록한다
#@context 경비병 with entity @s Passengers[{id:"minecraft:marker"}].data.route[0]
#@output
#   storage nl:buffer
#       position.X
#       position.Y
#       position.Z



$execute store result storage nl:buffer position.X int 1 run data get entity @e[type=text_display,tag=library,tag=NL,tag=point$(point),limit=1,sort=nearest] Pos[0]
$execute store result storage nl:buffer position.Y int 1 run data get entity @e[type=text_display,tag=library,tag=NL,tag=point$(point),limit=1,sort=nearest] Pos[1]
$execute store result storage nl:buffer position.Z int 1 run data get entity @e[type=text_display,tag=library,tag=NL,tag=point$(point),limit=1,sort=nearest] Pos[2]