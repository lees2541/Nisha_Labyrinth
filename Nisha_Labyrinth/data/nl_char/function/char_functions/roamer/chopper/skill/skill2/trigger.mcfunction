# say 스킬 2!!!

execute if entity @s run effect give @a glowing 3 0
execute if entity @s run effect give @a[team=roamer,tag=chopper] slowness 3 50
execute if entity @s at @a run playsound minecraft:entity.hoglin.converted_to_zombified player @a
execute if entity @s run effect give @a[team=explorer] slowness 2 5
execute if entity @s run effect give @a[team=explorer] minecraft:nausea 7 5
execute if entity @s run schedule function nl_char:char_functions/roamer/chopper/skill/skill2/dash_start 3s



