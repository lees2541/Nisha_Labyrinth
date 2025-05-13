#say 낙서낙서놀이

execute on target unless items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{perk1:1b,tool2:1b,mode:1b,magician:1b}] run return fail
#say 첫번쨰조건통과
tag @s add occupied
tag @s add in_portal

##
execute on passengers if entity @s[type=item_display,tag=swamp] run data merge entity @s {id:"minecraft:item_display",transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0f, 0.5f, 0f],scale:[1.0f,1.0f,1.0f]},Tags:["NL","magician","perk1","in_portal","swamp"],item:{id:"minecraft:emerald",count:1,components:{"minecraft:item_model":"explorer/magician/portal","minecraft:custom_model_data":{floats:[1]}}}}


execute on target run scoreboard players set @s NL_mode 2
execute on target run item modify entity @s weapon.mainhand nl_char:items/explorer/magician/tool2


## 연출
playsound minecraft:entity.creaking.spawn block @a[tag=explorer,tag=NL] ^ ^ ^0.3 1 2 0.6 

return 1