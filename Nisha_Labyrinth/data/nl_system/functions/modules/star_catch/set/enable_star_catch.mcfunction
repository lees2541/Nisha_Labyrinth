#> nl_system:modules/star_catch/set/enable_star_catch
# 스타캐치 바를 활성화 한다
#@context @e[type=text_display,tag=gauge_bar,tag=point] with entity @s

$execute as @e[type=text_display,tag=NL,tag=gauge_bar,name=$(CustomName)] run data merge entity @s {view_range:0.05f}

scoreboard players set @s NL_timer 0