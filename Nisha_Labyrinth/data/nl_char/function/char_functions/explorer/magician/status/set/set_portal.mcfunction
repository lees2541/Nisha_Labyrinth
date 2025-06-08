#> nl_char:char_functions/explorer/magician/status/set/set_portal
#
#@context 해당 플레이어 with storage nl:buffer player
$say 확이이이이이잉ㄴ $(id)
$function nl_system:modules/status_gui/buff_icon/update/input_storage {id:$(id),tag:"skill1",character:"$(character)"}