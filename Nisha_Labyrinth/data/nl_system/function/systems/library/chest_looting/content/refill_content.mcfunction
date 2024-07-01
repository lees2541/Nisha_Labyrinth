#> nl_system:systems/library/chest_looting/content/refill_content
#
#@within nl_system:systems/library/chest_looting/content/reset_chest_content
data remove entity @s data.Items
data modify entity @s data.Items append from block ~ ~ ~ Items[]
data remove entity @s data.Items[{tag:{special_token:1b}}]

data modify block ~ ~ ~ Items set from entity @s data.Items

loot insert ~ ~ ~ loot nl_system:chests/pieces/special_token
