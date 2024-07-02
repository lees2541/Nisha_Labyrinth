kill @e[tag=lockstop,type=item_display,tag=NL]
summon item_display 711. 50. 573.5 {Tags:["lock","NL"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]},item:{id:"minecraft:stone_hoe",count:1b}}
execute as @e[tag=lock,type=item_display] at @s run playsound minecraft:chain1 master @a ~ ~ ~ 4

schedule function nl_vfx:map/cave/library/access_control/lockopen 30t append