#> nl_system:loop/sec_loop
# 초마다 실행되는 함수
# @private
# @within nl_system:init/init




execute as @a[tag=NL,team=!roamer] run function nl_system:modules/status_gui/change_lifestone_icon/update/update_lifestone_icon_gui








schedule function nl_system:loop/sec_loop 1s append