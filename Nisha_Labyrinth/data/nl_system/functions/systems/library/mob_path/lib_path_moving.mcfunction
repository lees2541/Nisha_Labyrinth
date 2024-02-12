
execute as @e[type=wandering_trader,tag=patrol,scores={NL_mode=0..},nbt={OnGround:1b}] at @s run function nl_system:systems/library/mob_path/change_mode with entity @s Passengers[{id:"minecraft:marker"}].data
execute as @e[type=wandering_trader,tag=patrol,scores={NL_mode=0..},nbt={OnGround:1b}] at @s run function nl_system:systems/library/mob_path/set_route_goal with entity @s Passengers[{id:"minecraft:marker"}].data
execute as @e[type=wandering_trader,tag=patrol,scores={NL_mode=0},nbt={OnGround:1b}] unless data entity @s WanderTarget run data modify entity @s WanderTarget set from entity @s Passengers[{id:"minecraft:marker"}].data.route[0]

## 주변에 스타캐치 리필 포인트가 있을 경우 스타캐치 활성화
execute as @e[type=text_display,tag=gauge_bar,tag=point,scores={NL_timer=..-1}] at @s if entity @e[type=text_display,tag=NL,tag=refill,distance=..3] run function nl_system:modules/star_catch/set/enable_star_catch with entity @s




####################







#execute if entity @e[scores={NL_mode=1},tag=patrol,nbt={OnGround:1b}] run function nishalabyrinth:system/library/move_on_path/route_a/route_1
#execute if entity @e[scores={NL_mode=2},tag=patrol,nbt={OnGround:1b}] run function nishalabyrinth:system/library/move_on_path/route_a/route_2
#execute if entity @e[scores={NL_mode=3},tag=patrol,nbt={OnGround:1b}] run function nishalabyrinth:system/library/move_on_path/route_a/route_3
#execute if entity @e[scores={NL_mode=4},tag=patrol,nbt={OnGround:1b}] run function nishalabyrinth:system/library/move_on_path/route_a/route_4
#execute if entity @e[scores={NL_mode=5},tag=patrol,nbt={OnGround:1b}] run function nishalabyrinth:system/library/move_on_path/route_b/route_5
#execute if entity @e[scores={NL_mode=6},tag=patrol,nbt={OnGround:1b}] run function nishalabyrinth:system/library/move_on_path/route_b/route_6
#execute if entity @e[scores={NL_mode=7},tag=patrol,nbt={OnGround:1b}] run function nishalabyrinth:system/library/move_on_path/route_b/route_7
#execute if entity @e[scores={NL_mode=8},tag=patrol,nbt={OnGround:1b}] run function nishalabyrinth:system/library/move_on_path/route_b/route_8
#execute if entity @e[scores={NL_mode=9},tag=patrol,nbt={OnGround:1b}] run function nishalabyrinth:system/library/move_on_path/route_b/route_9
#execute if entity @e[scores={NL_mode=10},tag=patrol,nbt={OnGround:1b}] run function nishalabyrinth:system/library/move_on_path/route_b/route_10
#execute if entity @e[scores={NL_mode=11},tag=patrol,nbt={OnGround:1b}] run function nishalabyrinth:system/library/move_on_path/route_b/route_11
#execute if entity @e[scores={NL_mode=12},tag=patrol,nbt={OnGround:1b}] run function nishalabyrinth:system/library/move_on_path/route_b/route_12
#execute if entity @e[scores={NL_mode=13},tag=patrol,nbt={OnGround:1b}] run function nishalabyrinth:system/library/move_on_path/route_b/route_13




