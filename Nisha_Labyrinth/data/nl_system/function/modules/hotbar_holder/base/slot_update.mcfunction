#> nl_system:modules/hotbar_holder/base/slot_update
# 왼손이 감지되었을 때 실행
#@within 
# nl_system:systems/actions/key_events/f_key/offhand_changed_detected_adv

$say Slot: $(Slot)
$execute unless data entity @s Inventory[{Slot:$(Slot)}] run return 0
say slot_update function
$data modify storage nl:buffer player.item.switch.nbt set from entity @s Inventory[{Slot:$(Slot)}]

data remove storage nl:buffer player.item.switch.nbt.Slot


function nl_system:modules/hotbar_holder/base/update_inventory_info with storage nl:buffer player
$data modify storage nl:buffer player.item.switch merge value {slothPath:"$(slotPath)"}
#> nl:buffer player.item.switch 안의 데이터를 아이템 지급 형식에 맞게 재가공
data modify storage nl:buffer player.item.switch.count set from storage nl:buffer player.item.switch.nbt.count
data remove storage nl:buffer player.item.switch.nbt.count

data remove storage nl:buffer player.item.switch.nbt.components
$data modify storage nl:buffer player.item.switch.nbt.components.minecraft:custom_data set from entity @s Inventory[{Slot:$(Slot)}].components.minecraft:custom_data
$data modify storage nl:buffer player.item.switch.nbt.components.minecraft:custom_model_data set from entity @s Inventory[{Slot:$(Slot)}].components.minecraft:custom_model_data


execute if data storage nl:buffer player.item.switch.nbt run say yes
data modify storage nl:test test set from storage nl:buffer player.item.switch.nbt 
function nl_test:test with storage nl:buffer player.item.switch
function nl_system:modules/hotbar_holder/base/macro/item_check with storage nl:buffer player.item.switch

#$item replace entity @s $(slotPath) with air


#execute if data storage nl:buffer player.item.switch.count run say count 이따
#execute if data storage nl:buffer player.item.switch.id run say id 이따
#execute if data storage nl:buffer player.item.switch.slot run say slot 이따
#execute if data storage nl:buffer player.item.switch.nbt run say nbt 이따
function nl_system:modules/hotbar_holder/base/macro/item_refresh with storage nl:buffer player.item.switch

$function nl_system:systems/item/update/$(Path)

