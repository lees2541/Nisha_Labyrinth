bossbar set nl:lib_alarm_gauge players @a[advancements={nl_system:location/library/in_the_library=true},predicate=nl_system:location/library/in_the_library]
advancement revoke @s through nl_system:location/library/in_the_library



execute if entity @s[tag=early_death] run tp 715 39 575
#execute if entity @s[team=prisoner,nbt={SelectedItem:{id:"minecraft:bone_meal"}}] run tag @s add exit
#execute if entity @s[team=prisoner,tag=exit] run function nishalabyrinth:system/prison/escape_jail_adv
#execute as @a[team=explorer,tag=exit] run clear @s bone_meal
#execute if entity @s[team=prisoner,tag=exit] run tellraw @a[team=!roamer] [{"selector":"@s"},{"text":"(이)가 감옥에서 탈출했습니다!"}]



