#> nl_system:systems/status_effects/give_effect/give_hit
#
#@context 이미지를 바꿀 플레이어

function nl_system:modules/status_gui/change_icon/hit

execute as @s[team=roamer] run function nl_system:systems/status_effects/give_effect/give_stun {time:80,type:hit}

function nl_system:systems/status_effects/hit/timer
