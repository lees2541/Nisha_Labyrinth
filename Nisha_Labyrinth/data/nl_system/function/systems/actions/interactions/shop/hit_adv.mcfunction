#> nl_system:systems/actions/interactions/shop/hit_adv
# 상점 상호작용 엔티티를 때렸을 때 호출


#> 뽑기코인을 들고 때렸을때(뽑기상점)
execute unless score @e[type=interaction,tag=shop,limit=1,tag=NL] NL_mode matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:emerald",components:{"minecraft:custom_data":{shop_coin:1b}}}}] run function nl_system:systems/shop/used_coin

