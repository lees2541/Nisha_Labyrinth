#> nl_system:modules/status_gui/buff_icon/update/remove_storage
# nl:in_game player[{id:$(id)}].icons.buff_slot[$(tag)] 를 삭제한다
# @context 대상 플레이어 {id:(id),tag:(tag)}

$data remove storage nl:in_game player[{id:$(id)}].icons.buff_slot[{tag:$(tag)}]
