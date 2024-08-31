#>nl_system:modules/status_gui/lifestone_icon/update/remove_storage
# 생명석 gui 슬롯에서 상태 하나를 지운다. 
#@input
#   id: 플레이어 id
#   tag: 지울 태그


$data remove storage nl:in_game player[{id:$(id)}].icons.lf_slot[{tag:$(tag)}]

execute if function nl_system:modules/storage/load_to_buffer/player_info/load_player_info run function nl_system:modules/status_gui/lifestone_icon/update/update_icon with storage nl:buffer player