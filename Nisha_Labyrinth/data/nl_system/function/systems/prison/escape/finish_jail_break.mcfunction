#> nl_system:systems/prison/escape/finish_jail_break
# 탈옥시간 끝났을 때

schedule clear nl_system:loop/countdown/prison/jail_break_timer
function nl_system:systems/library/alarm/turn_default
function nl_vfx:map/cave/trigger/close_jail
advancement revoke @a only nl_system:systems/prison/escape/jail_break