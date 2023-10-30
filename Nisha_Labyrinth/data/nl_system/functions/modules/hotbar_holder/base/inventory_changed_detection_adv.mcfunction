#> nl_system:modules/hotbar_holder/base/inventory_changed_detection_adv
# 물건을 떨어뜨리거나 인벤토리의 변화를 감지하면 발동, 감지칸에따라 그에 맞는 함수 발동
#@public
#@context 인벤토리의 변화가 감지된 플레이어


execute store result storage nl:buffer player.id int 1 run scoreboard players get @s NL_player_id
execute store result storage nl:buffer player.selectedSlot int 1 run data get entity @s SelectedItemSlot
#function nl_system:modules/hotbar_holder/base/update_inventory_info with storage nl:buffer player
function nl_system:modules/hotbar_holder/base/load_inven_to_buffer with storage nl:buffer player

function nl_system:modules/hotbar_holder/base/update_inventory_info with storage nl:buffer player

## 왼손 감지
execute unless data entity @s Inventory[{Slot:-106b}] run function nl_system:systems/item/update/offhand
execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{offhand:1b,NL:1b}}]}] run advancement grant @s only nl_system:systems/actions/key_events/f_key/offhand_changed_detected


## 인벤토리 정보 업데이트
function nl_system:modules/hotbar_holder/base/update_inventory_info with storage nl:buffer player

## 버퍼 리셋
data remove storage nl:buffer player


##
advancement revoke @s only nl_system:modules/hotbar_holder/base/inventory_changed_detection_buffer