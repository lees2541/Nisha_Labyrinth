execute if entity @s[tag=survivor] run function nl_char:char_functions/explorer/survivor/reset



## 공통
execute as @s run function nl_char:status/reset_common
tag @s remove NL
clear @s