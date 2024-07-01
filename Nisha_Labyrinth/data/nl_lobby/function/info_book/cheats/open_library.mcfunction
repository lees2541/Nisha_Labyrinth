#> nl_lobby:info_book/cheats/open_library
# 도서관 강제 오픈 치트



data modify storage nl:in_game status.location.library.opened set value 1b

function nl_system:systems/library/access_control/open_library