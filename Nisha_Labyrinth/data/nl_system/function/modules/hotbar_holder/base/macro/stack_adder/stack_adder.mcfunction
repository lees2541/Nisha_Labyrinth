#> nl_system:modules/hotbar_holder/base/macro/stack_adder/stack_adder
#
#@within
#   nl_system:modules/hotbar_holder/base/inventory_changed_detection_adv
#@input
#   $(filter):   인식할 아이템을 정하는 필터링
#   $(exception):    예외처리
#   $(type): 바꿀 스택의 타입, eg) lifestone, redstone 등
#say stack adder
data remove storage nl:buffer stack
$data modify storage nl:buffer stack.buffer append from entity @s Inventory[$(filter)]
$data remove storage nl:buffer stack.buffer[$(exception)]
execute unless data storage nl:buffer stack.buffer[0] run return 0
$data modify storage nl:buffer stack.item.type set value "$(type)"
data modify storage nl:buffer stack.item.count set from storage nl:buffer stack.buffer[0].count
data modify storage nl:buffer stack.item.slot set from storage nl:buffer stack.buffer[0].Slot
data modify storage nl:buffer stack.item.id set from storage nl:buffer stack.buffer[0].id
execute if data storage nl:buffer stack.buffer[0] run function nl_system:modules/hotbar_holder/base/macro/stack_adder/stack_adder_loop with storage nl:buffer stack.item
data remove storage nl:buffer stack