#> nl_system:systems/actions/sneaking/sneaking_characters
# 캐릭별 앉을때 발생하는 이벤트(존재할 시)
# @context 앉은 플레이어
# @within nl_system:systems/actions/sneaking/sneaking_adv

$execute unless function nl_char:char_functions/$(team)/$(character)/actions/sneaking/start_sneaking run return fail