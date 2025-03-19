#> nl_system:systems/swamp/default/set_default
# 늪을 기본으로 바꾼다
#@context 늪 인터랙션 엔티티

execute at @s run setblock ~ ~0.5 ~ air replace
execute on passengers if entity @s[type=item_display,tag=swamp] run function nl_system:systems/swamp/default/set_item_display_default
execute on passengers if entity @s[type=block_display,tag=swamp] run function nl_system:systems/swamp/default/set_block_display_default
execute on passengers if entity @s[type=text_display,tag=swamp] run function nl_system:systems/swamp/default/set_text_display_default


data merge entity @s {Tags:["NL","swamp"]}