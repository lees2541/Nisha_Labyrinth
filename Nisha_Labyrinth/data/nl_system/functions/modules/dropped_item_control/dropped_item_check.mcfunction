#data modify storage nl:buffer entity.item set from entity @s Item
function nl_system:modules/dropped_item_control/back_to_owner with entity @s Item

execute on origin run advancement grant @s only nl_system:modules/hotbar_holder/base/inventory_changed_detection_buffer
kill @s