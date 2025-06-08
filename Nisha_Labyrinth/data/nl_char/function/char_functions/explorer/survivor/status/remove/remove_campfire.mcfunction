#> nl_char:char_functions/explorer/survivor/status/remove/remove_campfire
# 캠프파이어가 사라질 때 플레이어 변화
#@within nl_char:char_functions/explorer/survivor/entity_loop
#
#@input
#   base: 플레이어 id



$function nl_system:modules/status_gui/buff_icon/update/remove_storage {tag:"skill1",id:$(base)}