#> nl_char:char_functions/roamer/hunter/skill/condition_check/interact_swamp
# 상호작용된 발판 에서 발동
# @context 해당 발판의 interaction 엔티티
#say 낙서놀이당

execute if entity @s[tag=!occupied] if score @p[team=roamer,tag=hunter] NL_trap_count matches 1.. run function nl_char:char_functions/roamer/hunter/skill/skill1/set_trap

#execute if entity @s[tag=!occupied] if function nl_char:char_functions/explorer/magician/skill/skill3/perk1/set_in_portal run return 1
#execute if entity @s[tag=!occupied] if function nl_char:char_functions/explorer/magician/skill/skill3/perk1/set_out_portal run return 1