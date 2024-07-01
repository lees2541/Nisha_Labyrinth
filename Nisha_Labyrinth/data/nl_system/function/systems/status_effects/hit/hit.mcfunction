#> nl_system:systems/status_effects/hit/hit
#
#@context 이미지를 바꿀 플레이어
#@within
#   nl_system:systems/hit/being_damaged
#   nl_system:systems/hit/hit_explorer_adv

function nl_system:modules/status_gui/profile_icon/case/hit

tag @s add hitstun
## 탐험가
scoreboard players set @s[team=explorer] NL_attack_cool 30


## 배회자
execute as @s[team=roamer] run function nl_system:systems/status_effects/stun/stun {time:80}
scoreboard players set @s[team=roamer] NL_attack_cool 80

