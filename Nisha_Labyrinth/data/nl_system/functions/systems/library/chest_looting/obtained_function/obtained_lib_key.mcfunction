



scoreboard players add #library_key NL_count 1

tag @s remove library_key

execute if score #library_key NL_count matches 2.. as @a[tag=early_death] run function nl_system:systems/library/escape/escape_library