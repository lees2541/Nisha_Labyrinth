kill @e[tag=NL,tag=lock]
summon item_display 711. 50. 573.5 {Tags:["lockstop","NL"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]},item:{id:"minecraft:wooden_sword",Count:1b}}
execute at @e[tag=lockstop,type=item_display] run particle minecraft:squid_ink ~ ~ ~ 3 3 3 0.32 200
