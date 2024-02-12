execute as @e[type=block_display,tag=up] run data merge entity @s {start_interpolation:0,interpolation_duration:110,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,6f,0f],scale:[1f,1f,1f]}}
setblock 708 46 580 minecraft:air destroy
setblock 708 46 581 minecraft:air destroy
setblock 707 46 581 minecraft:air destroy
setblock 707 46 580 minecraft:air destroy
execute at @e[type=armor_stand,tag=pseal_a] run playsound minecraft:chain2 block @a

function nl_vfx:map/cave/prison/unseal_break/prison_seal/pseal_count10


schedule function nl_vfx:map/cave/prison/unseal_break/prison_seal/pseal_count2 1s
schedule function nl_vfx:map/cave/prison/unseal_break/prison_seal/pseal_count3 2s
schedule function nl_vfx:map/cave/prison/unseal_break/prison_seal/pseal_count4 3s
schedule function nl_vfx:map/cave/prison/unseal_break/prison_seal/pseal_count5 4s
schedule function nl_vfx:map/cave/prison/unseal_break/prison_seal/pseal_count6 5s
schedule function nl_vfx:map/cave/prison/unseal_break/prison_seal/pseal_count7 6s
schedule function nl_vfx:map/cave/prison/unseal_break/prison_seal/pseal_count8 7s
schedule function nl_vfx:map/cave/prison/unseal_break/prison_seal/pseal_count9 8s
schedule function nl_vfx:map/cave/prison/unseal_break/prison_seal/pseal_count1 9s
schedule function nl_vfx:map/cave/prison/unseal_break/prison_seal/pseal 10s
