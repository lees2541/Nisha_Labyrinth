execute if entity @s[tag=chopper,tag=unstoppable] run function nl_char:char_functions/roamer/chopper/skill/skill2/while_dash
execute if score @s NL_food matches 1.. run effect give @s speed 5 0
execute if score @s NL_food2 matches 1.. run effect give @s regeneration 5 1