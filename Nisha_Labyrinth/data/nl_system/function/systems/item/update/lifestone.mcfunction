execute if entity @s[team=roamer] run return fail
execute if items entity @s player.cursor *[custom_data~{NL:1b,lifestone:1b}] if items entity @s hotbar.6 *[!minecraft:custom_data~{NL:1b,lifestone:1b}] run item replace entity @s player.cursor from entity @s hotbar.6
clear @s *[custom_data~{NL:1b,lifestone:1b}]

function nl_system:modules/storage/scoreboard/operation/resource_count/get_resource {resource:lifestone}
data modify storage nl:buffer operation merge value {slot:"hotbar.6"}
execute if data storage nl:buffer operation{result:0} run data modify storage nl:buffer operation.result set value 1
function nl_system:systems/item/update/module/max_stack_size/lifestone with storage nl:buffer operation


data remove storage nl:buffer operation