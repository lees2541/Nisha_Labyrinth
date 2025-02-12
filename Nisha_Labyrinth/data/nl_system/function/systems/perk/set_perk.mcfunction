#>nl_system:systems/perk/set_perk
# 플레이어가 산 퍽에 따라 세팅합니다.
# @context 실행하는 엔티티 with nl:buffer player


$execute if score @s NL_perk matches 1 run return run function nl_char:char_functions/$(team)/$(character)/perk/perk1/set_perk1
$execute if score @s NL_perk matches 2 run return run function nl_char:char_functions/$(team)/$(character)/perk/perk2/set_perk2