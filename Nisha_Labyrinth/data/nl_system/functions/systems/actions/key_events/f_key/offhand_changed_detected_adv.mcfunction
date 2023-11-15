#> nl_system:systems/actions/key_events/f_key/offhand_changed_detected_adv
# 
#@context 왼손의 변화가 감지된 플레이어
#@within nl_system:modules/hotbar_holder/base/inventory_changed_detection_adv
#declare predicate nl_system:player/skill/skill2_ready 스킬사용 가능조건 체크
say 왼손감지
function nl_system:modules/storage/load_to_buffer/player_info/load_player_info

execute if entity @s[predicate=nl_system:player/skill/skill2_ready] run function nl_system:systems/actions/key_events/f_key/skill2_trigger with storage nl:buffer player

## 원상복구
function nl_system:modules/hotbar_holder/base/slot_update {"Slot":"-106b","slotPath":"weapon.offhand","Path":"offhand"}

## 버퍼발전과제 확성화
advancement revoke @s only nl_system:systems/actions/key_events/f_key/offhand_changed_detected_buffer