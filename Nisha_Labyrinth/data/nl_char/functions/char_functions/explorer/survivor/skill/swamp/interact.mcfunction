#> nl_char:char_functions/explorer/survivor/skill/swamp/interact
# 늪과 상호작용했을때 발동
# @context 해당 늪의 interaction 엔티티가 실행

execute on target unless score @s NL_lifestone_count matches 1.. run say 생명석 음슴
execute on target unless score @s NL_lifestone_count matches 1.. run return fail
execute on target run function nl_system:modules/storage/scoreboard/operation/resource_count/calc_resource {resource:lifestone,operator:remove,operand:1}
tag @s add occupied
tag @s add campfire
setblock ~ ~ ~ soul_campfire[signal_fire=false,waterlogged=false]{CookingTotalTimes:[I;0,100000,100000,100000],Items:[{Slot:1b,id:"minecraft:bowl",Count:1b},{Slot:2b,id:"minecraft:bowl",Count:1b},{Slot:3b,id:"minecraft:bowl",Count:1b}]}

return 1