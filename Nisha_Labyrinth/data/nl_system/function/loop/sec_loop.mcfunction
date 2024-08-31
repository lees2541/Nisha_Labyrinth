#> nl_system:loop/sec_loop
# 초마다 실행되는 함수
# @private
# @within nl_system:init/init




execute as @a[tag=NL,team=!roamer,tag=!no_life_gui_update] if function nl_system:modules/storage/load_to_buffer/player_info/load_player_info run function nl_system:modules/status_gui/lifestone_icon/update/update_icon with storage nl:buffer player








schedule function nl_system:loop/sec_loop 1s append