#> nl_system:systems/hit/hit_explorer_adv
# 배회자가 탐험가를 타격 할 시 발동
#@context 배회자
#@handles nl_system:systems/hit/hit_by_rm_adv 


#say 나 배회잔데 때렸덩
#> hit은 타격의 성공유무를 알려주고 attack은 대미지가 들어갈 지 판단하는 태그
tag @s[team=roamer] add hit
tag @s[team=roamer] add attack


## 탐험가 피격함수 실행
advancement grant @a[team=explorer] only nl_system:systems/hit/hit_by_rm impossible

## 배회자 타격함수 실행
function nl_system:modules/storage/load_to_buffer/player_info/load_player_info
execute at @s run function nl_system:systems/hit/character_hit_function_call with storage nl:buffer player

## 마무리
execute at @s run function nl_system:systems/status_effects/hit/hit
execute as @a[limit=1,advancements={nl_system:systems/hit/hit_by_rm=true},team=explorer,tag=NL,tag=hit,tag=attacked] at @s run function nl_system:systems/hit/being_damaged
#execute at @s as @a[limit=1,advancements={nl_system:systems/hit/hit_by_rm=true},team=explorer,tag=NL,tag=hit,tag=attacked,sort=nearest] run function nl_system:modules/status_gui/profile_icon/hit
function nl_system:modules/status_gui/profile_icon/case/hit
tag @a[tag=NL] remove hit
tag @a[tag=NL] remove attack
tag @a[tag=NL] remove attacked

advancement revoke @a only nl_system:systems/hit/hit_by_rm
advancement revoke @s only nl_system:systems/hit/hit_explorer_buffer