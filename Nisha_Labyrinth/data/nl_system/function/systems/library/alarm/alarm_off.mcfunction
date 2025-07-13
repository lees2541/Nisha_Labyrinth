schedule clear nl_system:systems/library/alarm/alarm_off

function nl_system:systems/library/alarm/turn_default
advancement revoke @a through nl_system:systems/library/alarm/alarm_red
kill @e[type=vindicator,tag=tracer]
clear @a[team=roamer] carrot_on_a_stick[minecraft:custom_data={scroll:1b,tp_lib:1b,NL:1b}]



function nl_system:systems/library/access_control/open_library
