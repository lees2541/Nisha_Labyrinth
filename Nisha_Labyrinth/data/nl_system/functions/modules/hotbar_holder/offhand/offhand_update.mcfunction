#> nl_system:modules/hotbar_holder/offhand/offhand_update
# 왼손이 감지되었을 때 실행
#@within 
# nl_system:modules/hotbar_holder/base/inventory_changed_detection_adv


execute unless data entity @s Inventory[{Slot:-106b}] run return 0
data modify storage nl:buffer player.item.switch.nbt set from entity @s Inventory[{Slot:-106b}]
data remove storage nl:buffer player.item.switch.nbt.Slot


function nl_system:modules/hotbar_holder/base/update_inventory_info with storage nl:buffer player

data modify storage nl:buffer player.item.switch.count set from storage nl:buffer player.item.switch.nbt.Count
data remove storage nl:buffer player.item.switch.nbt.Count


function nl_system:modules/hotbar_holder/base/macro/item_check with storage nl:buffer player.item.switch

item replace entity @s weapon.offhand with air
#execute if data storage nl:buffer player.item.switch.count run say count 이따
#execute if data storage nl:buffer player.item.switch.id run say id 이따
#execute if data storage nl:buffer player.item.switch.slot run say slot 이따
#execute if data storage nl:buffer player.item.switch.nbt run say nbt 이따
function nl_system:modules/hotbar_holder/base/macro/item_refresh with storage nl:buffer player.item.switch

function nl_system:systems/item/update/offhand

