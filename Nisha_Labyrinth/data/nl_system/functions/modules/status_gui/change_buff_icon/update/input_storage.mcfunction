#> nl_system:modules/status_gui/change_buff_icon/update/input_storage
# 버프 슬롯 gui에 반영될 데이터를 nl:in_game player[{id:$(id)}].icons.buff_slot[] 에 넣는다
#@context 대상 플레이어 {id:(id),tag:(tag),character:(character)}


$data modify storage nl:buffer icon.call set from storage nl:image_code player.$(character).font.buff_slot.$(tag)
$data modify storage nl:buffer icon.tag set value "$(tag)"
$data modify storage nl:buffer icon.character set value "$(character)"
$data modify storage nl:in_game player[{id:$(id)}].icons.buff_slot prepend from storage nl:buffer icon

execute if function nl_system:modules/storage/load_to_buffer/player_info/load_player_info run function nl_system:modules/status_gui/change_lifestone_icon/update/update_icon with storage nl:buffer player