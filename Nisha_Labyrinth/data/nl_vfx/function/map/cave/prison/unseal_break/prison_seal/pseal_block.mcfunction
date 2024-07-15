summon item_display 707.93 46.00 581.04 {Tags:["pseal","NL"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[1f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,1f,4f]},item:{id:"minecraft:stone_sword",count:1b}}
setblock 708 45 580 minecraft:barrier
setblock 708 45 581 minecraft:barrier
setblock 707 45 581 minecraft:barrier
setblock 707 45 580 minecraft:barrier
execute at @e[tag=pseal] run playsound minecraft:pseal_drop player @a

## 추가한부분
tp @a[team=prisoner,tag=!exit] 710 39 582
team join explorer @a[tag=exit,team=prisoner,advancements={nl_system:location/prison/in_the_prison=false}] 
tag @a[tag=exit] remove exit
team join prisoner @a[team=explorer,advancements={nl_system:location/prison/in_the_prison=true}]

advancement revoke @a[team=explorer,advancements={nl_system:location/prison/in_the_prison=true}] only nl_system:location/prison/in_the_prison
