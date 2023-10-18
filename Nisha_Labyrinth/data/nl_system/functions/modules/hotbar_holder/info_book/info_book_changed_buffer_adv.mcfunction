execute if entity @s[advancements={nl_system:modules/hotbar_holder/info_book/info_book_changed=false}] run return 0

execute unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:written_book",tag:{Info:1b}}]}] run function nl_char:items/give_info_book
advancement revoke @s only nl_system:modules/hotbar_holder/info_book/info_book_changed
say rev