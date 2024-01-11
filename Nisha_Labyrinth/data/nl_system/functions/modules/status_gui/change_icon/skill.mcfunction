#> nl_system:modules/status_gui/change_icon/skill
# 스킬에 따른 이미지를 업데이트
#@context 대상 {skill:(str)}
#@within nl_system:modules/status_effect/update/call_change_icon

function nl_system:modules/storage/load_to_buffer/player_info/load_player_info

$data modify storage nl:buffer icon.dir set value "font.$(skill)"
data modify storage nl:buffer icon.character set from storage nl:buffer player.character
function nl_system:modules/storage/load_to_buffer/player_icon_gui/get_icon_dir with storage nl:buffer icon
function nl_system:modules/status_gui/change_icon with storage nl:buffer icon


