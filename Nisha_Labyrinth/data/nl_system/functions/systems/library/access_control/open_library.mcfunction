#> nl_system:systems/library/access_control/open_library
# 도서관을 오픈하는 트리거 함수

function nl_vfx:map/cave/trigger/open_library

data modify storage nl:in_game status.location.library.alarm set value 1