#> nl_system:modules/status_gui/debuff_icon/update/update_icon
# 매초 플레이어들의 버프 gui 칸(스테이터스 gui 안의 생명석 여부 칸) 업데이트
#@context 각각의 플레이어 with storage nl:buffer player
#@within nl_system:loop/sec_loop

execute if entity @s[team=explorer,tag=debuff] if function #nl_system:load_player_info run data modify storage nl:buffer player.debuff_icon set from storage nl:in_game player[{team: "roamer"}].debuff_icon
execute if entity @s[team=explorer,tag=debuff] run function nl_system:modules/status_gui/debuff_icon/update/change_icon with storage nl:buffer player
execute if entity @s[team=explorer,tag=!debuff] run function nl_system:modules/status_gui/debuff_icon/set_default





