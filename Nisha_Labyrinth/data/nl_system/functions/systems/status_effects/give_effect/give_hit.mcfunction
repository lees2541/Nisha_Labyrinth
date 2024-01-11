#> nl_system:systems/status_effects/give_effect/give_hit
#
#@context 이미지를 바꿀 플레이어

function nl_system:modules/status_gui/change_icon/hit

tag @s add hitstun
## 탐험가
scoreboard players set @s[team=explorer] NL_attack_cool 30


## 배회자
execute as @s[team=roamer] run function nl_system:systems/status_effects/give_effect/give_stun {time:80}
scoreboard players set @s[team=roamer] NL_attack_cool 80

