clear @s stone_hoe
item replace entity @s hotbar.7 with stone_hoe 1

function nl_system:modules/storage/scoreboard/operation/resource_count/get_resource {resource:redstone}
item modify entity @s hotbar.7 nl_system:systems/item/update/redstone
data remove storage nl:buffer operation