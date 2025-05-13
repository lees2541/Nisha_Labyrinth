#> nl_char:jobs/explorer/guard/reset_stats
# 객체에 대한 리셋


say 생존가초기화


execute if data storage nl:in_game status{ongoing:2} run return fail
tag @s remove guard
tag @s remove hungry