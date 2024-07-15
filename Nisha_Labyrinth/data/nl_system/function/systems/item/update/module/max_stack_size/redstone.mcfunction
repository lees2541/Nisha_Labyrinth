#> nl_system:systems/item/update/module/max_stack_size/redstone
# max stacksize에 맞게 지급,
#@input
#   storage nl:buffer
#       operation
#           slot: (hotbar.6 같은 식, str)
#           item: (업데이트 할 아이템 종류, str)
#           result: (max_stacksize 수, int)
say 준다!
$say maxstacksize redstone, slot: hotbar.7, result: $(result), item:$(item)
execute if score @s NL_redstone_count matches ..0 run item replace entity @s hotbar.7 with stone_hoe
$execute if score @s NL_redstone_count matches 1.. run item replace entity @s hotbar.7 with redstone[max_stack_size=$(result)] $(result)
item modify entity @s hotbar.7 nl_system:systems/item/update/redstone