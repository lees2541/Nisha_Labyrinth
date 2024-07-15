#> nl_system:systems/item/update/module/max_stack_size/lifestone
# max stacksize에 맞게 지급,
#@input
#   storage nl:buffer
#       operation
#           slot: (hotbar.6 같은 식, str)
#           item: (업데이트 할 아이템 종류, str)
#           result: (max_stacksize 수, int)
say 준다!
$say 준다 slot: $(slot)
$execute if score @s NL_lifestone_count matches ..0 run item replace entity @s $(slot) with iron_hoe
$execute if score @s NL_lifestone_count matches 1.. run item replace entity @s $(slot) with lapis_lazuli[max_stack_size=$(result)] $(result)
$item modify entity @s $(slot) nl_system:systems/item/update/$(item)