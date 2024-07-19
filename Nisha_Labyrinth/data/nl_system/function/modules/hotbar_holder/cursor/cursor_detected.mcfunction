
execute if items entity @s player.cursor diamond_hoe[custom_data~{NL:1b,offhand:1b}] run function nl_system:systems/item/update/offhand

execute if items entity @s player.cursor *[custom_data~{NL:1b,lifestone:1b}] run function nl_system:systems/item/update/lifestone

execute if items entity @s player.cursor *[custom_data~{NL:1b,redstone:1b}] run function nl_system:systems/item/update/redstone

execute if items entity @s player.cursor diamond_hoe[custom_data~{NL:1b,offhand:1b}] run function nl_system:systems/item/update/offhand