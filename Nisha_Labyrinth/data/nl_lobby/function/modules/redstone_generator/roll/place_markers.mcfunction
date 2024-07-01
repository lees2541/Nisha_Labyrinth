$execute as @e[type=marker,tag=origin,limit=$(rolls),sort=random,tag=$(tag),tag=redstone_gen] at @s run function nl_lobby:modules/redstone_generator/macro/spread_action {tag:$(tag)}
