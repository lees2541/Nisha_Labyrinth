


execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:bone_meal"}},sort=nearest,limit=1]
loot give @s loot nl_system:items/prison/bone_meal

advancement revoke @s only nl_system:systems/prison/activity/get_bone_meal_buffer