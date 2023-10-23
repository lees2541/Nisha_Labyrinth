data modify storage nl:buffer player.item.switch.id set from storage nl:buffer player.item.switch.nbt.id
data remove storage nl:buffer player.item.switch.nbt.id
data modify storage nl:buffer player.item.switch.count set from storage nl:buffer player.item.switch.nbt.Count
data remove storage nl:buffer player.item.switch.nbt.Count
data modify storage nl:buffer player.item.switch.nbt merge from storage nl:buffer player.item.switch.nbt.tag
data remove storage nl:buffer player.item.switch.nbt.tag

#data get storage nl:buffer player.item.switch