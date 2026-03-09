execute if entity @a[team=roamer,tag=chopper,tag=unstoppable,scores={NL_dash_time=1..100}] store result bossbar nl:chopper_dash value run scoreboard players add @a[team=roamer,tag=chopper,tag=unstoppable,scores={NL_dash_time=..99}] NL_dash_time 1

execute at @s[team=roamer,tag=chopper,tag=unstoppable,scores={NL_dash_time=1..30}] run damage @p[team=explorer,distance=..1.5] 4 indirect_magic by @s
execute at @s[team=roamer,tag=chopper,tag=unstoppable,scores={NL_dash_time=31..80}] run damage @p[team=explorer,distance=..1.5] 8 indirect_magic by @s
execute at @s[team=roamer,tag=chopper,tag=unstoppable,scores={NL_dash_time=80..}] run damage @p[team=explorer,distance=..1.5] 12 indirect_magic by @s
execute if entity @s[team=roamer,tag=chopper,tag=unstoppable,scores={NL_dash_time=30}] run bossbar set nl:chopper_dash color green
execute if entity @s[team=roamer,tag=chopper,tag=unstoppable,scores={NL_dash_time=80}] run bossbar set nl:chopper_dash color red
execute at @a[team=roamer,tag=chopper,tag=unstoppable] if entity @a[team=explorer,distance=..1.5] run effect clear @a[team=roamer,tag=chopper,tag=unstoppable] night_vision
execute at @a[team=roamer,tag=chopper,tag=unstoppable] if entity @a[team=explorer,distance=..1.5] run scoreboard players add @s NL_stun_time 80
execute at @a[team=roamer,tag=chopper,tag=unstoppable] if entity @a[team=explorer,distance=..1.5] run effect clear @a[team=roamer,tag=chopper,tag=unstoppable] speed
execute at @a[team=roamer,tag=chopper,tag=unstoppable] if entity @a[team=explorer,distance=..1.5] at @a run playsound minecraft:entity.zombie.break_wooden_door player @a
execute at @a[team=roamer,tag=chopper,tag=unstoppable] if entity @a[team=explorer,distance=..1.5] run advancement grant @s only nl_system:systems/hit/hit_explorer
execute at @a[team=roamer,tag=chopper,tag=unstoppable] if entity @a[team=explorer,distance=..1.5] run tag @a[team=roamer,tag=chopper,tag=unstoppable] remove unstoppable

execute unless predicate nl_char:roamer/chopper/dash run function nl_char:char_functions/roamer/chopper/skill/skill2/dash_finish



effect clear @a[team=roamer,tag=chopper,tag=!unstoppable,tag=!atk_stun] night_vision
effect clear @a[team=roamer,tag=chopper,tag=!unstoppable,tag=!atk_stun] speed
scoreboard players set @a[team=roamer,tag=chopper,tag=!unstoppable,tag=!atk_stun] NL_dash_time 0
