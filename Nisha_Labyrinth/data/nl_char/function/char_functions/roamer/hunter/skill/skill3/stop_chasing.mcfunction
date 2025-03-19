execute as @e[type=wolf,tag=wolf,tag=pet] run data modify entity @s Sitting set value 1b
attribute @n[type=wolf,tag=pet] follow_range base set 0


summon armor_stand ~ ~ ~ {Tags:["test"]}
data modify entity @n[type=wolf,tag=pet] AngryAt set from entity @n[type=armor_stand,tag=test] UUID
kill @n[type=armor_stand,tag=test]
attribute @n[type=wolf,tag=pet] follow_range base set 30
data modify entity @n[type=wolf,tag=pet] AngerTime set value 1