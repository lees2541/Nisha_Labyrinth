execute as @e[tag=area1,type=marker,limit=2,sort=random] at @s run function nl_test:spread with entity @s data
execute as @e[type=marker,limit=1,tag=test,tag=!origin,sort=random] run function nl_test:place_redstone
kill @e[type=marker,tag=!origin,tag=!redstone] 
execute as @e[tag=area2,type=marker,limit=2,sort=random] at @s run function nl_test:spread with entity @s data
execute as @e[type=marker,limit=1,tag=test,tag=!origin,sort=random] run function nl_test:place_redstone
kill @e[type=marker,tag=!origin,tag=!redstone] 
execute as @e[tag=area3,type=marker,limit=2,sort=random] at @s run function nl_test:spread with entity @s data
execute as @e[type=marker,limit=1,tag=test,tag=!origin,sort=random] run function nl_test:place_redstone
kill @e[type=marker,tag=!origin,tag=!redstone] 