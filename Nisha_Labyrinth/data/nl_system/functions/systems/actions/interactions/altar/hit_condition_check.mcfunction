
execute if data storage nl:in_game status.altar{mode:3} run return run title @s actionbar {"text":"현재 제단은 봉인된 상태입니다!"}
execute unless score @s NL_redstone_count matches 1.. run return run title @s actionbar {"text":"주술의 흔적이 부족합니다!"}

$execute as @e[type=interaction,nbt={attack:{player:$(UUID)}},tag=NL,tag=altar,limit=1,sort=nearest] at @s if block ~ ~1 ~ redstone_wire run return fail



$execute as @e[type=interaction,nbt={attack:{player:$(UUID)}},tag=NL,tag=altar,limit=1,sort=nearest] at @s run return run function nl_system:systems/altar/structure/set_on_altar
