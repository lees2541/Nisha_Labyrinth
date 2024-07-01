#> nl_system:systems/prison/escape/jail_break_adv
# 탈옥할때 뜨는 알림
#@context 모든 플레이어

execute if entity @s[team=!prisoner] run return 1

tag @s remove prisoner
tag @s remove sacrifice
team join explorer @s
effect clear @s hunger
effect clear @s glowing
effect give @s minecraft:saturation 2 3
effect give @s night_vision 10
effect give @s resistance 10 4 true