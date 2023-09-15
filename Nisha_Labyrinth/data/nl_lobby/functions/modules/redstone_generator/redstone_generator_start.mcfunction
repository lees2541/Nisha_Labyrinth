execute if data storage nl:settings redstone.rolls.red run function nl_lobby:modules/redstone_generator/macro/choose_roll_type {"tag":"red"}
execute if data storage nl:settings redstone.rolls.green run function nl_lobby:modules/redstone_generator/macro/choose_roll_type {"tag":"green"}
execute if data storage nl:settings redstone.rolls.yellow run function nl_lobby:modules/redstone_generator/macro/choose_roll_type {"tag":"yellow"}


#execute as @e[type=marker,tag=spread] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Small:1b,NoBasePlate:1b,Tags:["spread"],CustomName:'{"text":"spread"}'}