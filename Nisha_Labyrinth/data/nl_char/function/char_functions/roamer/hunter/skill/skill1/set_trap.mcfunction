say 낙서낙서놀이

execute on target unless items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{tool:1b}] run return fail
execute on target unless score @s NL_trap_count matches 1.. run return fail

tag @s add occupied
tag @s add trap


##
execute on passengers if entity @s[type=item_display,tag=swamp] run data merge entity @s {id:"minecraft:item_display",transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0f, 0.5f, 0f],scale:[1.0f,1.0f,1.0f]},Tags:["NL","hunter","trap","swamp"],item:{id:"minecraft:egg",count:1}}


execute on target run scoreboard players remove @s NL_trap_count 1
#execute on target run item modify entity @s weapon.mainhand nl_char:items/explorer/magician/tool2

return 1