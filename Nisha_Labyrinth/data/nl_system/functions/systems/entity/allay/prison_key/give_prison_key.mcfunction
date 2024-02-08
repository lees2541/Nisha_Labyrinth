#> nl_system:systems/entity/allay/prison_key/give_prison_key
# 알레이가 감옥 열쇠를 받을떄 발동
say 무야호
$execute at @s as @e[type=interaction,tag=allay,nbt={interaction:{player:$(UUID)}},limit=1,sort=nearest] on vehicle if score @s NL_mode matches 4.. run return 1
say 야호
clear @s paper{NL:1b,lib:1b,prison_key:1b} 1

$execute at @s as @e[type=interaction,tag=allay,nbt={interaction:{player:$(UUID)}},limit=1,sort=nearest] on vehicle run scoreboard players set @s NL_mode 4
execute as @e[type=allay,tag=NL,tag=allay,scores={NL_mode=4..5}] run team leave @s
execute as @e[type=allay,tag=NL,tag=allay,scores={NL_mode=4..5}] run effect give @s glowing infinite