## 생명석 감지
execute unless data entity @s Inventory[{Slot:6b}] run function nl_system:systems/item/update/lifestone
execute unless entity @s[nbt={Inventory:[{Slot:6b,tag:{lifestone:1b,NL:1b}}]}] run function nl_system:modules/hotbar_holder/base/slot_update {"Slot":"6b","slotPath":"hotbar.6","Path":"lifestone"}

## 레드스톤 감지
execute unless data entity @s Inventory[{Slot:7b}] run function nl_system:systems/item/update/redstone
execute unless entity @s[nbt={Inventory:[{Slot:7b,tag:{redstone:1b,NL:1b}}]}] run function nl_system:modules/hotbar_holder/base/slot_update {"Slot":"7b","slotPath":"hotbar.7","Path":"redstone"}