#> nl_char:jobs/roamer/chopper/reset_stats


say 쵸퍼 초기화
execute if data storage nl:in_game status{ongoing:2} run return fail
tag @s remove chopper
