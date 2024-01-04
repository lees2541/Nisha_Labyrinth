#> nl_system:systems/altar/altar_loop
# 틱당 게이지 바 차는 정도

# 게이지 속도 보정 코드



execute if data storage nl:in_game status.altar{mode:1} run function nl_system:systems/altar/gauge/gauge_value_calc


