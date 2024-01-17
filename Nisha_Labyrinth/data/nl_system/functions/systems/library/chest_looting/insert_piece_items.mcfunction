data remove entity @s data.Items[]
execute at @s run data modify entity @s data.Items[] append from block ~ ~ ~ Items[{id:"minecraft:lapis_lazuli"}]
execute at @s run data modify entity @s data.Items[] append from block ~ ~ ~ Items[{id:"minecraft:redstone"}]
execute at @s run data modify block ~ ~ ~ Items set from entity @s data.Items[]
execute at @s run loot insert ~ ~ ~ loot minecraft:chests/special_pieces