#> nl_system:modules/storage/load_to_buffer/player_icon_gui/get_lf_icon_dir
# 생명석 아이콘 gui를 바꿀 때 이 함수를 통해 호출
#

$data modify storage nl:buffer icon.call set from storage nl:image_code player.$(character).$(dir)


