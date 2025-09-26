#say 낙서낙서놀이

execute on target unless items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{tool:1b}] run return fail
execute on target unless score @s NL_trap_count matches 1.. run return fail

tag @s add occupied
tag @s add trap


##
execute on passengers if entity @s[type=item_display,tag=swamp] positioned as @s run summon item_display ~ ~ ~ {view_range:0.13f,item_display:"fixed",Tags:["trap","swamp_passenger","NL"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:emerald",count:1,components:{"minecraft:item_model":"test"}}}
execute on passengers if entity @s[type=item_display,tag=swamp] positioned as @s as @n[type=item_display,tag=trap,tag=swamp_passenger] run ride @s mount @n[type=item_display,tag=swamp,tag=occupied,tag=swamp]
#execute on passengers if entity @s[type=item_display,tag=swamp] run data modify entity @s Passengers append value {Passengers:[{id:"minecraft:item_display",view_range:0.1f,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0f, 0.5f, 0f],scale:[1.0f,1.0f,1.0f]},Tags:["NL","hunter","trap","swamp"],item:{id:"minecraft:emerald",count:1,components:{"minecraft:item_model":"test"}}}]}


execute on target run scoreboard players remove @s NL_trap_count 1
#execute on target run item modify entity @s weapon.mainhand nl_char:items/explorer/magician/tool2

return 1