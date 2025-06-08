#> nl_system:modules/status_gui/buff_icon/update/update_icon
# 매초 플레이어들의 버프 gui 칸(스테이터스 gui 안의 생명석 여부 칸) 업데이트
#@context 각각의 플레이어 with storage nl:buffer player
#@within nl_system:loop/sec_loop


$execute if data storage nl:in_game player[{id:$(id)}].icons.buff_slot[0] run function nl_system:modules/status_gui/buff_icon/change_icon2 with storage nl:in_game player[{id:$(id)}].icons.buff_slot[0]
$execute unless data storage nl:in_game player[{id:$(id)}].icons.buff_slot[0] run scoreboard players display numberformat player$(id)_2 NL_status_gui fixed {"text":"","color":"white"}
$execute if data storage nl:in_game player[{id:$(id)}].icons.buff_slot[1] run function nl_system:modules/status_gui/buff_icon/change_icon1 with storage nl:in_game player[{id:$(id)}].icons.buff_slot[1]
$execute unless data storage nl:in_game player[{id:$(id)}].icons.buff_slot[1] run scoreboard players display numberformat player$(id)_1 NL_status_gui fixed {"text":"","color":"white"}
