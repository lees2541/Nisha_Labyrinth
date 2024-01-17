loot give @s[team=explorer] loot nishalabyrinth:items/lifestone
#give @s[team=explorer] lapis_lazuli{display:{Name:'{"text":"생명석","color":"dark_blue","bold":true}',Lore:['{"text":"알 수 없는 힘이 담긴 돌이다","color":"blue","italic":true}']},NL:1b,Drop:1b} 1
tag @e[type=marker,tag=lifestone,limit=1,sort=nearest,tag=chests,tag=library] remove lifestone
kill @e[type=area_effect_cloud,tag=lifestone,tag=aura,limit=1,distance=..1.5]
#say gotit