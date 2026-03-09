effect give @a[team=roamer,tag=chopper] night_vision 5
effect give @a[team=roamer,tag=chopper] speed 5 7
tag @a[team=roamer,tag=chopper] add unstoppable
scoreboard players set @a[team=roamer,tag=chopper] NL_dash_time 1

execute at @a run playsound minecraft:entity.hoglin.death player @a
bossbar set nl:chopper_dash visible true
bossbar set nl:chopper_dash color blue
schedule function nl_char:char_functions/roamer/chopper/skill/skill2/dash_finish 5s