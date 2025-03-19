
data remove entity @s item.components
data merge entity @s {Tags:["NL","swamp"],item_display:"head",item:{id:"minecraft:bamboo",count:1b,components:{item_model:"map/swamp/swamp_marker"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}

data remove entity @s Passengers
execute at @s run kill @e[tag=swamp_passenger,distance=..0.1]