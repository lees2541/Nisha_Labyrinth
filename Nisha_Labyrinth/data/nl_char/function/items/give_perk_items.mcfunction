#> nl_char:items/give_perk_items
#
#@context 실행하는 사람 with storage nl:buffer player
clear @s iron_nugget
clear @s gold_nugget
$item replace entity @s inventory.0 with iron_nugget[item_name={"bold":true,"color":"blue","text":"신념"},item_model="common/perk/$(character)",custom_data={NL:1b, perk:1b, perk1:1b}] 1

$item replace entity @s inventory.1 with gold_nugget[item_name={"bold":true,"color":"dark_red","text":"본성"},item_model="common/perk/$(character)",custom_data={NL:1b,perk:1b,perk2:1b}] 1

$execute unless score @s NL_perk matches 2 run item modify entity @s inventory.0 nl_char:items/explorer/$(character)/perk_1
$execute unless score @s NL_perk matches 1 run item modify entity @s inventory.1 nl_char:items/explorer/$(character)/perk_2
