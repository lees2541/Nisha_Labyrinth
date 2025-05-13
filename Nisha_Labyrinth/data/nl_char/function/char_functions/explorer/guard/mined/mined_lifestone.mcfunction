#> nl_char:char_functions/explorer/guard/mined/mined_lifestone
# 탐험가가 생명석을 캤을 때 모든 탐험가가 발동
#   @s[scores={NL_mined_red=1..}] 으로 직접 캤을때의 조건도 붙일 수 있다.
#@private
#@within 
#
#execute unless entity @e[type=interaction,tag=occupied,tag=campfire,tag=NL,] unless items entity @s hotbar.* yellow_dye[custom_data~{NL:1b,campfire:1b}] unless items entity @s inventory.* yellow_dye[custom_data~{NL:1b, campfire:1b}] run give @s yellow_dye[max_stack_size=1,custom_name='"장작과 불쏘시개"',lore=['"늪에 모닥불을 설치한다(우클릭)"'],custom_model_data=12314,custom_data={NL:1b,campfire:1b}] 1

say 생존가 생명석캤덩