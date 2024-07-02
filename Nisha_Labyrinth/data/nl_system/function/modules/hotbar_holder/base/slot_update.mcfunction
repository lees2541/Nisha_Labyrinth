#> nl_system:modules/hotbar_holder/base/slot_update
# 왼손이 감지되었을 때 실행
#@within 
# nl_system:systems/actions/key_events/f_key/offhand_changed_detected_adv


$execute unless data entity @s Inventory[{Slot:$(Slot)}] run return 0
$data modify storage nl:buffer player.item.switch.nbt set from entity @s Inventory[{Slot:$(Slot)}]
data remove storage nl:buffer player.item.switch.nbt.Slot


function nl_system:modules/hotbar_holder/base/update_inventory_info with storage nl:buffer player

data modify storage nl:buffer player.item.switch.count set from storage nl:buffer player.item.switch.nbt.count
data remove storage nl:buffer player.item.switch.nbt.count


function nl_system:modules/hotbar_holder/base/macro/item_check with storage nl:buffer player.item.switch

$item replace entity @s $(slotPath) with air
#execute if data storage nl:buffer player.item.switch.count run say count 이따
#execute if data storage nl:buffer player.item.switch.id run say id 이따
#execute if data storage nl:buffer player.item.switch.slot run say slot 이따
#execute if data storage nl:buffer player.item.switch.nbt run say nbt 이따
function nl_system:modules/hotbar_holder/base/macro/item_refresh with storage nl:buffer player.item.switch

$function nl_system:systems/item/update/$(Path)

