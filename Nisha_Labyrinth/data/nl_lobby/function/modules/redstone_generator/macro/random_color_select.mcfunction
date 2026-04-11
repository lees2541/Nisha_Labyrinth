
execute unless data storage nl:settings redstone.rolls{red:0} run function nl_lobby:modules/redstone_generator/macro/choose_roll_type {"tag":"red"}

kill @e[tag= redstone_gen , tag=marker,tag=remove ,tag=origin]
execute unless data storage nl:settings redstone.rolls{green:0} run function nl_lobby:modules/redstone_generator/macro/choose_roll_type {"tag":"green"}

kill @e[tag= redstone_gen , tag=marker,tag=remove ,tag=origin]
execute unless data storage nl:settings redstone.rolls{yellow:0} run function nl_lobby:modules/redstone_generator/macro/choose_roll_type {"tag":"yellow"}


