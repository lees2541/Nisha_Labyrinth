execute unless entity @s[advancements={nl_system:systems/actions/interactions/altar/hit=true}] run return fail
scoreboard players add @s NL_magician_altar 1
give @s paper[item_model="explorer/magician/totem_piece",custom_data={NL:1b,totem:1b},custom_name={"bold":true,"color":"dark_red","text":"불사의 토템 조각"},lore=["4개가 모이면, 죽음을 한 번 막는 토템을 얻을 수 있다."]] 1
execute if score @s NL_magician_altar matches 4.. run function nl_char:char_functions/explorer/magician/skill/passive/give_totem
say 마법사 제단에 올렸습니다. 현재 횟수: %NL_magician_altar%