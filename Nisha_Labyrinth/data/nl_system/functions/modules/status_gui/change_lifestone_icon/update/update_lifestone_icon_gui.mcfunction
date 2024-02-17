#> nl_system:modules/status_gui/change_lifestone_icon/update/update_lifestone_icon_gui
# 매초 플레이어들의 생명석 gui 칸(스테이터스 gui 안의 생명석 여부 칸) 업데이트
#@within nl_system:loop/sec_loop

execute unless score @s NL_lifestone_count matches 1.. run scoreboard players display numberformat @s NL_status_gui blank
execute if score @s NL_lifestone_count matches 1.. run function nl_system:modules/status_gui/change_lifestone_icon/case/owned_lifestone