
execute unless data entity @s Inventory[{Slot:-106b}] run return 0
data modify storage nl:buffer player.item.switch.nbt set from entity @s Inventory[{Slot:-106b}]
data remove storage nl:buffer player.item.switch.nbt.Slot

#function nl_system:systems/offhand/item/item_update

item replace entity @s weapon.offhand with air

function nl_system:modules/hotbar_holder/base/macro/item_check with storage nl:buffer player.item.switch

function nl_system:modules/hotbar_holder/base/macro/item_refresh with storage nl:buffer player.item.switch

function nl_system:systems/offhand/item/item_update

