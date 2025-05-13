#> nl_lobby:maps/cave/entities/merchant/put_perk_items
#> 상인에게 아이템을 넣는다
#@context 서버 with nl:lobby settings.player[(int)] 
#@within
#   nl_lobby:maps/cave/entities/merchant/set_merchant
## 죽은 코드

$execute if score #temp NL_count matches 1 run data modify entity @n[type=minecraft:villager,tag=merchant,tag=NL] Offers.Recipes[0].sell.components.minecraft:item_model set value "common/perk/$(character)"
execute if score #temp NL_count matches 1 run data modify entity @n[type=minecraft:villager,tag=merchant,tag=NL] Offers.Recipes[0].sell.components.minecraft:custom_model_data.floats set value [1]
$execute if score #temp NL_count matches 1 run data modify entity @n[type=minecraft:villager,tag=merchant,tag=NL] Offers.Recipes[1].sell.components.minecraft:item_model set value "common/perk/$(character)"
execute if score #temp NL_count matches 1 run data modify entity @n[type=minecraft:villager,tag=merchant,tag=NL] Offers.Recipes[1].sell.components.minecraft:custom_model_data.floats set value [2]

$execute if score #temp NL_count matches 2 run data modify entity @n[type=minecraft:villager,tag=merchant,tag=NL] Offers.Recipes[2].sell.components.minecraft:item_model set value "common/perk/$(character)"
execute if score #temp NL_count matches 2 run data modify entity @n[type=minecraft:villager,tag=merchant,tag=NL] Offers.Recipes[2].sell.components.minecraft:custom_model_data.floats set value [1]
$execute if score #temp NL_count matches 2 run data modify entity @n[type=minecraft:villager,tag=merchant,tag=NL] Offers.Recipes[3].sell.components.minecraft:item_model set value "common/perk/$(character)"
execute if score #temp NL_count matches 2 run data modify entity @n[type=minecraft:villager,tag=merchant,tag=NL] Offers.Recipes[3].sell.components.minecraft:custom_model_data.floats set value [2]