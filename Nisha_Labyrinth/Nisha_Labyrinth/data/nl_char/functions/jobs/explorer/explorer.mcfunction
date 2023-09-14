effect clear @s
clear @s
function nishalabyrinth:item/explorer/explorer_boots
team join explorer @s


give @s cooked_beef 2

advancement revoke @a everything
function nishalabyrinth:system/advancements/set_advancements
function nishalabyrinth:tags/removetags
function nishalabyrinth:item/explorer/jump_pickaxe
function nishalabyrinth:item/info_book/give_book
function nishalabyrinth:item/explorer/flashlight



spawnpoint @s[team=explorer] 712 53 623
effect give @s saturation 2 10
effect give @s regeneration 1 50
gamemode adventure @s



execute unless entity @a[team=explorer,tag=blind] run kill @e[type=bat,tag=NL]


