#> nl_system:systems/actions/interactions/shop/hit_adv
# 상점 상호작용 엔티티를 때렸을 때 호출


execute if entity @s[nbt={SelectedItem:{id:"minecraft:emerald",tag:{shop_coin:1b}}}] at @e[type=marker,tag=marker,tag=shop,tag=NL] run setblock ~ ~-1 ~ redstone_torch[lit=false] replace
execute if entity @s[nbt={SelectedItem:{id:"minecraft:emerald",tag:{shop_coin:1b}}}] run loot give @s loot nl_system:items/shop/cooked_beef
execute if entity @s[nbt={SelectedItem:{id:"minecraft:emerald",tag:{shop_coin:1b}}}] run clear @s emerald{NL:1b,shop_coin:1b} 1