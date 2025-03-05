#> nl_system:systems/actions/key_events/f_key/skill2_trigger
# 설명 
# @context 실행하는 엔티티 with nl:buffer player
# @input  
#   storage nl:buffer player.team
#       파라미터
#   storage nl:buffer player.character
#       파라미터


say hopho
$function nl_char:char_functions/$(team)/$(character)/skill/condition_check/skill2