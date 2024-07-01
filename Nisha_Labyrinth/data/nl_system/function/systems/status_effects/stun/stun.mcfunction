#> nl_system:systems/status_effects/stun/stun
#
#@context 대상 {time:(int)}

#$scoreboard players add @s NL_stun_time $(time)
tag @s add stun



effect give @s slowness infinite 50
effect give @s blindness infinite 1
#$function nl_system:systems/status_effects/give_effect/blindness {time:$(time)}

$function nl_system:modules/status_effect/base/change_status {time:$(time),type:"stun",sort:"prepend",tag:"stun"}