#> nl_system:modules/star_catch/condition_check/condition_check
# 
#@input storage nl:buffer player
#@within nl_system:modules/star_catch/interact/star_catch


say 컨디션 체크
$execute as @e[type=interaction,tag=star_catch,nbt={interaction:{player:$(UUID)}},limit=1,sort=nearest] on vehicle on passengers if entity @s[type=text_display,tag=gauge_bar,tag=point] run say 너가나때렸지
$execute as @e[type=interaction,tag=star_catch,nbt={interaction:{player:$(UUID)}},limit=1,sort=nearest] on vehicle on passengers on passengers on passengers on passengers if entity @s[type=text_display,tag=gauge_bar,tag=point,scores={NL_timer=11..12}] run return run function nl_system:modules/star_catch/result/pick_pocket/success1
$execute as @e[type=interaction,tag=star_catch,nbt={interaction:{player:$(UUID)}},limit=1,sort=nearest] on vehicle on passengers on passengers on passengers on passengers if entity @s[type=text_display,tag=gauge_bar,tag=point,scores={NL_timer=7..16}] run return run function nl_system:modules/star_catch/result/pick_pocket/success2
$execute as @e[type=interaction,tag=star_catch,nbt={interaction:{player:$(UUID)}},limit=1,sort=nearest] on vehicle on passengers on passengers on passengers on passengers if entity @s[type=text_display,tag=gauge_bar,tag=point,scores={NL_timer=0..20}] run return run function nl_system:modules/star_catch/result/pick_pocket/fail
return 0