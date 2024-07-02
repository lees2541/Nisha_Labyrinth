say 늪생김첫번쨰


scoreboard players set #tainted NL_temp 0
execute store result score #tainted_max NL_temp run data get storage nl:settings swamp.tainted.max 1
execute as @e[type=interaction,tag=swamp,tag=occupied,tag=tainted,tag=NL] run scoreboard players add #tainted NL_temp 1
execute unless score #tainted NL_temp < #tainted_max NL_temp run return fail
say 늪생김 최대치 아직 안됨

## 오염된 늪이 최대개수가 안됐을 때
execute as @e[type=interaction,tag=NL,tag=!occupied,tag=swamp,tag=!tainted,limit=1,sort=random] run data merge entity @s {Tags:["NL","swamp","occupied","tainted"]}
execute as @e[type=interaction,tag=NL,tag=occupied,tag=swamp,tag=tainted] on passengers if entity @s[type=item_display,tag=NL,tag=swamp] run data modify entity @s item merge value {id:"minecraft:lime_dye",count:1b}
execute store result storage nl:in_game status.location.main.swamp.tainted int 1 run scoreboard players add #tainted NL_temp 1