function nl_system:modules/storage/load_to_buffer/player_info/load_player_info

data modify storage nl:buffer icon.dir set value "font.icon2"
data modify storage nl:buffer icon.character set from storage nl:buffer player.character
function nl_system:modules/storage/load_to_buffer/player_icon_gui/get_icon_dir with storage nl:buffer icon
function nl_system:modules/status_gui/profile_icon/change_icon with storage nl:buffer icon