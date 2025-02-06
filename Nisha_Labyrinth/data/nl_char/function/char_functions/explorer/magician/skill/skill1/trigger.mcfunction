say 스킬 1 발동!

execute at @s run tp @n[tag=NL,tag=!magician,team=explorer]
function nl_system:modules/storage/scoreboard/operation/resource_count/calc_resource {resource: lifestone, operator: remove, operand: 1}

function nl_char:macro/break_tool