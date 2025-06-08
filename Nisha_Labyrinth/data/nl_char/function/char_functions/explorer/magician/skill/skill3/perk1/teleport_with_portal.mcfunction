playsound minecraft:entity.creaking.activate ambient @a ~ ~ ~ 1 2 0.5
tp @s[tag=NL] @n[type=interaction, tag=occupied,tag=out_portal]
execute as @n[type=interaction, tag=occupied,tag=out_portal] run scoreboard players add @s NL_count 1
execute if score @n[type=interaction, tag=occupied,tag=out_portal] NL_count matches 3.. run function nl_char:char_functions/explorer/magician/skill/skill3/perk1/remove_portals