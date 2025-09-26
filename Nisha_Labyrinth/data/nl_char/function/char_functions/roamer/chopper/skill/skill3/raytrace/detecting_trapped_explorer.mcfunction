#execute positioned ^ ^ ^0.1 unless entity @a[team=explorer,tag=debuff,distance=..0.3] run return run function nl_char:char_functions/roamer/hunter/skill/skill3/raytrace/detecting_trapped_explorer
#particle bubble ~ ~ ~ 0.1 0.1 0.1 0.1 10 force
#tp @s ~ ~ ~
#say 부뒐
execute positioned ~ ~ ~ run data modify entity @n[type=wolf,tag=hunter,tag=pet,tag=NL] AngryAt set from entity @a[distance=..2,tag=debuff,team=explorer,limit=1,sort=nearest] UUID
execute positioned ~ ~ ~ run data modify entity @n[type=wolf,tag=hunter,tag=pet,tag=Nl] AngerTime set value 120
execute positioned ~ ~ ~ if entity @p[distance=..2,tag=debuff,team=explorer] run effect give @n[type=wolf,tag=hunter,tag=pet,tag=NL] speed 10 0
execute positioned ~ ~ ~ if entity @p[distance=..2,tag=debuff,team=explorer] run effect give @n[type=wolf,tag=hunter,tag=pet,tag=NL] glowing 10

execute positioned ~ ~ ~ if entity @a[distance=..2,tag=debuff,team=explorer] run return run say 물어!
execute positioned ^ ^ ^0.3 run function nl_char:char_functions/roamer/hunter/skill/skill3/raytrace/detecting_trapped_explorer
