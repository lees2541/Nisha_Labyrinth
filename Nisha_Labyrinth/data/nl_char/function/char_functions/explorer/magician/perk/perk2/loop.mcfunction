execute if entity @s[advancements={nl_system:systems/actions/key_events/charging/consumable/charging=true}] run say 차징임임


execute if entity @s[scores={NL_charging_mode=0,NL_charging_gauge=..999}] store result bossbar test:nl_charging_gauge value run scoreboard players add @s NL_charging_gauge 5
execute if entity @s[scores={NL_charging_mode=1,NL_charging_gauge=0..}] store result bossbar test:nl_charging_gauge value run scoreboard players remove @s NL_charging_gauge 10

#차징을 시작하면 차징모드를 1로 변경
#execute if entity @s[advancements={nl_system:systems/actions/key_events/charging/consumable/charging=true},scores={NL_charging_mode=0}] run scoreboard players set @s NL_damage_speed -10

#execute if entity @s[advancements={nl_system:systems/actions/key_events/charging/consumable/charging=true},scores={NL_charging_mode=0}] run function nl_char:char_functions/explorer/magician/perk/perk2/custom/disable_charging
#execute if entity @s[advancements={nl_system:systems/actions/key_events/charging/consumable/charging=true},scores={NL_charging_mode=0}] run scoreboard players set @s NL_charging_mode 1

#차징을 멈추면 차징모드를 0으로 변경
#execute if entity @s[advancements={nl_system:systems/actions/key_events/charging/consumable/charging=false},scores={NL_charging_mode=1}] run scoreboard players set @s NL_damage_speed 5

#execute if items entity @s weapon.mainhand emerald[custom_data~{perk2:1b,charging:1b},consumable] 
#execute if entity @s[advancements={nl_system:systems/actions/key_events/charging/consumable/charging=false},scores={NL_charging_mode=1}] run function


execute if entity @s[advancements={nl_system:systems/actions/key_events/charging/consumable/charging=false},scores={NL_charging_mode=1}] run function nl_char:char_functions/explorer/magician/perk/perk2/custom/disable_charging
execute if entity @s[advancements={nl_system:systems/actions/key_events/charging/consumable/charging=false},scores={NL_charging_mode=1},tag=lock_on] run function nl_char:char_functions/explorer/magician/skill/skill3/perk2/cancel_spell

execute if entity @s[advancements={nl_system:systems/actions/key_events/charging/consumable/charging=false},scores={NL_charging_mode=1}] run scoreboard players set @s NL_mode 0
execute if entity @s[advancements={nl_system:systems/actions/key_events/charging/consumable/charging=false},scores={NL_charging_mode=1}] run scoreboard players set @s NL_charging_mode 0



# 내구도가 다 회복되면 다시 쓸 수 있게 변경
execute if items entity @s weapon.mainhand emerald[custom_data~{perk2:1b,charging:1b},!consumable] if score @s NL_charging_gauge matches 1000.. run item modify entity @s weapon.mainhand nl_char:items/explorer/magician/blood



# 차징중이 아닐때 내구도 회복
#execute if items entity @s hotbar.* emerald[custom_data~{perk2:1b,charging:1b,magician:1b},!consumable] run function nl_system:systems/item/update/common/damage_regeneration {item:"emerald[custom_data~{perk2:1b,charging:1b,magician:1b},!consumable]"}


# 차징중일때 배회자에 시선둠
#execute if entity @s[predicate=nl_char:explorer/magician/perk2_skill_detect_roamer] run function nl_char:char_functions/explorer/magician/skill/skill3/perk2/lock_on

execute if entity @s[tag=NL,tag=magician,tag=lock_on] run function nl_char:char_functions/explorer/magician/skill/skill3/perk2/lock_on_charging











#> 여기밑은 charging 내구도 를 어떻게 쓰는지 적혀있는 레거시코드드

#차징을 시작하면 차징모드를 1로 변경
#execute if entity @s[advancements={nl_system:systems/actions/key_events/charging/consumable/charging=true},scores={NL_charging_mode=0}] run scoreboard players set @s NL_damage_speed -10

#execute if entity @s[advancements={nl_system:systems/actions/key_events/charging/consumable/charging=true},scores={NL_charging_mode=0}] run scoreboard players set @s NL_charging_mode 1

#차징을 멈추면 차징모드를 0으로 변경
#execute if entity @s[advancements={nl_system:systems/actions/key_events/charging/consumable/charging=false},scores={NL_charging_mode=1}] run scoreboard players set @s NL_damage_speed 5
#execute if items entity @s hotbar.* emerald[custom_data~{perk2:1b,charging:1b},consumable,!damage = 0 ] run function nl_char:char_functions/explorer/magician/perk/perk2/custom/disable_charging


#execute if entity @s[advancements={nl_system:systems/actions/key_events/charging/consumable/charging=false},scores={NL_charging_mode=1}] run scoreboard players set @s NL_charging_mode 0



# 내구도가 다 회복되면 다시 쓸 수 있게 변경
#execute if items entity @s weapon.mainhand emerald[custom_data~{perk2:1b,charging:1b},!consumable,damage=0] run item modify entity @s weapon.mainhand nl_char:items/explorer/magician/blood



# 차징중이 아닐때 내구도 회복
#execute if items entity @s hotbar.* emerald[custom_data~{perk2:1b,charging:1b,magician:1b},!consumable,!damage=0] run function nl_system:systems/item/update/common/damage_regeneration {item:"emerald[custom_data~{perk2:1b,charging:1b,magician:1b},!consumable]"}


#execute if entity @s[predicate=nl_char:explorer/magician/perk2_skill_detect_roamer] run function nl_char:char_functions/explorer/magician/skill/skill3/perk2/lock_on