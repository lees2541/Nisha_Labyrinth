#> nl_system:systems/library/chest_looting/obtained_function/obtained_lib_key
# 플레이어가 도서관 열쇠가 든 상자에서 열쇠를 꺼냈을 때 발동
#@context @e[type=marker,tag=library_key]



scoreboard players add #library_key NL_count 1

tag @s remove library_key

execute if score #library_key NL_count matches 2.. as @a[tag=early_death] run function nl_system:systems/library/escape/escape_library