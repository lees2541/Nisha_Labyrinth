effect give @a[team=roamer] slowness 1 10
execute at @s run playsound minecraft:guard_bbadda player @a ^ ^ ^0.3 1 2 0.4
effect clear @s absorption
execute if items entity @s hotbar.1 warped_fungus_on_a_stick[custom_data~{NL:1b, tool:1b}] run item modify entity @s hotbar.1 nl_char:items/explorer/guard/dehance_bbata
execute if items entity @s hotbar.2 warped_fungus_on_a_stick[custom_data~{NL:1b, tool:1b}] run item modify entity @s hotbar.2 nl_char:items/explorer/guard/dehance_bbata
execute if items entity @s hotbar.3 warped_fungus_on_a_stick[custom_data~{NL:1b, tool:1b}] run item modify entity @s hotbar.3 nl_char:items/explorer/guard/dehance_bbata
execute if items entity @s hotbar.4 warped_fungus_on_a_stick[custom_data~{NL:1b, tool:1b}] run item modify entity @s hotbar.4 nl_char:items/explorer/guard/dehance_bbata
execute if items entity @s hotbar.5 warped_fungus_on_a_stick[custom_data~{NL:1b, tool:1b}] run item modify entity @s hotbar.5 nl_char:items/explorer/guard/dehance_bbata
execute if items entity @s hotbar.6 warped_fungus_on_a_stick[custom_data~{NL:1b, tool:1b}] run item modify entity @s hotbar.6 nl_char:items/explorer/guard/dehance_bbata
execute if score @s NL_perk matches 2 run function nl_char:char_functions/explorer/guard/perk/perk2/custom/hit