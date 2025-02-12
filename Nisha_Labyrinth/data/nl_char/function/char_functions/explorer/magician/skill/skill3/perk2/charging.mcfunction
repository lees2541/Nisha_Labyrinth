say 짜징중

execute if entity @s[predicate=nl_char:explorer/magician/perk2_skill_detect_roamer] run function nl_char:char_functions/explorer/magician/skill/skill3/perk2/lock_on
execute if entity @s[scores={NL_charging_mode=0}] run scoreboard players set @s NL_charging_mode 1

#item modify entity @s weapon.mainhand nl_system:systems/item/update/common/damage_speed
#execute if items entity @s weapon.mainhand *[damage=1] run item modify entity @s weapon.mainhand nl_system:systems/item/update/common/delete_consumable