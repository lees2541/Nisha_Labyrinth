#> nl_system:systems/hit/character_hit_function_call
# 캐릭터별 때리거나 맞았을때의 함수 호출
#@private
#@within nl_system:systems/hit/hit_by_rm_adv
$execute if entity @s[team=explorer] run function nl_char:char_functions/$(team)/$(character)/hit/hit_by_rm
$execute if entity @s[team=roamer] run function nl_char:char_functions/$(team)/$(character)/hit/hit_ex