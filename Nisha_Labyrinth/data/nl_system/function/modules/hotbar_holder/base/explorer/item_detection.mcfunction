## 생명석 감지
execute unless items entity @s hotbar.6 * run function nl_system:systems/item/update/lifestone

#execute unless data entity @s Inventory[{Slot:6b}] run function nl_system:systems/item/update/lifestone
execute unless items entity @s hotbar.6 *[custom_data~{NL:1b,lifestone:1b}] run function nl_system:modules/hotbar_holder/base/slot_update {"Slot":"6b","slotPath":"hotbar.6","Path":"lifestone"}

## 레드스톤 감지
execute unless data entity @s Inventory[{Slot:7b}] run function nl_system:systems/item/update/redstone
#execute unless entity @s[nbt={Inventory:[{Slot:7b,components:{"minecraft:custom_data":{redstone:1b,NL:1b}}}]}] run function nl_system:modules/hotbar_holder/base/slot_update {"Slot":"7b","slotPath":"hotbar.7","Path":"redstone"}

execute unless items entity @s hotbar.7 *[custom_data~{redstone:1b,NL:1b}] run function nl_system:modules/hotbar_holder/base/slot_update {"Slot":"7b","slotPath":"hotbar.7","Path":"redstone"}

