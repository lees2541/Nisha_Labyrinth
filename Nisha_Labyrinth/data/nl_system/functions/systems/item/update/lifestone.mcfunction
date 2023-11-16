clear @s iron_hoe
item replace entity @s hotbar.6 with iron_hoe 1

function nl_system:modules/storage/scoreboard/operation/resource_count/get_resource {resource:lifestone}
item modify entity @s hotbar.6 nl_system:systems/item/update/lifestone
data remove storage nl:buffer operation