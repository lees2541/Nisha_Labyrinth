#> nl_system:modules/hotbar_holder/base/macro/item_check
# 고정되었어야할 아이템 칸에 있는 아이템 불러오기 / nl:buffer player.item.switch
#@within nl_system:modules/hotbar_holder/**

say 아이템체크
$execute store success storage nl:buffer player.item.switch.stack int 1 run data get entity @s Inventory[$(nbt)]





$execute if data storage nl:buffer player.inventory[$(nbt)] store result storage nl:buffer player.item.switch.slot int 1 run data get storage nl:buffer player.inventory[$(nbt)].Slot
data modify storage nl:buffer player.item.switch.id set from storage nl:buffer player.item.switch.nbt.id
data remove storage nl:buffer player.item.switch.nbt.id
data modify storage nl:buffer player.item.switch.nbt merge from storage nl:buffer player.item.switch.nbt.tag
data remove storage nl:buffer player.item.switch.nbt.tag

## 슬롯 번호 컨버터

execute if data storage nl:buffer player.item.switch{slot:0} run data modify storage nl:buffer player.item.switch.slot set value "hotbar.0"
execute if data storage nl:buffer player.item.switch{slot:1} run data modify storage nl:buffer player.item.switch.slot set value "hotbar.1"
execute if data storage nl:buffer player.item.switch{slot:2} run data modify storage nl:buffer player.item.switch.slot set value "hotbar.2"
execute if data storage nl:buffer player.item.switch{slot:3} run data modify storage nl:buffer player.item.switch.slot set value "hotbar.3"
execute if data storage nl:buffer player.item.switch{slot:4} run data modify storage nl:buffer player.item.switch.slot set value "hotbar.4"
execute if data storage nl:buffer player.item.switch{slot:5} run data modify storage nl:buffer player.item.switch.slot set value "hotbar.5"
execute if data storage nl:buffer player.item.switch{slot:6} run data modify storage nl:buffer player.item.switch.slot set value "hotbar.6"
execute if data storage nl:buffer player.item.switch{slot:7} run data modify storage nl:buffer player.item.switch.slot set value "hotbar.7"
execute if data storage nl:buffer player.item.switch{slot:8} run data modify storage nl:buffer player.item.switch.slot set value "hotbar.8"

execute if data storage nl:buffer player.item.switch{slot:9} run data modify storage nl:buffer player.item.switch.slot set value "inventory.0"
execute if data storage nl:buffer player.item.switch{slot:10} run data modify storage nl:buffer player.item.switch.slot set value "inventory.1"
execute if data storage nl:buffer player.item.switch{slot:11} run data modify storage nl:buffer player.item.switch.slot set value "inventory.2"
execute if data storage nl:buffer player.item.switch{slot:12} run data modify storage nl:buffer player.item.switch.slot set value "inventory.3"
execute if data storage nl:buffer player.item.switch{slot:13} run data modify storage nl:buffer player.item.switch.slot set value "inventory.4"
execute if data storage nl:buffer player.item.switch{slot:14} run data modify storage nl:buffer player.item.switch.slot set value "inventory.5"
execute if data storage nl:buffer player.item.switch{slot:15} run data modify storage nl:buffer player.item.switch.slot set value "inventory.6"
execute if data storage nl:buffer player.item.switch{slot:16} run data modify storage nl:buffer player.item.switch.slot set value "inventory.7"
execute if data storage nl:buffer player.item.switch{slot:17} run data modify storage nl:buffer player.item.switch.slot set value "inventory.8"
execute if data storage nl:buffer player.item.switch{slot:18} run data modify storage nl:buffer player.item.switch.slot set value "inventory.9"
execute if data storage nl:buffer player.item.switch{slot:19} run data modify storage nl:buffer player.item.switch.slot set value "inventory.10"
execute if data storage nl:buffer player.item.switch{slot:20} run data modify storage nl:buffer player.item.switch.slot set value "inventory.11"
execute if data storage nl:buffer player.item.switch{slot:21} run data modify storage nl:buffer player.item.switch.slot set value "inventory.12"
execute if data storage nl:buffer player.item.switch{slot:22} run data modify storage nl:buffer player.item.switch.slot set value "inventory.13"
execute if data storage nl:buffer player.item.switch{slot:23} run data modify storage nl:buffer player.item.switch.slot set value "inventory.14"
execute if data storage nl:buffer player.item.switch{slot:24} run data modify storage nl:buffer player.item.switch.slot set value "inventory.15"
execute if data storage nl:buffer player.item.switch{slot:25} run data modify storage nl:buffer player.item.switch.slot set value "inventory.16"
execute if data storage nl:buffer player.item.switch{slot:26} run data modify storage nl:buffer player.item.switch.slot set value "inventory.17"
execute if data storage nl:buffer player.item.switch{slot:27} run data modify storage nl:buffer player.item.switch.slot set value "inventory.18"
execute if data storage nl:buffer player.item.switch{slot:28} run data modify storage nl:buffer player.item.switch.slot set value "inventory.19"
execute if data storage nl:buffer player.item.switch{slot:29} run data modify storage nl:buffer player.item.switch.slot set value "inventory.20"
execute if data storage nl:buffer player.item.switch{slot:30} run data modify storage nl:buffer player.item.switch.slot set value "inventory.21"
execute if data storage nl:buffer player.item.switch{slot:31} run data modify storage nl:buffer player.item.switch.slot set value "inventory.22"
execute if data storage nl:buffer player.item.switch{slot:32} run data modify storage nl:buffer player.item.switch.slot set value "inventory.23"
execute if data storage nl:buffer player.item.switch{slot:33} run data modify storage nl:buffer player.item.switch.slot set value "inventory.24"
execute if data storage nl:buffer player.item.switch{slot:34} run data modify storage nl:buffer player.item.switch.slot set value "inventory.25"
execute if data storage nl:buffer player.item.switch{slot:35} run data modify storage nl:buffer player.item.switch.slot set value "inventory.26"