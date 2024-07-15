#> nl_system:modules/hotbar_holder/base/macro/stack_adder/stack_adder_loop
#
#@within
#   nl_system:modules/hotbar_holder/base/macro/stack_adder/stack_adder
#@input
#   storage nl:buffer
#       stack.item
#           $(type): resource type, (str) 
#           $(count): count, (int)
#           $(Slot): Slot, (bytes)
#           $(id): item id, (str)
#say stack_adder loop!
$function nl_system:modules/storage/scoreboard/operation/resource_count/calc_resource {resource:$(type),operator:add,operand:$(count)}
$clear @s $(id)[!custom_data~{drop:1b}] $(count)
data remove storage nl:buffer stack.buffer[0]

execute unless data storage nl:buffer stack.buffer[0] run return fail

data modify storage nl:buffer stack.item.type set from storage nl:buffer stack.buffer[0].components.type
data modify storage nl:buffer stack.item.count set from storage nl:buffer stack.buffer[0].count
data modify storage nl:buffer stack.item.slot set from storage nl:buffer stack.buffer[0].Slot
data modify storage nl:buffer stack.item.id set from storage nl:buffer stack.buffer[0].id

function nl_system:modules/hotbar_holder/base/macro/stack_adder/stack_adder_loop with storage nl:buffer stack.item
