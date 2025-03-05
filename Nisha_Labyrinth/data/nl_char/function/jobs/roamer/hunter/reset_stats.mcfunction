
say 헌터 초기화
execute if data storage nl:in_game status{ongoing:2} run return fail
tag @s remove hunter
scoreboard players set @s NL_trap_count 0