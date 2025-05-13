execute if entity @s[tag=guard,team=explorer, scores={NL_perk=1}] run function nl_char:char_functions/explorer/guard/perk/perk1/loop

execute if entity @s[tag=guard,tag=explorer, scores={NL_perk=2}] run function nl_char:char_functions/explorer/guard/perk/perk2/loop


advancement revoke @s only nl_char:skill/guard/get_absorption
advancement revoke @s only nl_char:skill/guard/hit_with_bbata