

execute if entity @s[advancements={nl_system:modules/hotbar_holder/base/inventory_changed_detection=false}] run return 0

## 순서바꿈
advancement revoke @s through nl_system:modules/hotbar_holder/base/inventory_changed_detection
function nl_system:modules/hotbar_holder/base/inventory_changed_detection_adv
#advancement revoke @s through nl_system:modules/hotbar_holder/base/inventory_changed_detection