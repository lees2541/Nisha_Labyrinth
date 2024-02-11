#> nl_system:systems/death/early_death
# 탐험가가 초반에 죽었을 때 도서관에 감금되는 상황
#@private
#@within nl_system:systems/death/death_trigger

tag @s add sacrifice

execute store result score #operand NL_temp run data get storage nl:settings etc.earlydeath 1
execute store result storage nl:settings etc.earlydeath int 1 run scoreboard players remove #operand NL_temp 1
function nl_system:modules/status_gui/change_icon/sacrifice
execute as @e[type=marker,tag=NL,tag=chest,tag=library,tag=!library_key,limit=2,sort=random] at @s run function nl_system:modules/chest/insert_loot/insert_loot_table {tag:"library_key",path:"keys/library_key"}

return 1