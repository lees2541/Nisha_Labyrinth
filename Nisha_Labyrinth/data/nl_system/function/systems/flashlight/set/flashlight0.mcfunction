<<<<<<< HEAD
execute as @s[team=!roamer] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9921568627450980392156862745098 1 1 0 force @s


## 직선방향으로 밝게, 배회자가 앉았을떄 실행
execute as @s[team=roamer] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9921568627450980392156862745098 0.0078431372549019607843137254902 1 0 force @s
=======
execute as @s[team=!roamer] at @s run particle entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,1.0,1.0]} ~ ~ ~ 0 0 0 1 0 force @s


#execute as @s[team=!roamer] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9921568627450980392156862745098 1 1 0 force @s


## 직선방향으로 밝게, 배회자가 앉았을떄 실행
execute as @s[team=roamer] at @s run particle entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,0.0078431372549019607843137254902,1.0]} ~ ~ ~ 0 0 0 1 0 force @s
#execute as @s[team=roamer] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9921568627450980392156862745098 0.0078431372549019607843137254902 1 0 force @s
>>>>>>> newItemFormatUpdate
