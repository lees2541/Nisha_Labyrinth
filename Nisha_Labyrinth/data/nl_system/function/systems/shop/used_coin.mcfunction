#> nl_system:systems/shop/used_coin
# 상점에 코인을 쓸 때
#@within nl_system:systems/actions/interactions/shop/hit_adv

execute at @e[type=marker,tag=marker,tag=shop,tag=NL] run setblock ~ ~-1 ~ redstone_torch[lit=false] replace
execute as @e[type=item_display,tag=statue,limit=1,tag=shop] at @s positioned ~ ~-1 ~ run particle minecraft:crimson_spore ~ ~1 ~ 0 0 0 1 40
loot give @s loot nl_system:items/shop/cooked_beef
clear @s emerald[minecraft:custom_data={NL:1b,shop_coin:1b}] 1
scoreboard players set @e[type=interaction,tag=shop,tag=NL,limit=1] NL_mode 1


schedule function nl_system:systems/shop/make_active 40t replace