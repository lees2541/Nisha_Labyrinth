#> nl_system:modules/status_gui/lifestone_icon/update/update_icon
# 매초 플레이어들의 생명석 gui 칸(스테이터스 gui 안의 생명석 여부 칸) 업데이트
#@context 각각의 플레이어 with storage nl:buffer player
#@within nl_system:loop/sec_loop


$execute if data storage nl:in_game player[{id:$(id)}].icons.lf_slot[0] run return run function nl_system:modules/status_gui/lifestone_icon/change_icon with storage nl:in_game player[{id:$(id)}].icons.lf_slot[0]
execute unless score @s NL_lifestone_count matches 1.. run scoreboard players display numberformat @s NL_status_gui blank
execute if score @s NL_lifestone_count matches 1.. run function nl_system:modules/status_gui/lifestone_icon/case/owned_lifestone