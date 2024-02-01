#> nl_system:systems/swamp/tainted_swamp/active_tainted
# 배회자가 오염된 늪이랑 상호작용 했을 때 발동
#@context 상호작용 된 늪 상호작용 엔티티

function nl_system:systems/altar/deactivate

execute if data storage nl:in_game status.altar{mode:1} run scoreboard players remove @a[team=roamer] NL_altar_gauge 200
scoreboard players add @a[team=roamer] NL_lib_alarm_gauge 300
effect give @a[team=explorer,tag=NL] glowing 3 


function nl_system:systems/swamp/default/set_default