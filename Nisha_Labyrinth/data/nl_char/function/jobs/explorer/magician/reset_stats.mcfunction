#> nl_char:jobs/explorer/magician/reset_stats
# 객체에 대한 리셋
say 주술사 초기화
execute if data storage nl:in_game status{ongoing:2} run return fail
tag @s remove magician