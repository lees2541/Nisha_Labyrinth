#> nl_system:systems/altar/structure/set_on_altar
# 레드스톤 와이어 배치
# @context 제단 interaction 엔티티
#@within nl_system:systems/actions/interactions/altar/hit_condition_check

execute positioned as @s align xyz run setblock ~ ~1 ~ minecraft:redstone_wire keep

execute on attacker if entity @s[nbt={Inventory:[{id:"minecraft:redstone",tag:{NL:1b,redstone:1b}}]}] run return run clear @s redstone{NL:1b,redstone:1b} 1

execute on attacker run function nl_system:modules/storage/scoreboard/operation/resource_count/calc_resource {resource:"redstone",operator:"remove",operand:1}


