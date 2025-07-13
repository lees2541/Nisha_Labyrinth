say 보호막생김!
execute if items entity @a[tag=NL,tag=guard] weapon.offhand warped_fungus_on_a_stick[custom_data~{NL:1b, tool:1b}] run item modify entity @s weapon.offhand nl_char:items/explorer/guard/enhance_bbata
execute if items entity @a[tag=NL,tag=guard] hotbar.1 warped_fungus_on_a_stick[custom_data~{NL:1b, tool:1b}] run item modify entity @s hotbar.1 nl_char:items/explorer/guard/enhance_bbata
execute if items entity @a[tag=NL,tag=guard] hotbar.2 warped_fungus_on_a_stick[custom_data~{NL:1b, tool:1b}] run item modify entity @s hotbar.2 nl_char:items/explorer/guard/enhance_bbata
execute if items entity @a[tag=NL,tag=guard] hotbar.3 warped_fungus_on_a_stick[custom_data~{NL:1b, tool:1b}] run item modify entity @s hotbar.3 nl_char:items/explorer/guard/enhance_bbata
execute if items entity @a[tag=NL,tag=guard] hotbar.4 warped_fungus_on_a_stick[custom_data~{NL:1b, tool:1b}] run item modify entity @s hotbar.4 nl_char:items/explorer/guard/enhance_bbata
execute if items entity @a[tag=NL,tag=guard] hotbar.5 warped_fungus_on_a_stick[custom_data~{NL:1b, tool:1b}] run item modify entity @s hotbar.5 nl_char:items/explorer/guard/enhance_bbata
execute if items entity @a[tag=NL,tag=guard] hotbar.6 warped_fungus_on_a_stick[custom_data~{NL:1b, tool:1b}] run item modify entity @s hotbar.6 nl_char:items/explorer/guard/enhance_bbata

execute if function #nl_system:load_player_info run function nl_char:char_functions/explorer/guard/status/set/set_bat_ready with storage nl:buffer player