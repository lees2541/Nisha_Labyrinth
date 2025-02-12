#> nl_system:systems/item/update/common/damage_regeneration
# 핫바에 있는 입력된 아이템의 내구도를 회복
#@context player {item:(item_predicate 형식에 맞게)}
#@input score
#    @s NL_damage_speed

$execute if items entity @s hotbar.1 $(item) run item modify entity @s hotbar.1 nl_system:systems/item/update/common/damage_speed
$execute if items entity @s hotbar.2 $(item) run item modify entity @s hotbar.2 nl_system:systems/item/update/common/damage_speed
$execute if items entity @s hotbar.3 $(item) run item modify entity @s hotbar.3 nl_system:systems/item/update/common/damage_speed
$execute if items entity @s hotbar.4 $(item) run item modify entity @s hotbar.4 nl_system:systems/item/update/common/damage_speed
$execute if items entity @s hotbar.5 $(item) run item modify entity @s hotbar.5 nl_system:systems/item/update/common/damage_speed
$execute if items entity @s hotbar.6 $(item) run item modify entity @s hotbar.6 nl_system:systems/item/update/common/damage_speed