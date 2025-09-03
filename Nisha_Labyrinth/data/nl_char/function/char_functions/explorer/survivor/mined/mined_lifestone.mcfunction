#> nl_char:char_functions/explorer/survivor/mined/mined_lifestone
# 탐험가가 생명석을 캤을 때 모든 탐험가가 발동
#   @s[scores={NL_mined_red=1..}] 으로 직접 캤을때의 조건도 붙일 수 있다.
#@private
#@within 
#
say 캔 건 나 생존가다!
execute unless entity @e[type=interaction,tag=occupied,tag=campfire,tag=NL] unless items entity @s hotbar.* yellow_dye[custom_data~{NL:1b,campfire:1b}] unless items entity @s inventory.* yellow_dye[custom_data~{NL:1b, campfire:1b}] run give @s[tag=survivor] yellow_dye[max_stack_size=1,custom_name='"장작과 불쏘시개"',lore=['"모닥불을 피울 때 필요한 장작 더미."'],custom_data={NL:1b, campfire:1b},item_model="explorer/survivor/survivor_wood"]

say 생존가 생명석캤덩