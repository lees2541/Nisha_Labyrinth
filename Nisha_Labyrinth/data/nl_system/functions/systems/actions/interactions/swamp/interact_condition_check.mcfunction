$execute as @e[type=interaction,limit=1,sort=nearest,nbt={interaction:{player:$(UUID)}},tag=NL,tag=swamp] at @s run return run function nl_char:char_functions/$(team)/$(character)/skill/swamp/interact