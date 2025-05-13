

item replace entity @s armor.feet with leather_boots
item modify entity @s armor.feet nl_char:items/explorer/explorer_boots

## 곡괭이
function nl_char:items/explorer/explorer/give_pickaxe
## 손전등

## 책
function nl_char:items/give_info_book

## 퍽 아이템
execute at @s if function nl_system:modules/storage/load_to_buffer/player_info/load_player_info run function nl_char:items/give_perk_items with storage nl:buffer player
