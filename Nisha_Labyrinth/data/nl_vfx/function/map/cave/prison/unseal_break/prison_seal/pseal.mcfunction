summon armor_stand 708 51 579 {Invulnerable:1b,Invisible:1b,Tags:["pseal_a","NL"]}
execute positioned 708.00 46.83 580.67 run particle minecraft:dripping_lava ~ ~ ~ 4 4 4 3 2000 force
execute at @e[tag=pseal_a] run playsound minecraft:pseal_base master @a
execute at @e[tag=pseal_a] run playsound minecraft:pseal3 master @a
kill @e[type=text_display,tag=pseal_txt]

schedule function nl_vfx:map/cave/prison/unseal_break/prison_seal/pseal_block 40t append





