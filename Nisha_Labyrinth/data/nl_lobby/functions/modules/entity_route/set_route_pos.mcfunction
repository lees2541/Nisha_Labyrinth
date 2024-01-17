#> nl_lobby:modules/entity_route/set_route_pos
# 엔티티에 탑승하고 있는 마커에 루트들의 경유지들을 차례대로 입력한다
#@context 루트대로 움직이는 엔티티 with entity @s Passengers[{id:"minecraft:marker"}].data

execute unless data entity @s Passengers[{id:"minecraft:marker"}].data.route[0].point run return 1


function nl_lobby:modules/entity_route/get_route_point_pos with entity @s Passengers[{id:"minecraft:marker"}].data.route[0]
$data modify entity @e[type=marker,tag=NL,limit=1,sort=nearest,tag=$(tag)] data.route append from storage nl:buffer position
$data remove entity @e[type=marker,tag=NL,limit=1,sort=nearest,tag=$(tag)] data.route[0]
function nl_lobby:modules/entity_route/set_route_pos with entity @s Passengers[{id:"minecraft:marker"}].data
