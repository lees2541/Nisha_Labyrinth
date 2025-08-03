
## 덫 개수, ui 동기화
execute if entity @s[scores={NL_trap_count=0}] unless entity @s[level=0] run return run xp set @s 0 levels
execute if entity @s[scores={NL_trap_count=1}] unless entity @s[level=1] run return run xp set @s 1 levels
execute if entity @s[scores={NL_trap_count=2}] unless entity @s[level=2] run return run xp set @s 2 levels
execute if entity @s[scores={NL_trap_count=3}] unless entity @s[level=3] run return run xp set @s 3 levels
execute if entity @s[scores={NL_trap_count=4}] unless entity @s[level=4] run return run xp set @s 4 levels
execute if entity @s[scores={NL_trap_count=5}] unless entity @s[level=5] run return run xp set @s 5 levels
execute if entity @s[scores={NL_trap_count=6}] unless entity @s[level=6] run return run xp set @s 6 levels
execute if entity @s[scores={NL_trap_count=7}] unless entity @s[level=7] run return run xp set @s 7 levels
execute if entity @s[scores={NL_trap_count=8}] unless entity @s[level=8] run return run xp set @s 8 levels
execute if entity @s[scores={NL_trap_count=9}] unless entity @s[level=9] run return run xp set @s 9 levels
execute if entity @s[scores={NL_trap_count=10}] unless entity @s[level=10] run return run xp set @s 10 levels
execute if entity @s[scores={NL_trap_count=11}] unless entity @s[level=11] run return run xp set @s 11 levels
execute if entity @s[scores={NL_trap_count=12}] unless entity @s[level=12] run return run xp set @s 12 levels
execute if entity @s[scores={NL_trap_count=13}] unless entity @s[level=13] run return run xp set @s 13 levels
execute if entity @s[scores={NL_trap_count=14}] unless entity @s[level=14] run return run xp set @s 14 levels
execute if entity @s[scores={NL_trap_count=15}] unless entity @s[level=15] run return run xp set @s 15 levels



## 스킬사용가능유무 체크
execute if entity @a[team=explorer,tag=NL,tag=debuff] if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_model_data={strings:["roamer","hunter"],floats:[0,0],flags:[0b]}] run item modify entity @s weapon.mainhand nl_char:items/roamer/hunter/skill_ready
execute unless entity @a[team=explorer,tag=NL,tag=debuff] if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_model_data={strings:["roamer","hunter"],floats:[0,2],flags:[0b]}] run item modify entity @s weapon.mainhand nl_char:items/roamer/hunter/skill_not_ready