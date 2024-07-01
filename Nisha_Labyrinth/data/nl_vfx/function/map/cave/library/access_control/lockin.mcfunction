summon item_display 711. 50. 573.5 {Tags:["NL","lock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]},item:{id:"minecraft:stone_hoe",Count:1b}}
execute as @e[type=item_display,tag=lock] at @s run playsound minecraft:chain1 master @a ~ ~ ~ 4

schedule function nl_vfx:map/cave/library/access_control/lockstop 25t append
