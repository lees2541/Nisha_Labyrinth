

$execute if data storage nl:buffer player.item.switch{stack:0} run give @s $(id)$(nbt) $(count)
$execute if data storage nl:buffer player.item.switch{stack:1} run item replace entity @s $(slot) with $(id)$(nbt) $(count)