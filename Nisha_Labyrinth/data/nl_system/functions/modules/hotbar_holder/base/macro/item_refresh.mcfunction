#> nl_system:modules/hotbar_holder/base/macro/item_refresh
# nl:buffer player.item.switch
#@within nl_system:modules/hotbar_holder/**

say 아이템 리프레쉬
$execute if data storage nl:buffer player.item.switch{stack:0} run give @s $(id)$(nbt) $(count)
#$execute if data storage nl:buffer player.item.switch{stack:1} run item replace entity @s $(slot) with $(id)$(nbt) $(count)