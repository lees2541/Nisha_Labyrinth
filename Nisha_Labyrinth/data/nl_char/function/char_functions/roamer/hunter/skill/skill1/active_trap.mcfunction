tag @p[tag=explorer,distance=..0.7] add trapped
effect give @p[tag=explorer,distance=..0.7] glowing 4
scoreboard players set @p[tag=explorer,tag=trapped] NL_trapped_time 60

execute as @p[tag=explorer,tag=trapped] run function nl_system:systems/status_effects/rooted/rooted {time:40}

scoreboard players add @a[tag=hunter,team=roamer] NL_trap_count 1
function nl_char:char_functions/roamer/hunter/skill/skill1/remove_trap