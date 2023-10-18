data modify storage nl:buffer players.item.switch.nbt set from entity @s Inventory[{Slot:-106b}]
data remove storage nl:buffer players.item.switch.nbt.Slot
data remove storage nl:buffer players.item.switch.nbt.id
data modify storage nl:buffer players.item.switch.id set from entity @s Inventory[{Slot:-106b}].id


function nl_system:modules/hotbar_holder/offhand_blanker/offhand_item_refresh with storage nl:buffer players.item.switch

advancement revoke @s only nl_system:modules/hotbar_holder/offhand_blanker/offhand_changed_buffer