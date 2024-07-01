
$execute as @e[type=marker,tag=NL,tag=area,tag=!prison,limit=$(area),sort=random] run function nl_lobby:modules/redstone_generator/macro/choose_roll_type with entity @s data

data modify storage nl:settings redstone.rolls.area set value 0