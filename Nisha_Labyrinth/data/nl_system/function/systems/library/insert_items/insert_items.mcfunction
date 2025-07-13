
## 
#execute as @e[type=marker,tag=NL,tag=chest,tag=library,tag=!library_key,limit=2,sort=random] at @s run function nl_system:modules/chest/insert_loot/insert_loot_table {tag:"library_key",path:"keys/library_key"}
## 생명석 1개
#execute as @e[type=marker,tag=NL,tag=chest,tag=library,tag=!lifestone,limit=1,sort=random] at @s run function nl_system:modules/chest/insert_loot/insert_loot_table {tag:"lifestone",path:"resources/lifestone"}
## 마석 1개
execute as @e[type=marker,tag=NL,tag=chest,tag=library,tag=!manastone,limit=1,sort=random] at @s run function nl_system:modules/chest/insert_loot/insert_loot_table {tag:"manastone",path:"resources/manastone"}
## 마력이 깃든 철조각 1개
execute as @e[type=marker,tag=NL,tag=chest,tag=library,tag=!mana_nugget,limit=3,sort=random] at @s run function nl_system:modules/chest/insert_loot/insert_loot_table {tag:"mana_nugget",path:"resources/mana_nugget"}