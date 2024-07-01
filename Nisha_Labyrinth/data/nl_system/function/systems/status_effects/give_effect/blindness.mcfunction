#> nl_system:systems/status_effects/give_effect/blindness
# 대상에게 실명을 준다
#@context 대상 {time:(int)}

$scoreboard players set #temp NL_blindness_time $(time)
scoreboard players operation @s NL_blindness_time > #temp NL_blindness_time
effect give @s blindness infinite
