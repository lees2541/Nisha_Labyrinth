function nl_char:char_functions/explorer/magician/perk/perk2/custom/disable_charging


function nl_char:char_functions/explorer/magician/status/remove/remove_rooting with entity @s attributes[{id:"minecraft:luck"}]

kill @e[type=item_display,tag=NL,tag=perk2,tag=magician,tag=vfx]
kill @e[type=armor_stand,tag=lock_on,tag=NL]
tag @e[tag=lock_on] remove lock_on
