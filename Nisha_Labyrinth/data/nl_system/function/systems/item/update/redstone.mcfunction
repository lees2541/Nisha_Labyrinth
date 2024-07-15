scoreboard players operation @a NL_redstone_count = @s NL_redstone_count
execute if items entity @s player.cursor *[custom_data~{NL:1b,redstone:1b}] if items entity @s hotbar.7 *[!minecraft:custom_data~{NL:1b,redstone:1b}] run item replace entity @s player.cursor from entity @s hotbar.7
clear @s *[custom_data~{NL:1b,redstone:1b},max_stack_size]
#item replace entity @s hotbar.7 with stone_hoe 1

function nl_system:modules/storage/scoreboard/operation/resource_count/get_resource {resource:redstone}
data modify storage nl:buffer operation.slot set value "hotbar.7"
execute if data storage nl:buffer operation{result:0} run data modify storage nl:buffer operation.result set value 1
function nl_system:systems/item/update/module/max_stack_size/redstone with storage nl:buffer operation
data remove storage nl:buffer operation