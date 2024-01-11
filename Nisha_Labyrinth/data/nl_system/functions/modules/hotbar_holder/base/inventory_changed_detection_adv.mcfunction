#> nl_system:modules/hotbar_holder/base/inventory_changed_detection_adv
# 물건을 떨어뜨리거나 인벤토리의 변화를 감지하면 발동, 감지칸에따라 그에 맞는 함수 발동
#@public
#@context 인벤토리의 변화가 감지된 플레이어

## 플레이어 id 로드
#say 감지
execute store result storage nl:buffer player.id int 1 run scoreboard players get @s NL_player_id
execute store result storage nl:buffer player.selectedSlot int 1 run data get entity @s SelectedItemSlot
## 아이템 종류 체크

execute unless entity @s[team=roamer] if data entity @s Inventory[{id:"minecraft:iron_hoe",tag:{NL:1b,drop:0b,lifestone:1b}}] run function nl_system:modules/storage/scoreboard/operation/resource_count/calc_resource {resource:lifestone,operator:add,operand:1}
execute unless entity @s[team=roamer] if data entity @s Inventory[{id:"minecraft:iron_hoe",tag:{NL:1b,drop:0b,lifestone:1b}}] run clear @s iron_hoe{NL:1b,drop:0b,lifestone:1b} 1

## drop:0b 아이템이 덜 정리됐을 경우 다시 이 함수를 실행
execute unless entity @s[team=roamer] if data entity @s Inventory[{tag:{drop:0b,NL:1b}}] run return run function nl_system:modules/hotbar_holder/base/inventory_changed_detection_adv
execute unless function nl_system:systems/item/check_duplicate/lifestone run function nl_system:systems/item/update/lifestone
## 플레이어 정보 로드
function nl_system:modules/hotbar_holder/base/update_resource with storage nl:buffer player
function nl_system:modules/hotbar_holder/base/load_inven_to_buffer with storage nl:buffer player

function nl_system:modules/hotbar_holder/base/update_inventory_info with storage nl:buffer player



## 왼손 감지

execute unless data entity @s Inventory[{Slot:-106b}] run function nl_system:systems/item/update/offhand
execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{offhand:1b,NL:1b}}]}] run advancement grant @s only nl_system:systems/actions/key_events/f_key/offhand_changed_detected

## 탐험가용
execute unless entity @s[team=roamer] run function nl_system:modules/hotbar_holder/base/explorer/item_detection

## 정보창 감지
execute unless data entity @s Inventory[{Slot:8b}] run function nl_system:systems/item/update/info_book
execute unless entity @s[nbt={Inventory:[{Slot:8b,tag:{info_book:1b,NL:1b}}]}] run function nl_system:modules/hotbar_holder/base/slot_update {"Slot":"8b","slotPath":"hotbar.8","Path":"info_book"}

## 인벤토리 정보 업데이트
function nl_system:modules/hotbar_holder/base/update_inventory_info with storage nl:buffer player

## 버퍼 리셋
data remove storage nl:buffer player



##
advancement revoke @s only nl_system:modules/hotbar_holder/base/inventory_changed_detection_buffer