execute if score @s[tag=!hungry] NL_food_level matches ..10 run effect give @s regeneration infinite 0
execute if score @s[tag=!hungry] NL_food_level matches ..10 run tag @s add hungry

execute if score @s[tag=hungry] NL_food_level matches 11.. run effect clear @s regeneration
execute if score @s[tag=hungry] NL_food_level matches 11.. run tag @s remove hungry